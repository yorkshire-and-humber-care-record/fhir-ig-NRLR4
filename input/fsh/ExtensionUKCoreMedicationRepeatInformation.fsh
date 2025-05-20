Extension: ExtensionUKCoreMedicationRepeatInformation
Id: Extension-UKCore-MedicationRepeatInformation
Title: "Extension UK Core Medication Repeat Information"
Description: "The specific repeat information of a medication item."
Context: MedicationRequest
* ^version = "2.3.0"
* ^date = "2023-12-07"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the MedicationRequest resource to support the exchange of repeat medication data items."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ..1
* . ^short = "Medication repeat information"
* . ^definition = "Medication repeat information."
* extension contains
    numberOfPrescriptionsIssued 0..1 and
    authorisationExpiryDate 0..1
* extension[numberOfPrescriptionsIssued] ^short = "The specific number of times a repeat prescription has been issued"
* extension[numberOfPrescriptionsIssued] ^definition = "An integer recording the number of times a repeat prescription has been issued. This integer does not include the original order dispense."
* extension[numberOfPrescriptionsIssued].value[x] 1..
* extension[numberOfPrescriptionsIssued].value[x] only unsignedInt
* extension[numberOfPrescriptionsIssued].value[x] ^short = "The specific number of times a repeat prescription has been issued"
* extension[numberOfPrescriptionsIssued].value[x] ^definition = "An integer recording the number of times a repeat prescription has been issued. This integer does not include the original order dispense."
* extension[authorisationExpiryDate] ^short = "Repeat prescription review date"
* extension[authorisationExpiryDate] ^definition = "The date a prescriber must review a repeat prescription with the patient. This is distinct from dispenseRequest.validityPeriod.end, which marks when a dispensing cycle ends e.g. in Electronic Repeat Dispensing"
* extension[authorisationExpiryDate].value[x] 1..
* extension[authorisationExpiryDate].value[x] only dateTime
* extension[authorisationExpiryDate].value[x] ^short = "Repeat prescription review date"
* extension[authorisationExpiryDate].value[x] ^definition = "Repeat prescription review date."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-MedicationRepeatInformation"