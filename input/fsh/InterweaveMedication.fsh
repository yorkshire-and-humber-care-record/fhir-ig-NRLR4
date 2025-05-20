Profile: InterweaveMedication
Parent: MedicationIPS
Id: Interweave-Medication
Description: "Interweave Medication resource profile - DRAFT."
Title: "InterweaveMedication"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2025-03-14"

* insert Ruleset-InterweaveBaseFields

* code from UKCore-MedicationCode (preferred) 
* insert Ruleset-CodingWithSystemCodeDisplay(code)

* form from UKCore-MedicationForm (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(form)