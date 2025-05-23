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
* group[0].name = "Organization"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].type = "OrganizationSTU3"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "OrganizationR4"
* group[=].input[=].mode = #target
* group[=].rule[0].name = "id"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "id"
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
* group[=].rule[+].name = "identifier"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "identifier"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "identifier"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "active"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "active"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "active"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
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
* group[=].rule[+].name = "name"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "name"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "name"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "alias"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "alias"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "alias"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "telecom"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "telecom"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "telecom"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "address"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "address"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "address"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "partOf"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "partOf"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "partOf"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "contact"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "contact"
* group[=].rule[=].source.variable = "vs1"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "contact"
* group[=].rule[=].target.variable = "vt1"
* group[=].rule[=].dependent.name = "contact"
* group[=].rule[=].dependent.variable[0] = "vs1"
* group[=].rule[=].dependent.variable[+] = "vt1"
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
* group[+].name = "contact"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].mode = #target
* group[=].rule[0].name = "purpose"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "purpose"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "purpose"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "name"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "name"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "name"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "telecom"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "telecom"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "telecom"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "address"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "address"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "address"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create