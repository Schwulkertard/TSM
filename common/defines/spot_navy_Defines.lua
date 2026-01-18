NDefines.NProduction.DEFAULT_MAX_NAV_FACTORIES_PER_LINE = 50
NDefines.NProduction.CONVOY_MAX_NAV_FACTORIES_PER_LINE = 150
NDefines.NProduction.CAPITAL_SHIP_MAX_NAV_FACTORIES_PER_LINE = 50

NDefines.NProduction.FLOATING_HARBOR_MAX_NAV_FACTORIES_PER_LINE = 10
NDefines.NProduction.MIN_NAVAL_EQUIPMENT_CONVERSION_IC_COST_FACTOR = 0.05		-- Minimum fraction of an equipment type's base industry capacity cost to use when converting a naval equipment, such as through ship refitting.
NDefines.NProduction.MIN_NAVAL_EQUIPMENT_CONVERSION_RESOURCE_COST_FACTOR = 0.2	-- Minimum fraction of an equipment type's base strategic resource cost to use when converting a naval equipment, such as through ship refitting.
NDefines.NProduction.EQUIPMENT_MODULE_ADD_XP_COST = 0.0			-- XP cost for adding a new equipment module in an empty slot when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_REPLACE_XP_COST = 0.0		-- XP cost for replacing one equipment module with an unrelated module when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_CONVERT_XP_COST = 0.0		-- XP cost for converting one equipment module to a related module when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_REMOVE_XP_COST = 0.0		-- XP cost for removing an equipment module and leaving the slot empty when creating an equipment variant.
--NDefines.NNavy.NAVAL_TRANSFER_BASE_SPEED = 6
--NDefines.NMilitary.AMPHIBIOUS_INVADE_MOVEMENT_COST = 25
--- Navy
NDefines.NNavy.LEADER_EXPERIENCE_SCALE = 0.0
NDefines.NNavy.SCREEN_RATIO_FOR_FULL_SCREENING_FOR_CAPITALS = 2
NDefines.NNavy.COMBAT_INITIAL_DURATION = 12	
NDefines.NNavy.ANTI_AIR_POW_ON_INCOMING_AIR_DAMAGE = 0.8 --- (0.2 -> 0.8)
NDefines.NNavy.SHIP_TO_FLEET_ANTI_AIR_RATIO = 0.05 --- (0.2 -> 0.05)
NDefines.NNavy.ANTI_AIR_MULT_ON_INCOMING_AIR_DAMAGE = 0.05 --- (0.15 -> 0.05)
NDefines.NNavy.MAX_ANTI_AIR_REDUCTION_EFFECT_ON_INCOMING_AIR_DAMAGE = 0.6 --- (0.5 -> 0.75)
NDefines.NNavy.ANTI_AIR_TARGETTING_TO_CHANCE = 0.08				--Vanilla 0,2
NDefines.NNavy.HIGHER_SHIP_RATIO_POSITIONING_PENALTY_FACTOR	= 0.5 -- if one side has more ships than the other, that side will get this penalty for each +100% ship ratio it has
NDefines.NNavy.MAX_POSITIONING_PENALTY_FROM_HIGHER_SHIP_RATIO = 0.66  -- maximum penalty to get from larger fleets
NDefines.NNavy.MAX_POSITIONING_PENALTY_FOR_NEWLY_JOINED_SHIPS = 0.0  -- the accumulated penalty from new ships will be clamped to this value
NDefines.NNavy.DAMAGE_PENALTY_ON_MINIMUM_POSITIONING = 0.9	-- damage penalty at 0% positioning
NDefines.NNavy.SCREENING_EFFICIENCY_PENALTY_ON_MINIMUM_POSITIONING = 0.0   -- screening efficiency (screen to capital ratio) at 0% positioning
NDefines.NNavy.AA_EFFICIENCY_PENALTY_ON_MINIMUM_POSITIONING	= 0.5  -- AA penalty at 0% positioning

