Instance: InterweaveAllergyIntolerance3toNRL4
InstanceOf: StructureMap
Description: "Interweave AllergyIntolerance Structure map for conversion."
Usage: #definition
* version = "0.0.1"
* date  = "2025-05-06"
* url = "https://fhir.interweavedigital.nhs.uk/NRL-R4/StructureMap/InterweaveAllergyIntolerance3toNRL4"
* name = "InterweaveAllergyIntolerance3toNRL4"
* status = #draft

* structure[0].url = "https://fhir.yhcr.nhs.uk/StructureDefinition/Interweave-AllergyIntolerance"
* structure[=].mode = #source
* structure[=].alias = "AllergyIntoleranceSTU3"
* structure[+].url = "https://fhir.interweavedigital.nhs.uk/NRL-R4/StructureDefinition/Interweave-AllergyIntolerance"
* structure[=].mode = #target
* structure[=].alias = "AllergyIntoleranceR4"

// Special syntax for importing all base STU3 to R4 StructureMaps. See https://build.fhir.org/ig/HL7/fhir-cross-version/StructureMap-Patient3to4.html for example.
* import[0] = "http://hl7.org/fhir/StructureMap/*3to4"

* group[0].name = "AllergyIntolerance"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].type = "AllergyIntoleranceSTU3"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "AllergyIntoleranceR4"
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

// move "encounter" to R4 ".encounter" property:
* group[=].rule[+].name = "extension"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "extension"
* group[=].rule[=].source.variable = "ext"
* group[=].rule[=].source.condition = "(url = 'http://hl7.org/fhir/StructureDefinition/encounter-associatedEncounter')"
* group[=].rule[=].target.transform = #copy
* group[=].rule[=].target.parameter.valueId = "tgt"
* group[=].rule[=].rule.name = "valueReference"
* group[=].rule[=].rule.source.context = "ext"
* group[=].rule[=].rule.source.type = "Reference"
* group[=].rule[=].rule.source.element = "value"
* group[=].rule[=].rule.source.variable = "vs"
* group[=].rule[=].rule.target.context = "tgt"
* group[=].rule[=].rule.target.element = "encounter"
* group[=].rule[=].rule.target.variable = "vt"
* group[=].rule[=].rule.target.transform = #create
* group[=].rule[=].rule.target.parameter.valueString = "Reference"
* group[=].rule[=].rule.dependent.name = "Reference"
* group[=].rule[=].rule.dependent.variable[0] = "vs"
* group[=].rule[=].rule.dependent.variable[+] = "vt"

// simple identity transform for "identifier"
* group[=].rule[+].name = "identifier"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "identifier"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "identifier"

// create clinicalStatus CodeableConcept from STU3 code, using the built-in "cc" transform (https://www.hl7.org/fhir/mapping-language.html#:~:text=n/a-,cc,-(text)%20or%20(system):
* group[=].rule[+].name = "clinicalStatus"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "clinicalStatus"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target[0].context = "tgt"
* group[=].rule[=].target[=].element = "clinicalStatus"
* group[=].rule[=].target[=].variable = "vt"
* group[=].rule[=].target[=].transform = #cc
* group[=].rule[=].target[=].parameter[0].valueString = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* group[=].rule[=].target[=].parameter[+].valueId = "vs"

// create verification CodeableConcept from STU3 code, using the built-in "cc" transform:
* group[=].rule[+].name = "verificationStatus"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "verificationStatus"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target[0].context = "tgt"
* group[=].rule[=].target[=].element = "verificationStatus"
* group[=].rule[=].target[=].variable = "vt"
* group[=].rule[=].target[=].transform = #cc
* group[=].rule[=].target[=].parameter[0].valueString = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* group[=].rule[=].target[=].parameter[+].valueId = "vs"

// simple identity transform for "type"
* group[=].rule[+].name = "type"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "type"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "type"

// simple identity transform for "category"
* group[=].rule[+].name = "category"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "category"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "category"

// simple identity transform for "code"
* group[=].rule[+].name = "code"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "code"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "code"

// simple identity transform for "criticality"
* group[=].rule[+].name = "criticality"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "criticality"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "criticality"

// simple identity transform for "patient"
* group[=].rule[+].name = "patient"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "patient"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "patient"

// dateTime variant of the onset[x] choice element:
* group[=].rule[+].name = "onsetdateTime"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.type = "dateTime"
* group[=].rule[=].source.element = "onset"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "onset"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "dateTime"
* group[=].rule[=].dependent.name = "dateTime"
* group[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].dependent.variable[+] = "vt"

// Age variant of the onset[x] choice element:
* group[=].rule[+].name = "onsetAge"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.type = "Age"
* group[=].rule[=].source.element = "onset"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "onset"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "Age"
* group[=].rule[=].dependent.name = "Age"
* group[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].dependent.variable[+] = "vt"

// Period variant of the onset[x] choice element:
* group[=].rule[+].name = "onsetPeriod"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.type = "Period"
* group[=].rule[=].source.element = "onset"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "onset"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "Period"
* group[=].rule[=].dependent.name = "Period"
* group[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].dependent.variable[+] = "vt"

// renamed "assertedDate" to "recordedDate"
* group[=].rule[+].name = "recordedDate"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "assertedDate"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "recordedDate"

// simple identity transform for "recorder"
* group[=].rule[+].name = "recorder"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "recorder"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "recorder"

// simple identity transform for "recorder"
* group[=].rule[+].name = "asserter"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "asserter"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "asserter"

// simple identity transform for "lastOccurrence"
* group[=].rule[+].name = "lastOccurrence"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "lastOccurrence"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "lastOccurrence"

// simple identity transform for "note"
* group[=].rule[+].name = "note"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "note"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "note"

* group[=].rule[+].name = "reaction"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "reaction"
* group[=].rule[=].source.variable = "vs0"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "reaction"
* group[=].rule[=].target.variable = "vt0"

* group[=].rule[=].rule[0].name = "substanceCodeableConcept"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "substance"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "substance"

* group[=].rule[=].rule[+].name = "manifestationCodeableConcept"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "manifestation"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "manifestation"

* group[=].rule[=].rule[+].name = "description"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "description"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "description"


* group[=].rule[=].rule[+].name = "onset"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "onset"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "onset"


* group[=].rule[=].rule[+].name = "severity"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "severity"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "severity"


* group[=].rule[=].rule[+].name = "exposureRouteCodeableConcept"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "exposureRoute"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "exposureRoute"

* group[=].rule[=].rule[+].name = "note"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "note"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "note"

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
* group[=].rule[=].rule[=].target.parameter.valueString = "http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips|2.0.0"