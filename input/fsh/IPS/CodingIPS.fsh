Profile: CodingIPS
Parent: Coding
Id: Coding-uv-ips
Title: "Coding with translations"
Description: """This profile extends the capabilities of the coding data type to support multi-language designations (display).
It relies on the Translation extension."""
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^version = "2.0.0"
* ^date = "2024-06-19T10:50:07-05:00"
* ^publisher = "HL7 International / Patient Care"
* ^contact.name = "HL7 International / Patient Care"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001 "World"
* system MS
* code MS
* display MS
* display.extension ^slicing.discriminator.type = #value
* display.extension ^slicing.discriminator.path = "url"
* display.extension ^slicing.rules = #open
* display.extension contains Translation named translation 0..*
* display.extension[translation] ^short = "Language Translation (Localization)"

* ^url = "http://hl7.org/fhir/uv/ips/StructureDefinition/Coding-uv-ips"