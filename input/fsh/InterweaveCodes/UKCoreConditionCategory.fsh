Alias: $UKCore-ConditionCategory = https://fhir.hl7.org.uk/CodeSystem/UKCore-ConditionCategory
Alias: $ConditionCategoryCodes = http://terminology.hl7.org/CodeSystem/condition-category

ValueSet: UKCoreConditionCategory
Id: UKCore-ConditionCategory
Title: "UK Core Condition Category"
Description: "A set of codes that define the category of a condition."
* ^version = "2.1.0"
* ^status = #active
* ^date = "2022-01-07"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "07e8fe5c-f609-4b42-b77d-4f5ac46595e1"
* ^expansion.timestamp = "2023-12-11T15:31:25+00:00"
* ^expansion.total = 4
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-ConditionCategory|1.0.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://terminology.hl7.org/CodeSystem/condition-category|4.0.1"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-ConditionCategory"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #co-morbidity
* ^expansion.contains[=].display = "Co-morbidity"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* ^expansion.contains[=].version = "4.0.1"
* ^expansion.contains[=].code = #encounter-diagnosis
* ^expansion.contains[=].display = "Encounter Diagnosis"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-ConditionCategory"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #presenting-complaint
* ^expansion.contains[=].display = "Presenting Complaint"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* ^expansion.contains[=].version = "4.0.1"
* ^expansion.contains[=].code = #problem-list-item
* ^expansion.contains[=].display = "Problem List Item"
* include codes from system $ConditionCategoryCodes
* include codes from system UKCore-ConditionCategory

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-ConditionCategory"

CodeSystem: UKCoreConditionCategory
Id: UKCore-ConditionCategory
Title: "UK Core Condition Category"
Description: "A set of codes that define the category assigned to a condition.  This CodeSystem contains concepts not covered by the FHIR standard ConditionCategoryCodes CodeSystem."
* ^version = "1.1.0"
* ^status = #active
* ^date = "2023-12-12"
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
* #presenting-complaint "Presenting Complaint"
* #co-morbidity "Co-morbidity"

* ^url = "https://fhir.hl7.org.uk/CodeSystem/UKCore-ConditionCategory"