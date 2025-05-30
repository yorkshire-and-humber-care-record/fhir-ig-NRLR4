Alias: $dmd = https://dmd.nhs.uk

ValueSet: UKCoreAllergyCode
Id: UKCore-AllergyCode
Title: "UK Core Allergy Code"
Description: "A set of codes from the following dm+d (dictionary of medicines and devices) concept classes that define a medication or medication ingredient that the patient has an allergy or intolerance to: \r - VTM – Virtual Therapeutic Moiety \r - VMP – Virtual Medicinal Product \r - AMP – Actual Medicinal Product \r - Ingredient \r\r A set of codes from the SNOMED CT UK coding system that:   \r - identify a substance or pharmaceutical or biologic product that the patient has an allergy or intolerance to  \r - state that the patient has no known allergy or does not have a specific allergy  \r - provide a degrade of information about a drug or non-drug allergy  \r\r Where no dm+d or SNOMED CT coded information is available, a specific code from the nullFlavor Code System can be used instead to indicate this."
* ^version = "2.2.0"
* ^status = #active
* ^date = "2022-08-26"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html.<br$gt;This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* include codes from system $dmd where parent = "VTM"
* include codes from system $dmd where parent = "VMP"
* include codes from system $dmd where parent = "AMP"
* include codes from system $dmd where parent = "INGREDIENT"
* include codes from system SNOMED_CT_INT
    where constraint = "descendantOf 105590001 OR descendantOf 373873005 OR descendantOrSelfOf 716186003 OR 196461000000101 OR 196471000000108"
* NullFlavor#NI "NoInformation"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-AllergyCode"