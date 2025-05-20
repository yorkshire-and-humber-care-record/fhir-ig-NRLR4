Alias: $UKCore-MedicationRequestCategory = https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationRequestCategory

ValueSet: UKCoreMedicationRequestCategory
Id: UKCore-MedicationRequestCategory
Title: "UK Core Medication Request Category"
Description: "A set of codes to define a category for a medication request."
* ^version = "1.1.1"
* ^status = #active
* ^date = "2023-10-06"
* ^experimental = false
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "242c10eb-0ecc-47b2-9f97-78e80577a16e"
* ^expansion.timestamp = "2023-10-06T13:57:59+00:00"
* ^expansion.total = 6
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://terminology.hl7.org/CodeSystem/medicationrequest-category"
* ^expansion.contains[=].code = #inpatient
* ^expansion.contains[=].display = "Inpatient"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/medicationrequest-category"
* ^expansion.contains[=].code = #outpatient
* ^expansion.contains[=].display = "Outpatient"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/medicationrequest-category"
* ^expansion.contains[=].code = #community
* ^expansion.contains[=].display = "Community"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/medicationrequest-category"
* ^expansion.contains[=].code = #discharge
* ^expansion.contains[=].display = "Discharge"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationRequestCategory"
* ^expansion.contains[=].code = #leave
* ^expansion.contains[=].display = "Leave"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationRequestCategory"
* ^expansion.contains[=].code = #primarycare
* ^expansion.contains[=].display = "Primary Care"
* ^expansion.contains[=].inactive = true
* include codes from system MedicationRequestCategoryCodes
* include codes from system $UKCore-MedicationRequestCategory

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationRequestCategory"