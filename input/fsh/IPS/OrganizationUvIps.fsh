Profile: OrganizationUvIps
Parent: Organization
Id: Organization-uv-ips
Title: "Organization (IPS)"
Description: "This profile constrains the Organization resource to represent an organization that acts as performer or observer for a result observation (laboratory, pathology or imaging), or as performer for a procedure."
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
* telecom MS
* address MS

* ^url = "http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"