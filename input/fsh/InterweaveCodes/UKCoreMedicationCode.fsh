Alias: $dmd = https://dmd.nhs.uk

ValueSet: UKCoreMedicationCode
Id: UKCore-MedicationCode
Title: "UK Core Medication Code"
Description: "A set of codes from the following dm+d (dictionary of medicines and devices) concept classes that define a medication:  \r - VTM – Virtual Therapeutic Moiety \r - VMP – Virtual Medicinal Product \r - AMP – Actual Medicinal Product \r - VMPP – Virtual Medicinal Product Pack \r - AMPP – Actual Medicinal Product Pack  \rA Clinical trial medication code. Selected from the SNOMED CT UK coding system."
* ^version = "2.3.0"
* ^status = #active
* ^date = "2022-12-16"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* include codes from system $dmd where parent = "VTM"
* include codes from system $dmd where parent = "VMP"
* include codes from system $dmd where parent = "AMP"
* include codes from system $dmd where parent = "VMPP"
* include codes from system $dmd where parent = "AMPP"
* include codes from system SNOMED_CT_INT where constraint = "419841000001106"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationCode"