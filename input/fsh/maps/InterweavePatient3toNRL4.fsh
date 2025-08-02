Instance: InterweavePatient3toNRL4
InstanceOf: StructureMap
Usage: #definition
Description: "Interweave Patient Structure map for conversion."
* version = "0.0.1"
* date  = "2025-05-06"
* url = "https://fhir.interweavedigital.nhs.uk/NRL-R4/StructureMap/InterweavePatient3toNRL4"
* name = "InterweavePatient3toNRL4"
* status = #draft

* structure[0].url = "https://fhir.yhcr.nhs.uk/StructureDefinition/Interweave-Patient"
* structure[=].mode = #source
* structure[=].alias = "PatientSTU3"
* structure[+].url = "https://fhir.interweavedigital.nhs.uk/NRL-R4/StructureDefinition/Interweave-Patient"
* structure[=].mode = #target
* structure[=].alias = "PatientR4"

// Special syntax for importing all base STU3 to R4 StructureMaps. See https://build.fhir.org/ig/HL7/fhir-cross-version/StructureMap-Patient3to4.html for example.
* import[0] = "http://hl7.org/fhir/StructureMap/*3to4"

* group[0].name = "Patient"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].type = "PatientSTU3"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "PatientR4"
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

* group[=].rule[+].name = "extension"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "extension"
* group[=].rule[=].source.variable = "ext"
* group[=].rule[=].source.condition = "(url = 'https://fhir.hl7.org.uk/STU3/StructureDefinition/Extension-CareConnect-NHSCommunication-1')"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "communication"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].rule[0].name = "extension"
* group[=].rule[=].rule[=].source.context = "ext"
* group[=].rule[=].rule[=].source.element = "extension"
* group[=].rule[=].rule[=].source.variable = "vs"
* group[=].rule[=].rule[=].source.condition = "(url = 'language')"
* group[=].rule[=].rule[=].target.context = "vt"
* group[=].rule[=].rule[=].target.element = "language"
* group[=].rule[=].rule[=].target.variable = "vt1"
* group[=].rule[=].rule[=].rule.name = "language"
* group[=].rule[=].rule[=].rule.source.context = "vs"
* group[=].rule[=].rule[=].rule.source.element = "value"
* group[=].rule[=].rule[=].rule.target.context = "vt"
* group[=].rule[=].rule[=].rule.target.element = "language"


* group[=].rule[=].rule[+].name = "extension"
* group[=].rule[=].rule[=].source.context = "ext"
* group[=].rule[=].rule[=].source.element = "extension"
* group[=].rule[=].rule[=].source.variable = "vs"
* group[=].rule[=].rule[=].source.condition = "(url = 'preferred')"
* group[=].rule[=].rule[=].target.context = "vt"
* group[=].rule[=].rule[=].target.element = "preferred"
* group[=].rule[=].rule[=].target.variable = "vt1"
* group[=].rule[=].rule[=].rule.name = "valueBoolean"
* group[=].rule[=].rule[=].rule.source.context = "vs"
* group[=].rule[=].rule[=].rule.source.type = "boolean"
* group[=].rule[=].rule[=].rule.source.element = "value"
* group[=].rule[=].rule[=].rule.source.variable = "vs1"
* group[=].rule[=].rule[=].rule.target[0].context = "vt"
* group[=].rule[=].rule[=].rule.target[=].element = "preferred"


* group[=].rule[+].name = "identifier"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "identifier"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "identifier"

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

* group[=].rule[+].name = "gender"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "gender"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "gender"

* group[=].rule[+].name = "birthDate"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "birthDate"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "birthDate"

// boolean variant of the deceased[x] choice element:
* group[=].rule[+].name = "deceasedBoolean"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.type = "boolean"
* group[=].rule[=].source.element = "deceased"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "deceased"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "boolean"
* group[=].rule[=].dependent.name = "boolean"
* group[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].dependent.variable[+] = "vt"

// dateTime variant of the deceased[x] choice element:
* group[=].rule[+].name = "deceasedDateTime"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.type = "dateTime"
* group[=].rule[=].source.element = "deceased"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "deceased"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "dateTime"
* group[=].rule[=].dependent.name = "dateTime"
* group[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].dependent.variable[+] = "vt"

* group[=].rule[+].name = "address"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "address"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "address"

* group[=].rule[+].name = "maritalStatus"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "maritalStatus"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "maritalStatus"

// boolean variant of the multipleBirth[x] choice element:
* group[=].rule[+].name = "multipleBirthBoolean"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.type = "boolean"
* group[=].rule[=].source.element = "multipleBirth"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "multipleBirth"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "boolean"
* group[=].rule[=].dependent.name = "boolean"
* group[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].dependent.variable[+] = "vt"

// integer variant of the multipleBirth[x] choice element:
* group[=].rule[+].name = "multipleBirthInteger"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.type = "integer"
* group[=].rule[=].source.element = "multipleBirth"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "multipleBirth"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "integer"
* group[=].rule[=].dependent.name = "integer"
* group[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].dependent.variable[+] = "vt"

* group[=].rule[+].name = "contact"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "contact"
* group[=].rule[=].source.variable = "vs0"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "contact"
* group[=].rule[=].target.variable = "vt0"
* group[=].rule[=].dependent.name = "contact"
* group[=].rule[=].dependent.variable[0] = "vs0"
* group[=].rule[=].dependent.variable[+] = "vt0"


* group[=].rule[+].name = "generalPractitioner"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "generalPractitioner"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "generalPractitioner"

* group[=].rule[+].name = "managingOrganization"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "managingOrganization"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "managingOrganization"

* group[=].rule[+].name = "link"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "link"
* group[=].rule[=].source.variable = "vs0"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "link"
* group[=].rule[=].target.variable = "vt0"
* group[=].rule[=].dependent.name = "link"
* group[=].rule[=].dependent.variable[0] = "vs0"
* group[=].rule[=].dependent.variable[+] = "vt0"

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
* group[=].rule[=].rule[=].target.parameter.valueString = "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips|2.0.0"


* group[+].name = "contact"
* group[=].typeMode = #none
* group[=].input[0].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].mode = #target

* group[=].rule[0].name = "relationship"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "relationship"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "relationship"

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

* group[=].rule[+].name = "organization"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "organization"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "organization"

* group[=].rule[+].name = "period"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "period"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "period"

* group[+].name = "link"
* group[=].typeMode = #none
* group[=].input[0].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].mode = #target

* group[=].rule[0].name = "other"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "other"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "other"

* group[=].rule[+].name = "type"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "type"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "type"