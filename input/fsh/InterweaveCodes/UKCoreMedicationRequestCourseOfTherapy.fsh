ValueSet: UKCoreMedicationRequestCourseOfTherapy
Id: UKCore-MedicationRequestCourseOfTherapy
Title: "UK Core Medication Request Course Of Therapy"
Description: "A set of codes to define a course of therapy for a medication request."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-09-10"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "6fb36f9d-bddd-4fe5-9ed8-a9b1a8ca6d80"
* ^expansion.timestamp = "2021-09-09T15:02:07+00:00"
* ^expansion.total = 3
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationRequestCourseOfTherapy|1.0.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy|4.0.1"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy"
* ^expansion.contains[=].version = "4.0.1"
* ^expansion.contains[=].code = #continuous
* ^expansion.contains[=].display = "Continuous long term therapy"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy"
* ^expansion.contains[=].version = "4.0.1"
* ^expansion.contains[=].code = #acute
* ^expansion.contains[=].display = "Short course (acute) therapy"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationRequestCourseOfTherapy"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #continuous-repeating-dispensing
* ^expansion.contains[=].display = "Continuous long term (repeat dispensing)"
* MedicationRequestCourseOfTherapyCodes#continuous "Continuous long term therapy"
* MedicationRequestCourseOfTherapyCodes#acute "Short course (acute) therapy"
//* UKCore-MedicationRequestCourseOfTherapy#continuous-repeating-dispensing "Continuous long term (repeat dispensing)"
* include codes from system UKCore-MedicationRequestCourseOfTherapy

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationRequestCourseOfTherapy"


CodeSystem: UKCoreMedicationRequestCourseOfTherapy
Id: UKCore-MedicationRequestCourseOfTherapy
Title: "UK Core Medication Request Course Of Therapy"
Description: "A set of codes to define additional course of therapy concepts for a medication request."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-09-10"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^caseSensitive = true
* ^content = #complete
* #continuous-repeating-dispensing "Continuous long term (repeat dispensing)"

* ^url = "https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationRequestCourseOfTherapy"