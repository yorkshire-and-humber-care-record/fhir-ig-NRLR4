Instance: Interweave-MeidcationRequestPrescriptionType-ConceptMap
InstanceOf: ConceptMap
Usage: #definition
Description: "Interweave MeidcationRequest PrescriptionType Concept map"
* version = "0.0.1"
* date  = "2025-05-06"
* experimental = false
* title = "Interweave MeidcationRequestPrescriptionType Concept map"
* status = #active
* contact.telecom.system = #email

* sourceCanonical = "https://fhir.hl7.org.uk/STU3/ValueSet/CareConnect-PrescriptionType-1"
* targetCanonical = "https://fhir.interweavedigital.nhs.uk/NRL-R4/ValueSet/Interweave-MedicationRequestCourseOfTherapyType"

* group[0].source = "https://fhir.hl7.org.uk/STU3/CodeSystem/CareConnect-PrescriptionType-1"
* group[=].target = "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy"
* group[=].element[0].code = #acute
* group[=].element[=].target.code = #acute
* group[=].element[=].target.display = "Short course (acute) therapy"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #repeat
* group[=].element[=].target.code = #continuous
* group[=].element[=].target.display = "Continuous long term therapy"
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://fhir.hl7.org.uk/STU3/CodeSystem/CareConnect-PrescriptionType-1"
* group[=].target = "https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationRequestCourseOfTherapy"
* group[=].element[0].code = #repeat-dispensing
* group[=].element[=].target.code = #continuous-repeating-dispensing
* group[=].element[=].target.display = "Continuous long term (repeat dispensing)"
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://fhir.hl7.org.uk/STU3/CodeSystem/CareConnect-PrescriptionType-1"
* group[=].target = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-MedicationRequestCourseOfTherapyType"
* group[=].element[0].code = #delayed-prescribing
* group[=].element[=].target.code = #delayed-prescribing
* group[=].element[=].target.display = "Delayed prescribing"
* group[=].element[=].target.equivalence = #equivalent

//* url = "https://fhir.interweavedigital.nhs.uk/NRL-R4/ConceptMap/Interweave-NRL-MedicationRequest-PrescriptionType"
* version = "1.0.0"
* publisher = "Interweave"
* name = "Interweave_MeidcationRequestPrescriptionType_Concept_map"