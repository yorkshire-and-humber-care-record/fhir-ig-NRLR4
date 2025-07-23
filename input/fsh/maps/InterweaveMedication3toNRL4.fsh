Instance: InterweaveMedication3toNRL4
InstanceOf: StructureMap
Usage: #definition
Description: "Interweave Medication Structure map for conversion."
* version = "0.0.1"
* date  = "2025-05-06"
* url = "https://fhir.interweavedigital.nhs.uk/NRL-R4/StructureMap/InterweaveMedication3toNRL4"
* name = "InterweaveMedication3toNRL4"
* status = #draft

* structure[0].url = "https://fhir.yhcr.nhs.uk/StructureDefinition/Interweave-Medication"
* structure[=].mode = #source
* structure[=].alias = "MedicationSTU3"
* structure[+].url = "https://fhir.interweavedigital.nhs.uk/NRL-R4/StructureDefinition/Interweave-Medication"
* structure[=].mode = #target
* structure[=].alias = "MedicationR4"

// Special syntax for importing all base STU3 to R4 StructureMaps. See https://build.fhir.org/ig/HL7/fhir-cross-version/StructureMap-Patient3to4.html for example.
* import[0] = "http://hl7.org/fhir/StructureMap/*3to4"

* group[0].name = "Medication"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].type = "MedicationSTU3"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "MedicationR4"
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

// move "R4Identifier" to R4 ".identifier" property:
* group[=].rule[+].name = "extension"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "extension"
* group[=].rule[=].source.variable = "ext"
* group[=].rule[=].source.condition = "(url = 'https://fhir.yhcr.nhs.uk/StructureDefinition/Extension-Interweave-R4Identifier')"
* group[=].rule[=].target.transform = #copy
* group[=].rule[=].target.parameter.valueId = "tgt"
* group[=].rule[=].rule.name = "valueIdentifier"
* group[=].rule[=].rule.source.context = "ext"
* group[=].rule[=].rule.source.type = "Identifier"
* group[=].rule[=].rule.source.element = "value"
* group[=].rule[=].rule.source.variable = "vs"
* group[=].rule[=].rule.target.context = "tgt"
* group[=].rule[=].rule.target.element = "identifier"
* group[=].rule[=].rule.target.variable = "vt"
* group[=].rule[=].rule.target.transform = #create
* group[=].rule[=].rule.target.parameter.valueString = "Identifier"
* group[=].rule[=].rule.dependent.name = "Identifier"
* group[=].rule[=].rule.dependent.variable[0] = "vs"
* group[=].rule[=].rule.dependent.variable[+] = "vt"

// simple identity transform for "manufacturer"
* group[=].rule[+].name = "manufacturer"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "manufacturer"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "manufacturer"

// simple identity transform for "form"
* group[=].rule[+].name = "form"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "form"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "form"

// simple identity transform for "code"
* group[=].rule[+].name = "code"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "code"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "code"

// identity transform for "ingredient" including the conversion of Ratio from extension to normal element
* group[=].rule[+].name = "ingredient"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "ingredient"
* group[=].rule[=].source.variable = "vs0"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "ingredient"
* group[=].rule[=].target.variable = "vt0"
* group[=].rule[=].dependent.name = "ingredient"
* group[=].rule[=].dependent.variable[0] = "vs0"
* group[=].rule[=].dependent.variable[+] = "vt0"

* group[+].name = "ingredient"
* group[=].typeMode = #none
* group[=].input[0].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].mode = #target

* group[=].rule[0].name = "itemCodeableConcept"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.type = "CodeableConcept"
* group[=].rule[=].source.element = "item"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "item"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "CodeableConcept"
* group[=].rule[=].dependent.name = "CodeableConcept"
* group[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].dependent.variable[+] = "vt"

* group[=].rule[+].name = "itemReference"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.type = "Reference"
* group[=].rule[=].source.element = "item"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "item"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "Reference"
* group[=].rule[=].dependent.name = "Reference"
* group[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].dependent.variable[+] = "vt"

* group[=].rule[+].name = "isActive"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "isActive"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "isActive"

* group[=].rule[+].name = "extension"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "extension"
* group[=].rule[=].source.variable = "ext"
* group[=].rule[=].source.condition = "(url = 'https://fhir.yhcr.nhs.uk/StructureDefinition/Extension-Interweave-R4IngredientStrength')"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].rule.name = "valueRatio"
* group[=].rule[=].rule.source.context = "ext"
* group[=].rule[=].rule.source.type = "Ratio"
* group[=].rule[=].rule.source.element = "value"
* group[=].rule[=].rule.source.variable = "vs"
* group[=].rule[=].rule.target.context = "tgt"
* group[=].rule[=].rule.target.element = "strength"
* group[=].rule[=].rule.target.variable = "vt"
* group[=].rule[=].rule.target.transform = #create
* group[=].rule[=].rule.target.parameter.valueString = "Ratio"
* group[=].rule[=].rule.dependent.name = "Ratio"
* group[=].rule[=].rule.dependent.variable[0] = "vs"
* group[=].rule[=].rule.dependent.variable[+] = "vt"

