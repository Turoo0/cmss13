/datum/species/robot
	group = SPECIES_ROBOT
	name = ROBOT_GEN_ONE
	name_plural = "robots"
	uses_ethnicity = FALSE //Uses ethnic presets
	hair_color = "#000000"
	icobase = 'icons/mob/humans/species/r_robot.dmi'
	deform = 'icons/mob/humans/species/r_robot.dmi'


	unarmed_type = /datum/unarmed_attack/punch/robot
	pain_type = /datum/pain/synthetic
	stamina_type = /datum/stamina/none
	mob_inherent_traits = list(TRAIT_SUPER_STRONG)
	rarity_value = 2
	insulated = TRUE

	bloodsplatter_type = /obj/effect/temp_visual/dir_setting/bloodsplatter/synthsplatter

	total_health = 150 //more health than regular humans

	brute_mod = 0.5
	burn_mod = 0.9 //a small bit of resistance

	cold_level_1 = -1
	cold_level_2 = -1
	cold_level_3 = -1

	heat_level_1 = 500
	heat_level_2 = 1000
	heat_level_3 = 2000

	body_temperature = 350

	mob_flags = KNOWS_TECHNOLOGY
	flags = NO_BREATHE|NO_CLONE_LOSS|NO_BLOOD|NO_POISON|IS_SYNTHETIC|NO_CHEM_METABOLIZATION|NO_NEURO

	blood_color = BLOOD_COLOR_ROBOT

	has_organ = list(
		"heart" = /datum/internal_organ/heart/prosthetic,
		"brain" = /datum/internal_organ/brain/prosthetic,
		)

	knock_down_reduction = 5
	stun_reduction = 5
	acid_blood_dodge_chance = 25

	inherent_verbs = list(
		/mob/living/carbon/human/synthetic/proc/toggle_HUD,
		/mob/living/carbon/human/proc/toggle_inherent_nightvison,
	)

/datum/species/robot/handle_post_spawn(mob/living/carbon/human/H)
	H.set_languages(ALL_SYNTH_LANGUAGES)
	GLOB.alive_human_list -= H
	return ..()

/datum/species/robot/apply_signals(mob/living/carbon/human/H)
	RegisterSignal(H, COMSIG_HUMAN_IMPREGNATE, PROC_REF(cancel_impregnate), TRUE)

/datum/species/robot/proc/cancel_impregnate(datum/source)
	SIGNAL_HANDLER
	return COMPONENT_NO_IMPREGNATE
