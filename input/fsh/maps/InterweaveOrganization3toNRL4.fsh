Instance: InterweaveOrganization3toNRL4
InstanceOf: StructureMap
Usage: #definition
Description: "Interweave Organization Structure map for conversion."
* version = "0.0.1"
* date  = "2025-05-06"
* url = "https://fhir.interweavedigital.nhs.uk/NRL-R4/StructureMap/InterweaveOrganization3toNRL4"
* name = "InterweaveOrganization3toNRL4"
* status = #draft

* structure[0].url = "https://fhir.yhcr.nhs.uk/StructureDefinition/Interweave-Organization"
* structure[=].mode = #source
* structure[=].alias = "OrganizationSTU3"
* structure[+].url = "https://fhir.interweavedigital.nhs.uk/NRL-R4/StructureDefinition/Interweave-Organization"
* structure[=].mode = #target
* structure[=].alias = "OrganizationR4"

// Special syntax for importing all base STU3 to R4 StructureMaps. See https://build.fhir.org/ig/HL7/fhir-cross-version/StructureMap-Patient3to4.html for example.
* import[0] = "http://hl7.org/fhir/StructureMap/*3to4"

* group[0].name = "Organization"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].type = "OrganizationSTU3"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "OrganizationR4"
* group[=].input[=].mode = #target

// assign UUID (to be used for NRL conversions as the data will be converted on the fly):
* group[=].rule[0].name = "id"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "id"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "id"
* group[=].rule[=].target.transform = #uuid

* group[=].rule[+].name = "meta"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "meta"
* group[=].rule[=].source.variable = "vs0"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "meta"
* group[=].rule[=].target.variable = "vt0"
* group[=].rule[=].dependent.name = "meta"
* group[=].rule[=].dependent.variable[0] = "vs0"
* group[=].rule[=].dependent.variable[+] = "vt0"

// simple identity transform for "identifier"
* group[=].rule[+].name = "identifier"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "identifier"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "identifier"

//simple identity transform for "active"
* group[=].rule[+].name = "active"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "active"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "active"

* group[=].rule[+].name = "type"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "type"
* group[=].rule[=].source.variable = "typ"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "type"
* group[=].rule[=].target.transform = #translate
* group[=].rule[=].target.parameter[0].valueId = "typ"
* group[=].rule[=].target.parameter[+].valueString = "https://fhir.interweavedigital.nhs.uk/R4/ConceptMap/Interweave-Organization-Type"
* group[=].rule[=].target.parameter[+].valueString = "CodeableConcept"

// simple identity transform for "name"
* group[=].rule[+].name = "name"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "name"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "name"

// simple identity transform for "alias"
* group[=].rule[+].name = "alias"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "alias"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "alias"

// simple identity transform for "telecom"
* group[=].rule[+].name = "telecom"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "telecom"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "telecom"

// simple identity transform for "address"
* group[=].rule[+].name = "address"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "address"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "address"

// simple identity transform for "partOf"
* group[=].rule[+].name = "partOf"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "partOf"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "partOf"

// simple identity transform for "contact"
* group[=].rule[+].name = "contact"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "contact"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "contact"

// transform for "meta"
* group[+].name = "meta"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].mode = #target
* group[=].rule[0].name = "versionId"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "versionId"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "versionId"
* group[=].rule[=].target.transform = #copy
* group[=].rule[=].target.parameter.valueString = "1"
* group[=].rule[+].name = "profile"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "profile"
* group[=].rule[=].source.variable = "profile"
* group[=].rule[=].source.condition = "(($this contains 'https://fhir.yhcr.nhs.uk/StructureDefinition/Interweave-Organization') = true)"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "profile"
* group[=].rule[=].target.transform = #append
* group[=].rule[=].target.parameter.valueString = "http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"
* group[=].rule[+].name = "tag"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "tag"
* group[=].rule[=].source.variable = "vs2"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "tag"
* group[=].rule[=].target.variable = "vt2"
* group[=].rule[=].rule[0].name = "system"
* group[=].rule[=].rule[=].source.context = "vs2"
* group[=].rule[=].rule[=].source.element = "system"
* group[=].rule[=].rule[=].source.variable = "source"
* group[=].rule[=].rule[=].source.condition = "($this = 'https://yhcr.nhs.uk/Source')"
* group[=].rule[=].rule[=].target.context = "vt2"
* group[=].rule[=].rule[=].target.element = "system"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueString = "https://fhir.interweavedigital.nhs.uk/Source"
* group[=].rule[=].rule[+].name = "code"
* group[=].rule[=].rule[=].source.context = "vs2"
* group[=].rule[=].rule[=].source.element = "code"
* group[=].rule[=].rule[=].source.variable = "sourceCode"
* group[=].rule[=].rule[=].source.condition = "vs2.system = 'https://yhcr.nhs.uk/Source'"
* group[=].rule[=].rule[=].target.context = "vt2"
* group[=].rule[=].rule[=].target.element = "code"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueString = "Interweave"
* group[=].rule[=].rule[+].name = "display"
* group[=].rule[=].rule[=].source.context = "vs2"
* group[=].rule[=].rule[=].source.element = "display"
* group[=].rule[=].rule[=].source.variable = "sourceDisplay"
* group[=].rule[=].rule[=].source.condition = "vs2.system = 'https://yhcr.nhs.uk/Source'"
* group[=].rule[=].rule[=].target.context = "vt2"
* group[=].rule[=].rule[=].target.element = "display"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueString = "Interweave Exchange"
* group[=].rule[=].rule[+].name = "system"
* group[=].rule[=].rule[=].source.context = "vs2"
* group[=].rule[=].rule[=].source.element = "system"
* group[=].rule[=].rule[=].source.variable = "provenance"
* group[=].rule[=].rule[=].source.condition = "($this = 'https://yhcr.nhs.uk/Provenance')"
* group[=].rule[=].rule[=].target.context = "vt2"
* group[=].rule[=].rule[=].target.element = "system"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueString = "https://fhir.interweavedigital.nhs.uk/Provenance"
* group[=].rule[=].rule[+].name = "code"
* group[=].rule[=].rule[=].source.context = "vs2"
* group[=].rule[=].rule[=].source.element = "code"
* group[=].rule[=].rule[=].source.variable = "provenanceCode"
* group[=].rule[=].rule[=].source.condition = "vs2.system = 'https://yhcr.nhs.uk/Provenance'"
* group[=].rule[=].rule[=].target.context = "vt2"
* group[=].rule[=].rule[=].target.element = "code"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueId = "provenanceCode"
* group[=].rule[=].rule[+].name = "display"
* group[=].rule[=].rule[=].source.context = "vs2"
* group[=].rule[=].rule[=].source.element = "display"
* group[=].rule[=].rule[=].source.variable = "provenanceDisplay"
* group[=].rule[=].rule[=].source.condition = "vs2.system = 'https://yhcr.nhs.uk/Provenance'"
* group[=].rule[=].rule[=].target.context = "vt2"
* group[=].rule[=].rule[=].target.element = "display"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueId = "provenanceDisplay"