NDefines.NNavy.COMBAT_TORPEDO_CRITICAL_CHANCE = 0.15 -- chance for critical hit from torpedo.
NDefines.NNavy.PRIDE_OF_THE_FLEET_UNASSIGN_COST = 0 -- cost to unassign/replace pride of the fleet
NDefines.NNavy.COMBAT_BASE_CRITICAL_CHANCE = 0.1 -- Base chance for receiving a critical chance. It get's scaled down with ship reliability.
NDefines.NNavy.COMBAT_CRITICAL_DAMAGE_MULT = 5.0 -- Multiplier for the critical damage. Scaled down with the ship reliability.
NDefines.NNavy.COMBAT_ARMOR_PIERCING_CRITICAL_BONUS = 0.0 -- Bonus to critical chance when shooter armor piercing is higher then target armor.

NDefines.NNavy.CARRIER_STACK_PENALTY = 8 -- The most efficient is 4 carriers in combat. 5+ brings the penalty to the amount of wings in battle.
NDefines.NNavy.CARRIER_STACK_PENALTY_EFFECT = 0.20 -- Each carrier above the optimal amount decreases the amount of airplanes being able to takeoff by such %.
NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_TARGET_BASE = 10                             -- base scoring for target picking for planes inside naval combat based on screening efficency, one define per ship typ
NDefines.NNavy.NAVAL_COMBAT_AIR_SCREEN_TARGET_BASE = 5
NDefines.NNavy.NAVAL_COMBAT_AIR_CAPITAL_TARGET_BASE = 50
NDefines.NNavy.NAVAL_COMBAT_AIR_CARRIER_TARGET_BASE = 250
NDefines.NNavy.NAVAL_COMBAT_AIR_CONVOY_TARGET_BASE = 1.0
NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_TARGET_SCALE = 10                             -- scaled scoring for target picking for planes inside naval combat, max value when zero screening efficency, one define per ship typ
NDefines.NNavy.NAVAL_COMBAT_AIR_SCREEN_TARGET_SCALE = 10
NDefines.NNavy.NAVAL_COMBAT_AIR_CAPITAL_TARGET_SCALE = 10
NDefines.NNavy.NAVAL_COMBAT_AIR_CARRIER_TARGET_SCALE = 10
NDefines.NNavy.NAVAL_COMBAT_AIR_CONVOY_TARGET_SCALE = 1.0
NDefines.NNavy.NAVAL_COMBAT_AIR_STRENGTH_TARGET_SCORE = 10                         -- how much score factor from low health (scales between 0->this number)
NDefines.NNavy.NAVAL_COMBAT_AIR_LOW_AA_TARGET_SCORE = 2.5                           -- how much score factor from low AA guns (scales between 0->this number)
NDefines.NNavy.COMBAT_BASE_HIT_CHANCE = 0.1									-- base chance for hit
NDefines.NNavy.COMBAT_MIN_HIT_CHANCE = 0.03									-- never less hit chance then this?
NDefines.NNavy.HIT_PROFILE_SPEED_FACTOR	= 1		-- factors speed value when determining it profile (Vis * HIT_PROFILE_MULT * Ship Hit Profile Mult) prev: vis/speed now: vis/(speed*HIT_PROFILE_SPEED_FACTOR+HIT_PROFILE_SPEED_BASE). wird immer noch gesquared
NDefines.NNavy.GUN_HIT_PROFILES = { -- hit profiles for guns, if target ih profile is lower the gun will have lower accuracy
		80.0,	-- big guns
		140.0,	-- torpedos
		40.0,	-- small guns
	}
NDefines.NNavy.CONVOY_HIT_PROFILE = 207 -- vanilla 120
NDefines.NNavy.BASE_GUN_COOLDOWNS = { -- number of hours for a gun to be ready after shooting
		1.0,	-- big guns
		3.0,	-- torpedos
		1.0,	-- small guns
	}
NDefines.NNavy.CARRIER_ONLY_COMBAT_ACTIVATE_TIME = 0
NDefines.NNavy.CAPITAL_ONLY_COMBAT_ACTIVATE_TIME = 12
NDefines.NNavy.ALL_SHIPS_ACTIVATE_TIME = 24
NDefines.NNavy.COMBAT_ARMOR_PIERCING_DAMAGE_REDUCTION = 0.0 --vanilla -0.9

NDefines.NNavy.COMBAT_MIN_DURATION = 12

