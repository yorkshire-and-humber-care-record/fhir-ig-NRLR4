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

// move "encounter" to R4 ".encounter" property:
* group[=].rule[+].name = "extension"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "extension"
* group[=].rule[=].source.variable = "ext"
* group[=].rule[=].source.condition = "($this.url = 'http://hl7.org/fhir/StructureDefinition/encounter-associatedEncounter')"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "encounter"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].rule.name = "valueReference"
* group[=].rule[=].rule.source.context = "ext"
* group[=].rule[=].rule.source.type = "Reference"
* group[=].rule[=].rule.source.element = "value"
* group[=].rule[=].rule.source.variable = "vs"
* group[=].rule[=].rule.target[0].context = "vt"
* group[=].rule[=].rule.target[=].transform = #copy
* group[=].rule[=].rule.target[=].parameter.valueId = "vs"

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

// simple identity transform for "reaction"
* group[=].rule[+].name = "reaction"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "reaction"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "reaction"