//----Command---//
/datum/job/uscm/hcc/hccco
	title = JOB_HCC_CO
	total_positions = 1
	spawn_positions = 1
	supervisors = "None"
	selection_class = "job_co"
	flags_startup_parameters = ROLE_ADD_TO_DEFAULT
	gear_preset = /datum/equipment_preset/hcc/hccco
	entry_message_intro = "" // Shown on roundstart and latejoin. Top paragraph. Replaced with a generic "You are a [role name]" if not included
	entry_message_body = "Greetings Commander" //Middle paragraph. This one is typically written per role and declared here.

/obj/effect/landmark/start/hcc/hccco
	name = JOB_HCC_CO
	icon_state = "xo_spawn"
	job = /datum/job/uscm/hcc/hccco

/datum/job/uscm/hcc/hccco/announce_entry_message(mob/living/carbon/human/H)
	addtimer(CALLBACK(src, PROC_REF(do_announce_entry_message), H), 1.5 SECONDS)
	return ..()

/datum/job/uscm/hcc/hccco/proc/do_announce_entry_message(mob/living/carbon/human/H)
		all_hands_on_deck("Attention all hands, [H.get_paygrade(0)] [H.real_name] on deck!")

/datum/job/uscm/hcc/hcccf
	title = JOB_HCC_CF
	total_positions = 1
	spawn_positions = 1
	supervisors = "the commanding officer"
	selection_class = "job_co"
	flags_startup_parameters = ROLE_ADD_TO_DEFAULT
	gear_preset = /datum/equipment_preset/hcc/hcccf
	entry_message_intro = "" // Shown on roundstart and latejoin. Top paragraph. Replaced with a generic "You are a [role name]" if not included
	entry_message_body = "As the Adjunct you are the Commanding officer's assistant and and secretary. Ensure that you read SOP <a href='https://neroid-sector.com/wiki/index.php?title=Mudskippers_SOP'>" //Middle paragraph. This one is typically written per role and declared here.
/obj/effect/landmark/start/hcc/hcccf
	name = JOB_HCC_CF
	icon_state = "xo_spawn"
	job = /datum/job/uscm/hcc/hcccf

/datum/job/uscm/hcc/hcccf/announce_entry_message(mob/living/carbon/human/H)
	addtimer(CALLBACK(src, PROC_REF(do_announce_entry_message), H), 1.5 SECONDS)
	return ..()

/datum/job/uscm/hcc/hcccf/proc/do_announce_entry_message(mob/living/carbon/human/H)
		all_hands_on_deck("Attention all hands, [H.get_paygrade(0)] [H.real_name] on deck!")