NDefines.NNavy.INITIAL_ALLOWED_DOCKYARD_RATIO_FOR_REPAIRS = 1
NDefines.NNavy.NAVY_VISIBILITY_BONUS_ON_RETURN_FOR_REPAIR = 0.2
NDefines.NNavy.SUBMARINE_ESCAPE_RATIOS = { -- subs will escape battle in convoy raid if there are enemies that can attack
		1000,     -- do not engage
		15,   -- low
		3.0,   -- medium
		3.0,   -- high
		3.0,   -- I am death incarnate!
	}

NDefines.NNavy.ANTI_AIR_ATTACK_TO_AMOUNT = 0.005	-- Balancing value to convert equipment stat anti_air_attack to the random % value of airplanes being hit.
NDefines.NNavy.DEPTH_CHARGES_HIT_PROFILE = 70.0
NDefines.NNavy.SUBMARINE_REVEAL_POW = 1.8		-- A scaling factor that is applied to the reveal chance in order to make large differences in detection vs visibility more pronounced
NDefines.NNavy.NAVAL_COMBAT_SUB_DETECTION_FACTOR = 5.0      -- balance value for sub detection in combat by ships
NDefines.NNavy.SUBMARINE_HIDE_TIMEOUT = 12		-- Amount of in-game-hours that takes the submarine (with position unrevealed), to hide.
NDefines.NNavy.SUBMARINE_REVEALED_TIMEOUT = 16		-- Amount of in-game-hours that makes the submarine visible if it is on the defender side.
NDefines.NNavy.SUBMARINE_REVEAL_BASE_CHANCE = 30		-- Base factor for submarine detection. It's modified by the difference of a spotter's submarines detection vs submarine visibility. Use this variable for game balancing. setting this too low will cause bad spotting issues.
NDefines.NNavy.ESCAPE_SPEED_HIDDEN_SUB = 0.5									-- hidden subs get faster escape speed
NDefines.NNavy.ESCAPE_SPEED_SUB_BASE = -0.20
NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_FACTOR = 0.1
NDefines.NNavy.DETECTION_CHANCE_MULT_AIR_SUPERIORITY_BONUS = 0.2
NDefines.NNavy.COMBAT_DAMAGE_TO_STR_FACTOR = 0.3 -- casting damage value to ship strength multiplier. Use it ot balance the game difficulty.
NDefines.NNavy.COMBAT_DAMAGE_TO_ORG_FACTOR = 0.5	--- casting damage value to ship organisation multiplier. Use it to balance the game difficulty.
NDefines.NNavy.MAX_ORG_ON_MANUAL_MOVE = 1.0	-- org will clamped to this ratio on manual move
NDefines.NNavy.TRAINING_EXPERIENCE_FACTOR = 0.6
NDefines.NNavy.UNIT_TRANSFER_DETECTION_CHANCE_BASE = 1.0  -- unit transfer and naval invasion base chance detection percentage (if this fails, no detection is done on that tick)
NDefines.NNavy.UNIT_TRANSFER_SPOTTING_SPEED_MULT = 1.0
NDefines.NNavy.NAVAL_INVASION_SPOTTING_SPEED_MULT = 10.0	-- spotting speed mult against naval invasion armies
NDefines.NNavy.BASE_SPOTTING_EFFECT_FOR_INITIAL_UNIT_TRANSFER_SPOTTING = 2		-- same as BASE_SPOTTING_EFFECT_FOR_INITIAL_CONVOY_SPOTTING, but for naval transfer convoys
NDefines.NNavy.BASE_SPOTTING_EFFECT_FOR_INITIAL_NAVAL_INVASION_SPOTTING = 2	-- same as BASE_SPOTTING_EFFECT_FOR_INITIAL_CONVOY_SPOTTING, but for naval invasion convoys


NDefines.NNavy.ORG_COST_WHILE_MOVING = { -- org cost while the ships are moving
		0.4, -- HOLD
		0.4, -- PATROL		
		0.4, -- STRIKE FORCE 
		0.4, -- CONVOY RAIDING
		0.4, -- CONVOY ESCORT
		0.4, -- MINES PLANTING	
		0.4, -- MINES SWEEPING	
		0.4, -- TRAIN
		0.4, -- RESERVE_FLEET
		0.4, -- NAVAL_INVASION_SUPPORT
	}
