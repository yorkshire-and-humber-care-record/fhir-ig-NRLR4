Profile: PractitionerUvIps
Parent: Practitioner
Id: Practitioner-uv-ips
Title: "Practitioner (IPS)"
Description: "This profile constrains the practitioner resource to represent a practitioner acting as observer for these imaging results."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^version = "2.0.0"
* ^status = #active
* ^date = "2024-06-19T10:50:07-05:00"
* ^publisher = "HL7 International / Patient Care"
* ^contact.name = "HL7 International / Patient Care"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001 "World"
* name 1.. MS
* name.family MS
* name.given MS
* telecom MS
* address MS

* ^url = "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"