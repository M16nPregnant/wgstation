/datum/job/bartender
	title = "Bartender"
	flag = BARTENDER
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#bbe291"
	exp_type_department = EXP_TYPE_SERVICE // This is so the jobs menu can work properly

	outfit = /datum/outfit/job/bartender
	plasma_outfit = /datum/outfit/plasmaman/bar

	access = list(ACCESS_HYDROPONICS, ACCESS_BAR, ACCESS_KITCHEN, ACCESS_MORGUE, ACCESS_WEAPONS, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_BAR, ACCESS_MINERAL_STOREROOM)
	paycheck = PAYCHECK_EASY
	paycheck_department = ACCOUNT_SRV
	bounty_types = CIV_JOB_DRINK
	departments = DEPARTMENT_BITFLAG_SERVICE
	display_order = JOB_DISPLAY_ORDER_BARTENDER
	threat = 0.5

	family_heirlooms = list(
		/obj/item/reagent_containers/rag,
		/obj/item/clothing/head/that,
		/obj/item/reagent_containers/food/drinks/shaker
	)

	mail_goodies = list(
		/obj/item/storage/box/rubbershot = 30,
		/datum/reagent/consumable/clownstears = 10,
		/obj/item/stack/sheet/mineral/plasma = 10,
		/obj/item/stack/sheet/mineral/uranium = 10,
	)

/datum/outfit/job/bartender
	name = "Bartender"
	jobtype = /datum/job/bartender

	glasses = /obj/item/clothing/glasses/sunglasses/reagent
	belt = /obj/item/pda/bar
	ears = /obj/item/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/civilian/bartender
	suit = /obj/item/clothing/suit/armor/vest
	backpack_contents = list(/obj/item/storage/box/beanbag=1,/obj/item/book/granter/action/drink_fling=1)
	shoes = /obj/item/clothing/shoes/laceup

/datum/job/bartender/after_spawn(mob/living/H, client/C, latejoin = FALSE)
	. = ..()
	var/datum/action/innate/drink_fling/D = new
	D.Grant(H)
