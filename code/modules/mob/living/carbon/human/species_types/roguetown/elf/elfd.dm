/mob/living/carbon/human/species/elf/dark
	race = /datum/species/elf/dark

/datum/species/elf/dark
	name = "Dark Elf"
	id = "elfd"
	desc = "<b>Dark Elf</b><br>\
	Elves, are a generic term for tall, pointy-eared humanoids\
    Of whom trace their original heritage to the ancient mysterious Snow Elves. \
	These ones are of a dark complexion and originate mostly from the underdark. \
    Their culture and entire lives normally involve serving the evil gods of the inhumen pantheon. \
    Previously rare but in recent times, more and more dark elfs can be seen on the surface. \
    The ones who aren't overtly cruel and bloodthirsty, tend to flee to the surface lest they get culled by their own society, \
    while some more sinister ones abandon their cities in search of new and greater power."

/*
	Former RT Desc: These guys were undead which doesn't really fit considering now you have a ton of them walking around.

	Descending from a perversion of necromancy, Dark Elves are a unique species \
	that have only recently found themselves a staple of daily life. \
	They boast a proud, beauty-centric culture that demands only the finest \
	out of its citizens, with anyone falling behind their cripplingly high standards \
	refered to as a Homonculus, while less graceful terms such as \
	Stitchface, Zombie or corpsewalker are most commonly thrown out by the elder races\
	Dark Elves tend to be extremely arrogant of others plights, with selfishness\
	being seen as a massive boon in their society. They are academic and usually well taught\
	through are noted to suffer from their biology, which tends to be weak and falls apart\
	without careful upkeep...\
	They typically trace their beginnings to how their progenator died before being raised."
*/
	skin_tone_wording = "Origin City-State"

	species_traits = list(EYECOLOR,HAIR,FACEHAIR,LIPS,OLDGREY)
	inherent_traits = list(TRAIT_NOMOBSWAP)
	default_features = list("mcolor" = "FFF", "ears" = "ElfW", "wings" = "None")
	use_skintones = 1
	skinned_type = /obj/item/stack/sheet/animalhide/human
	disliked_food = NONE
	liked_food = NONE
	possible_ages = list(AGE_YOUNG, AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD)
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	limbs_icon_m = 'icons/roguetown/mob/bodies/m/mem.dmi'
	limbs_icon_f = 'icons/roguetown/mob/bodies/f/fm.dmi'
	dam_icon = 'icons/roguetown/mob/bodies/dam/dam_male.dmi'
	dam_icon_f = 'icons/roguetown/mob/bodies/dam/dam_female.dmi'
	hairyness = "t3"
	mutant_bodyparts = list("ears")
	use_f = TRUE
	soundpack_m = /datum/voicepack/male/elf
	soundpack_f = /datum/voicepack/female/elf
	offset_features = list(	OFFSET_ID = list(0,0), OFFSET_GLOVES = list(0,1), OFFSET_WRISTS = list(0,1), OFFSET_HANDS = list(0,0), \
	OFFSET_CLOAK = list(0,1), OFFSET_FACEMASK = list(0,0), OFFSET_HEAD = list(0,0), \
	OFFSET_FACE = list(0,0), OFFSET_BELT_F = list(0,0), OFFSET_BACK = list(0,0), \
	OFFSET_NECK = list(0,0), OFFSET_MOUTH = list(0,0), OFFSET_PANTS = list(0,1), \
	OFFSET_SHIRT = list(0,1), OFFSET_ARMOR = list(0,1), OFFSET_UNDIES = list(0,1),\
	OFFSET_ID_F = list(0,-1), OFFSET_GLOVES_F = list(0,0), OFFSET_WRISTS_F = list(0,0), OFFSET_HANDS_F = list(0,0), \
	OFFSET_CLOAK_F = list(0,0), OFFSET_FACEMASK_F = list(0,-1), OFFSET_HEAD_F = list(0,-1), \
	OFFSET_FACE_F = list(0,-1), OFFSET_BELT_F = list(0,-1), OFFSET_BACK_F = list(0,-1), \
	OFFSET_NECK_F = list(0,-1), OFFSET_MOUTH_F = list(0,-1), OFFSET_PANTS_F = list(0,0), \
	OFFSET_SHIRT_F = list(0,0), OFFSET_ARMOR_F = list(0,0), OFFSET_UNDIES_F = list(0,0))
	specstats = list("strength" = 0, "perception" = -1, "intelligence" = 2, "constitution" = -1, "endurance" = -1, "speed" = 2, "fortune" = 0)
	enflamed_icon = "widefire"

	gender_swapping = TRUE

