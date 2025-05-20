Instance: Interweave-MeidcationRequestCategory-ConceptMap
InstanceOf: ConceptMap
Usage: #definition
Description: "Interweave MeidcationRequestCategory Concept map"
* version = "0.0.1"
* date  = "2025-05-06"
* experimental = false
* title = "Interweave MeidcationRequestCategory Concept map"
* status = #active
* contact.telecom.system = #email
* sourceCanonical = "https://fhir.yhcr.nhs.uk/ValueSet/Interweave-MedicationRequestCategory-1"
* targetCanonical = "http://hl7.org/fhir/ValueSet/medicationrequest-category"
* group[0].source = "http://hl7.org/fhir/medication-request-category"
* group[=].target = "http://terminology.hl7.org/CodeSystem/medicationrequest-category"
* group[=].element[0].code = #inpatient
* group[=].element[=].target.code = #inpatient
* group[=].element[=].target.display = "Inpatient"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #outpatient
* group[=].element[=].target.code = #outpatient
* group[=].element[=].target.display = "Outpatient"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #community
* group[=].element[=].target.code = #community
* group[=].element[=].target.display = "Community"
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://fhir.yhcr.nhs.uk/CodeSystem/Interweave-MedicationRequestCategory-1"
* group[=].target = "http://terminology.hl7.org/CodeSystem/medicationrequest-category"
* group[=].element[0].code = #discharge
* group[=].element[=].target.code = #discharge
* group[=].element[=].target.display = "Discharge"
* group[=].element[=].target.equivalence = #equivalent
//* url = "https://fhir.interweavedigital.nhs.uk/R4/ConceptMap/Interweave-NRL-MedicationRequest-Category"
* version = "1.0.0"
* publisher = "Interweave"
* name = "Interweave_MeidcationRequestCategory_Concept_map"