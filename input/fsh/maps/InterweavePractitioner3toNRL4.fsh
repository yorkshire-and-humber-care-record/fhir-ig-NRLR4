Instance: InterweavePractitioner3toNRL4
InstanceOf: StructureMap
Usage: #definition
Description: "Interweave Practitioner Structure map for conversion."
* version = "0.0.1"
* date  = "2025-05-06"
* url = "https://fhir.interweavedigital.nhs.uk/NRL-R4/StructureMap/InterweavePractitioner3toNRL4"
* name = "InterweavePractitioner3toNRL4"
* status = #draft

* structure[0].url = "https://fhir.yhcr.nhs.uk/StructureDefinition/Interweave-Practitioner"
* structure[=].mode = #source
* structure[=].alias = "PractitionerSTU3"
* structure[+].url = "https://fhir.interweavedigital.nhs.uk/NRL-R4/StructureDefinition/Interweave-Practitioner"
* structure[=].mode = #target
* structure[=].alias = "PractitionerR4"

// Special syntax for importing all base STU3 to R4 StructureMaps. See https://build.fhir.org/ig/HL7/fhir-cross-version/StructureMap-Patient3to4.html for example.
* import[0] = "http://hl7.org/fhir/StructureMap/*3to4"

* group[0].name = "Practitioner"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].type = "PractitionerSTU3"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "PractitionerR4"
* group[=].input[=].mode = #target

// assign UUID (to be used for NRL conversions as the data will be converted on the fly):
* group[=].rule[0].name = "id"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "id"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "id"
* group[=].rule[=].target.transform = #uuid

* group[=].rule[+].name = "identifier"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "identifier"
* group[=].rule[=].source.variable = "vs0"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "identifier"
* group[=].rule[=].target.variable = "vt0"

* group[=].rule[=].rule[0].name = "use"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "use"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "use"


* group[=].rule[=].rule[+].name = "type"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "type"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "type"

* group[=].rule[=].rule[+].name = "system"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "system"
* group[=].rule[=].rule[=].source.variable = "system"
* group[=].rule[=].rule[=].source.condition = "($this = 'https://fhir.yhcr.nhs.uk/Id/local-practitioner-identifier')"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "system"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueString = "https://fhir.interweavedigital.nhs.uk/Id/local-practitioner-identifier"

* group[=].rule[=].rule[+].name = "system"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "system"
* group[=].rule[=].rule[=].source.variable = "system"
* group[=].rule[=].rule[=].source.condition = "(($this = 'https://fhir.yhcr.nhs.uk/Id/local-practitioner-identifier') = false)"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "system"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueId = "system"

* group[=].rule[=].rule[+].name = "value"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "value"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "value"

* group[=].rule[=].rule[+].name = "period"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "period"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "period"

* group[=].rule[=].rule[+].name = "assigner"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "assigner"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "assigner"

* group[=].rule[+].name = "active"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "active"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "active"

* group[=].rule[+].name = "name"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "name"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "name"

* group[=].rule[+].name = "telecom"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "telecom"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "telecom"

* group[=].rule[+].name = "address"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "address"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "address"

* group[=].rule[+].name = "gender"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "gender"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "gender"

* group[=].rule[+].name = "qualification"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "qualification"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "qualification"

* group[=].rule[+].name = "extension"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "extension"
* group[=].rule[=].source.variable = "ext"
* group[=].rule[=].source.condition = "($this.url = 'https://fhir.hl7.org.uk/STU3/StructureDefinition/Extension-CareConnect-NHSCommunication-1')"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "communication"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].rule.name = "extension"
* group[=].rule[=].rule.source.context = "ext"
* group[=].rule[=].rule.source.element = "extension"
* group[=].rule[=].rule.source.variable = "vs"
* group[=].rule[=].rule.source.condition = "($this.url = 'language')"
* group[=].rule[=].rule.target.context = "tgt"
* group[=].rule[=].rule.target.element = "communication"
* group[=].rule[=].rule.target.variable = "vt1"
* group[=].rule[=].rule.rule.name = "communication"
* group[=].rule[=].rule.rule.source.context = "vs"
* group[=].rule[=].rule.rule.source.element = "value"
* group[=].rule[=].rule.rule.target.context = "tgt"
* group[=].rule[=].rule.rule.target.element = "communication"