/datum/species/elf/dark/get_span_language(datum/language/message_language)
	if(!message_language)
		return
	if(message_language.type == /datum/language/elvish)
		return list(SPAN_DELF)
	return message_language.spans

/datum/species/elf/dark/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	..()
	var/mob/living/carbon/human/species/elf/dark/H = C
	if(H.age == AGE_YOUNG)
		offset_features = list(OFFSET_ID = list(0,-2), OFFSET_GLOVES = list(0,-1), OFFSET_WRISTS = list(0,-1),\
		OFFSET_CLOAK = list(0,-1), OFFSET_FACEMASK = list(0,-2), OFFSET_HEAD = list(0,-2), \
		OFFSET_FACE = list(0,-2), OFFSET_BELT = list(0,-1), OFFSET_BACK = list(0,-2), \
		OFFSET_NECK = list(0,-2), OFFSET_MOUTH = list(0,-2), OFFSET_PANTS = list(0, -1), \
		OFFSET_SHIRT = list(0,-1), OFFSET_ARMOR = list(0,-1), OFFSET_HANDS = list(0,-2), OFFSET_UNDIES = list(0,-1), \
		OFFSET_ID_F = list(0,-1), OFFSET_GLOVES_F = list(0,-1), OFFSET_WRISTS_F = list(0,-1), OFFSET_HANDS_F = list(0,-2), \
		OFFSET_CLOAK_F = list(0,-1), OFFSET_FACEMASK_F = list(0,-2), OFFSET_HEAD_F = list(0,-2), \
		OFFSET_FACE_F = list(0,-2), OFFSET_BELT_F = list(0,-1), OFFSET_BACK_F = list(0,-2), \
		OFFSET_NECK_F = list(0,-2), OFFSET_MOUTH_F = list(0,-2), OFFSET_PANTS_F = list(0,-1), \
		OFFSET_SHIRT_F = list(0,-1), OFFSET_ARMOR_F = list(0,-1), OFFSET_UNDIES_F = list(0,-1))

		limbs_icon_m = 'icons/roguetown/mob/bodies/m/mems.dmi'
		limbs_icon_f = 'icons/roguetown/mob/bodies/f/fs.dmi'

		hairyness = null

//		soundpack_m = new /datum/voicepack/male/young()
		H.has_stubble = FALSE
		H.facial_hairstyle = "None"
		H.update_hair()
		H.update_body()
/*
/datum/species/elf/dark/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	. = ..()
	C.remove_language(/datum/language/common)

/datum/species/elf/dark/on_species_loss(mob/living/carbon/C)
	. = ..()
	C.grant_language(/datum/language/common)
*/

/datum/species/elf/dark/get_skin_list()
	return list(
		"Commorah" = SKIN_COLOR_COMMORAH,
		"Gloomhaven" = SKIN_COLOR_GLOOMHAVEN,
		"Darkpila" = SKIN_COLOR_DARKPILA,
		"Sshanntynlan" = SKIN_COLOR_SSHANNTYNLAN,
		"Llurth Dreir" = SKIN_COLOR_LLURTH_DREIR,
		"Tafravma" = SKIN_COLOR_TAFRAVMA,
		"Yuethindrynn" = SKIN_COLOR_YUETHINDRYNN,
	)

/datum/species/elf/dark/get_hairc_list()
	return sortList(list(
	"black - oil" = "181a1d",
	"black - cave" = "201616",
	"black - rogue" = "2b201b",
	"black - midnight" = "1d1b2b",

	"white - cavedew" = "dee9ed",
	"white - spiderweb" = "f4f4f4"

	))

/datum/species/elf/dark/random_name(gender,unique,lastname)
	var/randname
	if(unique)
		if(gender == MALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/elf/elfdm.txt") )
				if(!findname(randname))
					break
		if(gender == FEMALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/elf/elfdf.txt") )
				if(!findname(randname))
					break
	else
		if(gender == MALE)
			randname = pick( world.file2list("strings/rt/names/elf/elfdm.txt") )
		if(gender == FEMALE)
			randname = pick( world.file2list("strings/rt/names/elf/elfdf.txt") )
	return randname

/datum/species/elf/dark/random_surname()
	return " [pick(world.file2list("strings/rt/names/elf/elfsnf.txt"))]"

/datum/species/elf/dark/get_accent(mob/living/carbon/human/H)
	return strings("french_replacement.json", "french")