NDefines.NNavy.MISSION_SUPREMACY_RATIOS = { -- supremacy multipliers for different mission types
		0.0, -- HOLD
		1.0, -- PATROL		
		0.4, -- STRIKE FORCE 
		0.5, -- CONVOY RAIDING
		0.5, -- CONVOY ESCORT
		0.3, -- MINES PLANTING	
		0.3, -- MINES SWEEPING	
		0.0, -- TRAIN
		0.0, -- RESERVE_FLEET
		0.4, -- NAVAL_INVASION_SUPPORT
	}
NDefines.NNavy.NAVY_PIERCING_THRESHOLDS = {					-- Our piercing / their armor must be this value to deal damage fraction equal to the index in the array below [higher number = higher penetration]. If armor is 0, 1.00 will be returned.
		1.00,
		0.80,
		0.50,
		0.30,
		0.15,
		0.00 --there isn't much point setting this higher than 0
}

NDefines.NNavy.NAVY_PIERCING_THRESHOLD_CRITICAL_VALUES = {	-- 0 armor will always receive maximum damage (so add overmatching at your own peril). the system expects at least 2 values, with no upper limit.
		2.50,
		1.25,
		0.75,
		0.50,
		0.25,
		0.00 -- For criticals, you could reduce crit chance unlike damage in army combat, but we do not for now.
}

NDefines.NNavy.NAVY_PIERCING_THRESHOLD_DAMAGE_VALUES = {	-- 0 armor will always receive maximum damage (so add overmatching at your own peril). the system expects at least 2 values, with no upper limit.
		1.00,
		0.85,
		0.55,
		0.35,
		0.20,
		0.1 --
}

