Profile: InterweaveMedicationRequest
Parent: MedicationRequestIPS
Id: Interweave-MedicationRequest
Description: "Interweave MedicationRequest resource profile - DRAFT."
Title: "InterweaveMedicationRequest"
* ^status = #draft
* ^version = "0.0.1"
* ^date  = "2025-03-14"

* insert Ruleset-InterweaveBaseFields

* extension contains Extension-UKCore-MedicationRepeatInformation named medicationRepeatInformation 0..1
* extension[medicationRepeatInformation] MS
* extension[medicationRepeatInformation].extension[numberOfPrescriptionsIssued] MS
* extension[medicationRepeatInformation].extension[authorisationExpiryDate] MS
* extension[Extension-UKCore-MedicationRepeatInformation].extension contains 
    Extension-Interweave-MedicationLastIssuedDate named LastIssuedDate 0..1 MS
* extension[medicationRepeatInformation] ^short = "Allows the resource to be referenced within / by other resources."

* category from http://hl7.org/fhir/ValueSet/medicationrequest-category (required)

* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)


* courseOfTherapyType from Interweave-MedicationRequestCourseOfTherapyType (required)
* insert Ruleset-CodingWithSystemCodeDisplay(courseOfTherapyType)

* priority 0..0
* insurance 0..0
* priorPrescription 0..0
* detectedIssue 0..0
* eventHistory 0..0
* supportingInformation 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..0