import re
from collections import defaultdict

CATEGORY_ORDER = [
    "CORE / GAME / PERFORMANCE",
    "COUNTRY / POLITICS",
    "DIPLOMACY",
    "TRADE",
    "PRODUCTION",
    "TECHNOLOGY",
    "BUILDINGS",
    "MILITARY",
    "AIR",
    "NAVY",
    "SUPPLY",
    "RAILWAY_GUN",
    "DOCTRINES",
    "CHARACTER",
    "OPERATIVES",
    "INTEL",
    "AI",
    "AI_THEATRE",
    "GRAPHICS",
    "MAP_MODE",
    "UNSORTED",
]

def classify(line: str) -> str:
    if "NDefines_Graphics" in line:
        if ".NMapMode." in line: return "MAP_MODE"
        return "GRAPHICS"
    if "NDefines." not in line:
        return "UNSORTED"

    if ".NGame." in line or ".NDeployment." in line: return "CORE / GAME / PERFORMANCE"
    if ".NCountry." in line or ".NPolitics." in line or ".NFocus." in line: return "COUNTRY / POLITICS"
    if ".NDiplomacy." in line: return "DIPLOMACY"
    if ".NTrade." in line: return "TRADE"
    if ".NProduction." in line: return "PRODUCTION"
    if ".NTechnology." in line: return "TECHNOLOGY"
    if ".NBuildings." in line: return "BUILDINGS"
    if ".NMilitary." in line: return "MILITARY"
    if ".NAir." in line: return "AIR"
    if ".NNavy." in line: return "NAVY"
    if ".NSupply." in line: return "SUPPLY"
    if ".NRailwayGun." in line: return "RAILWAY_GUN"
    if ".NDoctrines." in line: return "DOCTRINES"
    if ".NCharacter." in line: return "CHARACTER"
    if ".NOperatives." in line: return "OPERATIVES"
    if ".NIntel." in line: return "INTEL"
    if ".NAITheatre." in line: return "AI_THEATRE"
    if ".NAI." in line: return "AI"
    return "UNSORTED"

def extract_keys(text: str):
    # capture NDefines.xxx.yyy = ...
    return set(re.findall(r"(NDefines(?:_Graphics)?\.[A-Za-z0-9_]+\.[A-Za-z0-9_]+)", text))

def sort_defines(input_path: str, output_path: str):
    with open(input_path, "r", encoding="utf-8") as f:
        lines = f.readlines()

    buckets = defaultdict(list)
    for line in lines:
        buckets[classify(line)].append(line)

    with open(output_path, "w", encoding="utf-8") as out:
        for cat in CATEGORY_ORDER:
            if cat not in buckets: 
                continue
            out.write(f"\n-- =========================================================\n")
            out.write(f"-- {cat}\n")
            out.write(f"-- =========================================================\n")
            out.writelines(buckets[cat])

    # integrity checks
    original_text = "".join(lines)
    new_text = open(output_path, "r", encoding="utf-8").read()

    orig_keys = extract_keys(original_text)
    new_keys = extract_keys(new_text)

    missing = sorted(orig_keys - new_keys)
    extra = sorted(new_keys - orig_keys)

    print("Original lines:", len(lines))
    print("New lines     :", len(new_text.splitlines()))
    print("Original keys :", len(orig_keys))
    print("New keys      :", len(new_keys))
    print("Missing keys  :", len(missing))
    print("Extra keys    :", len(extra))

    if missing:
        print("\nMISSING (should be 0):")
        for k in missing[:200]:
            print(" ", k)

    if extra:
        print("\nEXTRA (ok if intentional):")
        for k in extra[:200]:
            print(" ", k)

if __name__ == "__main__":
    sort_defines("hfu_defines.lua", "hfu_defines_sorted.lua")

