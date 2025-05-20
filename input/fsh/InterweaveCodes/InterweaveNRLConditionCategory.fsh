Alias: $UKCore-ConditionCategory = https://fhir.hl7.org.uk/CodeSystem/UKCore-ConditionCategory
Alias: $ConditionCategoryCodes = http://terminology.hl7.org/CodeSystem/condition-category

ValueSet: InterweaveNRLConditionCategory
Id: Interweave-NRL-ConditionCategory
Title: "Interweave (NRL) Condition Category"
Description: "A set of codes that define the category of a condition."
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2025-04-15"
* ^name = "InterweaveNRLConditionCategory"
* ^experimental = false

* $ConditionCategoryCodes#problem-list-item "Problem List Item"
* $UKCore-ConditionCategory#co-morbidity "Co-morbidity"