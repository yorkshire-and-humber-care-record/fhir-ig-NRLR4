Instance: Interweave-ConditionCategory-ConceptMap
InstanceOf: ConceptMap
Usage: #definition
Description: "Interweave ConditionCategory Concept map"
* version = "0.0.1"
* date  = "2025-05-06"
* experimental = false
* title = "Interweave ConditionCategory Concept map"
* status = #active
* contact.telecom.system = #email
* sourceCanonical = "https://fhir.hl7.org.uk/STU3/ValueSet/CareConnect-ConditionCategory-1"
* targetCanonical = "https://fhir.interweavedigital.nhs.uk/NRL-R4/ValueSet/Interweave-NRL-ConditionCategory"
* group[0].source = "https://fhir.hl7.org.uk/STU3/CodeSystem/CareConnect-ConditionCategory-1"
* group[=].target = "http://terminology.hl7.org/CodeSystem/condition-category"
* group[=].element[0].code = #problem-list-item
* group[=].element[=].target.code = #problem-list-item
* group[=].element[=].target.display = "Problem List Item"
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://fhir.hl7.org.uk/STU3/CodeSystem/CareConnect-ConditionCategory-1"
* group[=].target = "https://fhir.hl7.org.uk/CodeSystem/UKCore-ConditionCategory"
* group[=].element[0].code = #co-morbidity
* group[=].element[=].target.code = #co-morbidity
* group[=].element[=].target.display = "Co-morbidity"
* group[=].element[=].target.equivalence = #equivalent
//* url = "https://fhir.interweavedigital.nhs.uk/R4/ConceptMap/Interweave-NRL-Condition-Category"
* version = "1.0.0"
* publisher = "Interweave"
* name = "Interweave_ConditionCategory_Concept_map"