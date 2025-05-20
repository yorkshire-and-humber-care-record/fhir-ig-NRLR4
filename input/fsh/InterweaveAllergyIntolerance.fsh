Profile: InterweaveAllergyIntolerance
Parent: AllergyIntoleranceUvIps
Id: Interweave-AllergyIntolerance
Description: "Interweave AllergyIntolerance resource profile - DRAFT."
Title: "InterweaveAllergyIntolerance"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2025-03-14"

* insert Ruleset-InterweaveBaseFields

* code from UKCore-AllergyCode (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(code)

* onset[x] only dateTime or Age or Period
* onset[x] 0..1 MS

* insert Ruleset-ReferenceWithReferenceAndDisplay(patient)

* reaction.substance from UKCore-AllergySubstance (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(reaction.substance)
* reaction.manifestation from UKCore-AllergyManifestation (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(reaction.manifestation)