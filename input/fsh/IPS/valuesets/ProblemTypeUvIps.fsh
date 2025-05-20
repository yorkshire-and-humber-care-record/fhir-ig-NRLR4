//Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

ValueSet: ProblemTypeUvIps
Id: problem-type-uv-ips
Title: "Problem Type - IPS"
Description: "This value set provides a category for the condition as a clinical problem for inclusion in the patient summary."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^version = "2.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International / Patient Care"
* ^contact.name = "HL7 International / Patient Care"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001 "World"
* ^immutable = false
* ConditionCategoryCodes#problem-list-item "Problem List Item"

* ^url = "http://hl7.org/fhir/uv/ips/ValueSet/problem-type-uv-ips"