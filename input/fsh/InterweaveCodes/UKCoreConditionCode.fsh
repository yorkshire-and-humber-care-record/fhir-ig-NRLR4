ValueSet: UKCoreConditionCode
Id: UKCore-ConditionCode
Title: "UK Core Condition Code"
Description: "A set of codes that define a clinical finding or a finding with explicit context or an event. Selected from the SNOMED CT UK coding system."
* ^version = "2.2.0"
* ^status = #active
* ^date = "2022-12-16"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html. This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* include codes from system SNOMED_CT_INT
    where constraint = "(< 404684003 |Clinical finding| OR < 413350009 |Finding with explicit context| OR < 272379006 |Event|)"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-ConditionCode"