ValueSet: InterweaveMedicationRequestCourseOfTherapyType
Id: Interweave-MedicationRequestCourseOfTherapyType
Title: "InterweaveMedicationRequestCourseOfTherapyType"
Description: "A set of codes to define a course of therapy for a medication request."
* ^name = "InterweaveMedicationRequestCourseOfTherapyType"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false


//UKCore concepts to include:
* include codes from valueset UKCore-MedicationRequestCourseOfTherapy
//Locally defined codes:
* include codes from system Interweave-MedicationRequestCourseOfTherapyType


CodeSystem: InterweaveMedicationRequestCourseOfTherapyType
Id: Interweave-MedicationRequestCourseOfTherapyType
Title: "InterweaveMedicationRequestCourseOfTherapyType"
Description: "A set of codes to define a course of therapy for a medication request."
* ^name = "InterweaveMedicationRequestCourseOfTherapyType"
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^url = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-MedicationRequestCourseOfTherapyType"

* #delayed-prescribing "Delayed prescribing"