NDefines.NNavy.CONVOY_DEFENSE_MAX_CONVOY_TO_SHIP_RATIO = 20.0		-- each ship in convoy defense mission can at most cover this many convoys without losing efficiency
NDefines.NNavy.CONVOY_ROUTE_SIZE_CONVOY_SCALE = 0.4     -- scales impact of convoy route size (0 to turn off)
NDefines.NNavy.SUPREMACY_PER_SHIP_PER_MANPOWER = 0.07						-- supremacy of a ship is calculated using its IC, manpower and a base define
NDefines.NNavy.SUPREMACY_PER_SHIP_BASE = 15.0
NDefines.NNavy.SUPPLY_NEED_FACTOR = 0.01
NDefines.NMilitary.SHIP_MORALE_TO_ORG_REGAIN_BASE = 0.5 --vanilla 0.2
---Air
NDefines.NAir.NAVAL_COMBAT_EXTERNAL_PLANES_JOIN_RATIO = 0.015 -- vanilla 0.05
NDefines.NAir.COMBAT_DAMAGE_SCALE_CARRIER = 5.0    -- same as above but used inside naval combat for carrier battles
NDefines.NAir.CARRIER_HOURS_DELAY_AFTER_EACH_COMBAT = 2          -- how often carrier planes do battle inside naval combat
NDefines.NAir.NAVAL_STRIKE_DAMAGE_TO_STR = 0.55
NDefines.NAir.NAVAL_KAMIKAZE_DAMAGE_MULT = 5.0  -- vanilla is like 20
NDefines.NAir.NAVAL_STRIKE_DAMAGE_TO_ORG = 0.2
NDefines.NAir.NAVAL_STRIKE_DETECTION_BALANCE_FACTOR = 0.6		-- Value used to scale the surface_visibility stats to balance the gameplay, so 100% detection chance still won't spam the strikes.
NDefines.NAir.NAVAL_STRIKE_CARRIER_MULTIPLIER = 5 --was 2.5 but i increased overall naval damage        -- damage bonus when planes are in naval combat where their carrier is present (and can thus sortie faster and more effectively)	
NDefines.NAir.DISRUPTION_FACTOR_CARRIER = 1.0
NDefines.NAir.CARRIER_COMBAT_DAMAGE_STATS_MULTIPLIER = 0.5
NDefines.NAir.NAVAL_STRIKE_TARGETTING_TO_AMOUNT = 0.4
-- Having Naval Dominance will provide the following benefits:
NDefines.NNavy.CONVOY_BLOCKED_BY_ENEMY_CONTROLLED_REGION = true				-- If an enemy control a sea region, consider that region as blocked
NDefines.NNavy.NAVAL_DOMINANCE_STRIKE_FORCE_FRACTION = 0.0006					-- How much dominance points goes into one percent of the multiplier from strike force missions. ( e.g. a taskforce of 1000 dominance generates a 60% multiplier ) 
NDefines.NNavy.NAVAL_DOMINANCE_STRIKE_FORCE_MULTIREGION_DECAY = 0.025			-- Percentage that the strike force mission's naval dominance multiplier decreases with for each additional assigned region
NDefines.NNavy.NAVAL_DOMINANCE_SPOTTING_BONUS = 0.05
NDefines.NNavy.NAVAL_DOMINANCE_ORG_RECOVERY = 0.1
NDefines.NNavy.NAVAL_DOMINANCE_SHIP_RECOVERY_CHANCE = 0.1
NDefines.NNavy.NAVAL_DOMINANCE_MINES_PLANTING_BONUS = 0.2						-- Naval planting bonus when having naval dominance in the region
NDefines.NNavy.NAVAL_DOMINANCE_MINES_SWEEPING_BONUS = 0.2						-- Naval sweeping bonus when having naval dominance in the region
NDefines.NNavy.NAVAL_DOMINANCE_CHANCE_OF_ACCIDENT_REDUCTION = 0.25			-- The chance to encounter an accident during naval training would be reduced when having naval dominance in the region
NDefines.NNavy.NAVAL_HOMEBASE_CALCULATION_DISTANCE_CUTOFF = 1000				-- Tuning parameter for homebase calculation. Distance to normalize against. Everything above said value will be treated as score = 0.
NDefines.NNavy.NAVAL_HOMEBASE_BUILDING_SCORE_FACTOR = 0.02					-- Tuning parameter for homebase calculation. Multiplier for how much the level of the naval base impacts its total score.
NDefines.NNavy.NAVAL_HOMEBASE_OWNERSHIP_BONUS = 0.04							-- Tuning parameter for homebase calculation. Adds to total score based on if the base is owned by the country doing the calculation.
NDefines.NNavy.DOMINANCE_PER_SHIP_PER_RANGE_NEUTRAL = 2000					-- ship range where there is no penalty nor bonus to naval dominance, below or above this will be scaled accordingly with penalty or bonus, min value is 0
NDefines.NNavy.DOMINANCE_PER_SHIP_PER_SPEED_NEUTRAL = 20						-- ship speed where there is no penalty nor bonus to naval dominance, below or above this will be scaled accordingly with penalty or bonus, min value is 0
NDefines.NNavy.DOMINANCE_PER_SHIP_PER_CARRIER_SIZE = 0.1						-- bonus to dominance based on the carrier size - e.g. regular carrier hangar has carrier_size of 2, so it would be a bonus of 2 * DOMINANCE_PER_SHIP_PER_CARRIER_SIZE, min value is 0
NDefines.NNavy.DOMINANCE_PER_SHIP_PER_HEAVY_GUN_ATTACK = 0.01					-- bonus to dominance based on the heavy attack, min value is 0
NDefines.NNavy.DOMINANCE_DAILY_GAIN_FACTOR = 0.08 							-- Daily dominance gain, as a fraction of target value 
NDefines.NNavy.DOMINANCE_DAILY_LOSS_FACTOR = 0.02 							-- Daily dominance loss, as a fraction of previous target value 
NDefines.NNavy.CHANCE_TO_DAMAGE_PART_ON_CRITICAL_HIT = 0.1	-- the game will roll between 0-1 and will damage a random part if below this val on naval critical hits
NDefines.NNavy.CHANCE_TO_DAMAGE_PART_ON_CRITICAL_HIT_FROM_AIR = 0.2	-- the game will roll between 0-1 and will damage a random part if below this val on air critical hits
NDefines.NNavy.NAVAL_BASE_DOMINANCE_FACTOR = 0.0									-- base naval dominance buff based on naval bases in the region