// transform for "meta"
* group[+].name = "meta"
* group[=].typeMode = #none
* group[=].input[0].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].mode = #target
* group[=].rule[0].name = "versionId"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "versionId"
* group[=].rule[=].source.variable = "versionId"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "versionId"
* group[=].rule[=].target.transform = #copy
* group[=].rule[=].target.parameter.valueString = "1"
* group[=].rule[+].name = "setSourceTag"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "tag"
* group[=].rule[=].source.variable = "sourceTag"
* group[=].rule[=].source.condition = "(system = 'https://yhcr.nhs.uk/Source')"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "tag"
* group[=].rule[=].target.variable = "tgtTag"
* group[=].rule[=].rule[0].name = "setSourceSystem"
* group[=].rule[=].rule[=].source.context = "sourceTag"
* group[=].rule[=].rule[=].source.element = "system"
* group[=].rule[=].rule[=].target.context = "tgtTag"
* group[=].rule[=].rule[=].target.element = "system"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueString = "https://fhir.interweavedigital.nhs.uk/Source"
* group[=].rule[=].rule[+].name = "setSourceCode"
* group[=].rule[=].rule[=].source.context = "sourceTag"
* group[=].rule[=].rule[=].source.element = "code"
* group[=].rule[=].rule[=].target.context = "tgtTag"
* group[=].rule[=].rule[=].target.element = "code"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueString = "Interweave"
* group[=].rule[=].rule[+].name = "setSourceDisplay"
* group[=].rule[=].rule[=].source.context = "sourceTag"
* group[=].rule[=].rule[=].source.element = "display"
* group[=].rule[=].rule[=].target.context = "tgtTag"
* group[=].rule[=].rule[=].target.element = "display"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueString = "Interweave Exchange"
* group[=].rule[+].name = "setProvenanceTag"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "tag"
* group[=].rule[=].source.variable = "provenanceTag"
* group[=].rule[=].source.condition = "(system = 'https://yhcr.nhs.uk/Provenance')"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "tag"
* group[=].rule[=].target.variable = "tgtTag"
* group[=].rule[=].rule[0].name = "setProvenanceSystem"
* group[=].rule[=].rule[=].source.context = "provenanceTag"
* group[=].rule[=].rule[=].source.element = "system"
* group[=].rule[=].rule[=].target.context = "tgtTag"
* group[=].rule[=].rule[=].target.element = "system"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueString = "https://fhir.interweavedigital.nhs.uk/Provenance"
* group[=].rule[=].rule[+].name = "code"
* group[=].rule[=].rule[=].source.context = "provenanceTag"
* group[=].rule[=].rule[=].source.element = "code"
* group[=].rule[=].rule[=].target.context = "tgtTag"
* group[=].rule[=].rule[=].target.element = "code"
* group[=].rule[=].rule[=].target.transform = #create
* group[=].rule[=].rule[+].name = "display"
* group[=].rule[=].rule[=].source.context = "provenanceTag"
* group[=].rule[=].rule[=].source.element = "display"
* group[=].rule[=].rule[=].target.context = "tgtTag"
* group[=].rule[=].rule[=].target.element = "display"
* group[=].rule[=].rule[=].target.transform = #create
* group[=].rule[+].name = "setBaseProfileTag"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "versionId"
* group[=].rule[=].source.variable = "baseProfileTag"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.contextType = #variable
* group[=].rule[=].target.element = "tag"
* group[=].rule[=].target.variable = "tgtTag"
* group[=].rule[=].rule[0].name = "setBaseProfileSystem"
* group[=].rule[=].rule[=].source.context = "baseProfileTag"
* group[=].rule[=].rule[=].target.context = "tgtTag"
* group[=].rule[=].rule[=].target.element = "system"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueString = "https://fhir.interweavedigital.nhs.uk/BaseProfile"
* group[=].rule[=].rule[+].name = "setBaseProfileCode"
* group[=].rule[=].rule[=].source.context = "baseProfileTag"
* group[=].rule[=].rule[=].target.context = "tgtTag"
* group[=].rule[=].rule[=].target.element = "code"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueString = "http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips|2.0.0"