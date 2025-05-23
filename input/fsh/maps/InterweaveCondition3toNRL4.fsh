Instance: InterweaveCondition3toNRL4
InstanceOf: StructureMap
Usage: #definition
Description: "Interweave Condition Structure map for conversion."
* version = "0.0.1"
* date  = "2025-05-06"
* url = "https://fhir.interweavedigital.nhs.uk/NRL-R4/StructureMap/InterweaveCondition3toNRL4"
* name = "InterweaveCondition3toNRL4"
* status = #draft
* structure[0].url = "https://fhir.yhcr.nhs.uk/StructureDefinition/Interweave-Condition"
* structure[=].mode = #source
* structure[=].alias = "ConditionSTU3"
* structure[+].url = "https://fhir.interweavedigital.nhs.uk/NRL-R4/StructureDefinition/Interweave-Condition"
* structure[=].mode = #target
* structure[=].alias = "ConditionR4"
* group[0].name = "Condition"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].type = "ConditionSTU3"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "ConditionR4"
* group[=].input[=].mode = #target
* group[=].rule[0].name = "id"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "id"
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
* group[=].rule[=].rule[=].source.variable = "vvv"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "use"
* group[=].rule[=].rule[=].target.variable = "vvv"
* group[=].rule[=].rule[=].target.transform = #create
* group[=].rule[=].rule[+].name = "type"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "type"
* group[=].rule[=].rule[=].source.variable = "vvv"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "type"
* group[=].rule[=].rule[=].target.variable = "vvv"
* group[=].rule[=].rule[=].target.transform = #create
* group[=].rule[=].rule[+].name = "system"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "system"
* group[=].rule[=].rule[=].source.variable = "system"
* group[=].rule[=].rule[=].source.condition = "($this = 'https://fhir.yhcr.nhs.uk/Id/local-condition-identifier')"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "system"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueString = "https://fhir.interweavedigital.nhs.uk/Id/local-condition-identifier"
* group[=].rule[=].rule[+].name = "system"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "system"
* group[=].rule[=].rule[=].source.variable = "system"
* group[=].rule[=].rule[=].source.condition = "(($this = 'https://fhir.yhcr.nhs.uk/Id/local-condition-identifier') = false)"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "system"
* group[=].rule[=].rule[=].target.transform = #copy
* group[=].rule[=].rule[=].target.parameter.valueId = "system"
* group[=].rule[=].rule[+].name = "value"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "value"
* group[=].rule[=].rule[=].source.variable = "vvv"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "value"
* group[=].rule[=].rule[=].target.variable = "vvv"
* group[=].rule[=].rule[=].target.transform = #create
* group[=].rule[=].rule[+].name = "period"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "period"
* group[=].rule[=].rule[=].source.variable = "vvv"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "period"
* group[=].rule[=].rule[=].target.variable = "vvv"
* group[=].rule[=].rule[=].target.transform = #create
* group[=].rule[=].rule[+].name = "assigner"
* group[=].rule[=].rule[=].source.context = "vs0"
* group[=].rule[=].rule[=].source.element = "assigner"
* group[=].rule[=].rule[=].source.variable = "vvv"
* group[=].rule[=].rule[=].target.context = "vt0"
* group[=].rule[=].rule[=].target.element = "assigner"
* group[=].rule[=].rule[=].target.variable = "vvv"
* group[=].rule[=].rule[=].target.transform = #create
* group[=].rule[+].name = "clinicalStatus"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "clinicalStatus"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target[0].context = "tgt"
* group[=].rule[=].target[=].element = "clinicalStatus"
* group[=].rule[=].target[=].variable = "vt"
* group[=].rule[=].target[+].context = "vt"
* group[=].rule[=].target[=].element = "coding"
* group[=].rule[=].target[=].variable = "c"
* group[=].rule[=].target[+].context = "c"
* group[=].rule[=].target[=].element = "system"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter.valueString = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* group[=].rule[=].target[+].context = "c"
* group[=].rule[=].target[=].element = "code"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter.valueId = "vs"
* group[=].rule[+].name = "verificationStatus"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "verificationStatus"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target[0].context = "tgt"
* group[=].rule[=].target[=].element = "verificationStatus"
* group[=].rule[=].target[=].variable = "vt"
* group[=].rule[=].target[+].context = "vt"
* group[=].rule[=].target[=].element = "coding"
* group[=].rule[=].target[=].variable = "c"
* group[=].rule[=].target[+].context = "c"
* group[=].rule[=].target[=].element = "system"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter.valueString = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* group[=].rule[=].target[+].context = "c"
* group[=].rule[=].target[=].element = "code"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter.valueId = "vs"
* group[=].rule[+].name = "category"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "category"
* group[=].rule[=].source.variable = "cat"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "category"
* group[=].rule[=].target.transform = #translate
* group[=].rule[=].target.parameter[0].valueId = "cat"
* group[=].rule[=].target.parameter[+].valueString = "https://fhir.interweavedigital.nhs.uk/R4/ConceptMap/Interweave-NRL-Condition-Category"
* group[=].rule[=].target.parameter[+].valueString = "CodeableConcept"
* group[=].rule[+].name = "severity"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "severity"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "severity"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "code"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "code"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "code"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "bodySite"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "bodySite"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "bodySite"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "subject"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "subject"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "subject"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "context"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "context"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "encounter"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "onsetDateTime"
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
* group[=].rule[+].name = "abatementDateTime"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.type = "dateTime"
* group[=].rule[=].source.element = "abatement"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "abatement"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "dateTime"
* group[=].rule[=].dependent.name = "dateTime"
* group[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].dependent.variable[+] = "vt"
* group[=].rule[+].name = "abatementAge"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.type = "Age"
* group[=].rule[=].source.element = "abatement"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "abatement"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "Age"
* group[=].rule[=].dependent.name = "Age"
* group[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].dependent.variable[+] = "vt"
* group[=].rule[+].name = "abatementPeriod"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.type = "Period"
* group[=].rule[=].source.element = "abatement"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "abatement"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "Period"
* group[=].rule[=].dependent.name = "Period"
* group[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].dependent.variable[+] = "vt"
* group[=].rule[+].name = "abatementRange"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.type = "Range"
* group[=].rule[=].source.element = "abatement"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "abatement"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "Range"
* group[=].rule[=].dependent.name = "Range"
* group[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].dependent.variable[+] = "vt"
* group[=].rule[+].name = "abatementString"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.type = "string"
* group[=].rule[=].source.element = "abatement"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "abatement"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "string"
* group[=].rule[=].dependent.name = "string"
* group[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].dependent.variable[+] = "vt"
* group[=].rule[+].name = "assertedDate"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "assertedDate"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "recordedDate"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "asserter"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "asserter"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "asserter"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "stage"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "stage"
* group[=].rule[=].source.variable = "s"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "stage"
* group[=].rule[=].target.variable = "t"
* group[=].rule[=].dependent.name = "stage"
* group[=].rule[=].dependent.variable[0] = "s"
* group[=].rule[=].dependent.variable[+] = "t"
* group[=].rule[+].name = "evidence"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "evidence"
* group[=].rule[=].source.variable = "s"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "evidence"
* group[=].rule[=].target.variable = "t"
* group[=].rule[=].dependent.name = "evidence"
* group[=].rule[=].dependent.variable[0] = "s"
* group[=].rule[=].dependent.variable[+] = "t"
* group[=].rule[+].name = "note"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "note"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "note"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[+].name = "stage"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].mode = #target
* group[=].rule[0].name = "summary"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "summary"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "summary"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "assessment"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "assessment"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "assessment"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "type"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "type"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "type"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[+].name = "evidence"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].mode = #target
* group[=].rule[0].name = "code"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "code"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "code"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create
* group[=].rule[+].name = "detail"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "detail"
* group[=].rule[=].source.variable = "vvv"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "detail"
* group[=].rule[=].target.variable = "vvv"
* group[=].rule[=].target.transform = #create