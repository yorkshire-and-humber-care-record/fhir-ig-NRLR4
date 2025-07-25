Instance: InterweaveMedicationRequest3toNRL4
InstanceOf: StructureMap
Usage: #definition
Description: "Interweave Medication Request Structure map for conversion."
* version = "0.0.1"
* date  = "2025-05-06"
* url = "https://fhir.interweavedigital.nhs.uk/NRL-R4/StructureMap/InterweaveMedicationRequest3toNRL4"
* name = "InterweaveMedicationRequest3toNRL4"
* status = #draft

* structure[0].url = "https://fhir.yhcr.nhs.uk/StructureDefinition/Interweave-MedicationRequest"
* structure[=].mode = #source
* structure[=].alias = "MedicationRequestSTU3"
* structure[+].url = "https://fhir.interweavedigital.nhs.uk/NRL-R4/StructureDefinition/Interweave-MedicationRequest"
* structure[=].mode = #target
* structure[=].alias = "MedicationRequestR4"

// Special syntax for importing all base STU3 to R4 StructureMaps. See https://build.fhir.org/ig/HL7/fhir-cross-version/StructureMap-Patient3to4.html for example.
* import[0] = "http://hl7.org/fhir/StructureMap/*3to4"

* group[0].name = "MedicationRequest"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].type = "MedicationRequestSTU3"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "MedicationRequestR4"
* group[=].input[=].mode = #target

// assign UUID (to be used for NRL conversions as the data will be converted on the fly):
* group[=].rule[0].name = "id"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "id"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "id"
* group[=].rule[=].target.transform = #uuid

* group[=].rule[+].name = "extension"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "extension"
* group[=].rule[=].source.variable = "ext"
* group[=].rule[=].source.condition = "($this.url = 'https://fhir.hl7.org.uk/STU3/StructureDefinition/Extension-CareConnect-PrescriptionType-1')"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "courseOfTherapyType"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].rule.name = "valueCodeableConcept"
* group[=].rule[=].rule.source.context = "ext"
* group[=].rule[=].rule.source.type = "CodeableConcept"
* group[=].rule[=].rule.source.element = "value"
* group[=].rule[=].rule.source.variable = "vs"
* group[=].rule[=].rule.target[0].variable = "vt1"
* group[=].rule[=].rule.target[=].transform = #copy
* group[=].rule[=].rule.target[=].parameter.valueId = "vt"
* group[=].rule[=].rule.target[+].context = "tgt"
* group[=].rule[=].rule.target[=].element = "courseOfTherapyType"
* group[=].rule[=].rule.target[=].transform = #translate
* group[=].rule[=].rule.target[=].parameter[0].valueId = "vs"
* group[=].rule[=].rule.target[=].parameter[+].valueString = "https://fhir.interweavedigital.nhs.uk/R4/ConceptMap/Interweave-NRL-MedicationRequest-PrescriptionType"
* group[=].rule[=].rule.target[=].parameter[+].valueString = "CodeableConcept"

* group[=].rule[+].name = "extension"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "extension"
* group[=].rule[=].source.variable = "ext"
* group[=].rule[=].source.condition = "($this.url = 'https://fhir.nhs.uk/STU3/StructureDefinition/Extension-CareConnect-MedicationStatusReason-1')"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "statusReason"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].rule.name = "extension"
* group[=].rule[=].rule.source.context = "ext"
* group[=].rule[=].rule.source.element = "extension"
* group[=].rule[=].rule.source.variable = "vs"
* group[=].rule[=].rule.source.condition = "($this.url = 'statusReason')"
* group[=].rule[=].rule.target.context = "tgt"
* group[=].rule[=].rule.target.element = "statusReason"
* group[=].rule[=].rule.target.variable = "vt1"
* group[=].rule[=].rule.rule.name = "statusReason"
* group[=].rule[=].rule.rule.source.context = "vs"
* group[=].rule[=].rule.rule.source.element = "value"
* group[=].rule[=].rule.rule.target.context = "tgt"
* group[=].rule[=].rule.rule.target.element = "statusReason"

* group[=].rule[+].name = "extension"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "extension"
* group[=].rule[=].source.variable = "ext"
* group[=].rule[=].source.condition = "($this.url = 'https://fhir.nhs.uk/STU3/StructureDefinition/Extension-CareConnect-MedicationRepeatInformation-1')"
* group[=].rule[=].target[0].context = "tgt"
* group[=].rule[=].target[=].element = "extension"
* group[=].rule[=].target[=].variable = "tgtext"
* group[=].rule[=].target[+].context = "tgtext"
* group[=].rule[=].target[=].element = "url"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter.valueString = "https://fhir.nhs.uk/StructureDefinition/Extension-UKCore-MedicationRepeatInformation"
* group[=].rule[=].rule[0].name = "extension"
* group[=].rule[=].rule[=].source.context = "ext"
* group[=].rule[=].rule[=].source.element = "extension"
* group[=].rule[=].rule[=].source.variable = "vs"
* group[=].rule[=].rule[=].source.condition = "($this.url = 'numberOfRepeatPrescriptionsIssued')"
* group[=].rule[=].rule[=].target[0].context = "tgtext"
* group[=].rule[=].rule[=].target[=].element = "extension"
* group[=].rule[=].rule[=].target[=].variable = "vt"
* group[=].rule[=].rule[=].target[=].transform = #create
* group[=].rule[=].rule[=].target[=].parameter.valueString = "Extension"
* group[=].rule[=].rule[=].target[+].context = "vt"
* group[=].rule[=].rule[=].target[=].element = "url"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter.valueString = "numberOfRepeatPrescriptionsIssued"
* group[=].rule[=].rule[=].dependent.name = "ExtensionUnsignedIntValue"
* group[=].rule[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].rule[=].dependent.variable[+] = "vt"
* group[=].rule[=].rule[+].name = "extension"
* group[=].rule[=].rule[=].source.context = "ext"
* group[=].rule[=].rule[=].source.element = "extension"
* group[=].rule[=].rule[=].source.variable = "vs"
* group[=].rule[=].rule[=].source.condition = "($this.url = 'authorisationExpiryDate')"
* group[=].rule[=].rule[=].target[0].context = "tgtext"
* group[=].rule[=].rule[=].target[=].element = "extension"
* group[=].rule[=].rule[=].target[=].variable = "vt"
* group[=].rule[=].rule[=].target[=].transform = #create
* group[=].rule[=].rule[=].target[=].parameter.valueString = "Extension"
* group[=].rule[=].rule[=].target[+].context = "vt"
* group[=].rule[=].rule[=].target[=].element = "url"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter.valueString = "authorisationExpiryDate"
* group[=].rule[=].rule[=].dependent.name = "ExtensionDateTimeValue"
* group[=].rule[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].rule[=].dependent.variable[+] = "vt"
* group[=].rule[=].rule[+].name = "extension"
* group[=].rule[=].rule[=].source.context = "ext"
* group[=].rule[=].rule[=].source.element = "extension"
* group[=].rule[=].rule[=].source.variable = "vs"
* group[=].rule[=].rule[=].source.condition = "($this.url = 'https://fhir.yhcr.nhs.uk/StructureDefinition/Extension-Interweave-MedicationLastIssuedDate-1')"
* group[=].rule[=].rule[=].target[0].context = "tgtext"
* group[=].rule[=].rule[=].target[=].element = "extension"
* group[=].rule[=].rule[=].target[=].variable = "vt"
* group[=].rule[=].rule[=].target[=].transform = #create
* group[=].rule[=].rule[=].target[=].parameter.valueString = "Extension"
* group[=].rule[=].rule[=].target[+].context = "vt"
* group[=].rule[=].rule[=].target[=].element = "url"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter.valueString = "https://fhir.interweavedigital.nhs.uk/NRL-R4/StructureDefinition/Extension-Interweave-MedicationLastIssuedDate"
* group[=].rule[=].rule[=].dependent.name = "ExtensionDateTimeValue"
* group[=].rule[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].rule[=].dependent.variable[+] = "vt"

* group[=].rule[+].name = "extension"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "extension"
* group[=].rule[=].source.variable = "ext"
* group[=].rule[=].source.condition = "($this.url = 'https://fhir.nhs.uk/STU3/StructureDefinition/Extension-CareConnect-MedicationRepeatInformation-1')"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "extension"
* group[=].rule[=].target.variable = "tgtext"
* group[=].rule[=].rule.name = "extension"
* group[=].rule[=].rule.source.context = "ext"
* group[=].rule[=].rule.source.element = "extension"
* group[=].rule[=].rule.source.variable = "vs"
* group[=].rule[=].rule.source.condition = "($this.url = 'numberOfRepeatPrescriptionsAllowed')"
* group[=].rule[=].rule.target.context = "tgt"
* group[=].rule[=].rule.target.element = "dispenseRequest"
* group[=].rule[=].rule.target.variable = "vt"
* group[=].rule[=].rule.dependent.name = "DispenseRequest"
* group[=].rule[=].rule.dependent.variable[0] = "vs"
* group[=].rule[=].rule.dependent.variable[+] = "vt"

// simple identity transform for "identifier"
* group[=].rule[+].name = "identifier"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "identifier"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "identifier"

// simple identity transform for "status"
* group[=].rule[+].name = "status"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "status"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "status"

// simple identity transform for "intent"
* group[=].rule[+].name = "intent"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "intent"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "intent"


* group[=].rule[+].name = "category"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "category"
* group[=].rule[=].source.variable = "cat"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "category"
* group[=].rule[=].target.transform = #translate
* group[=].rule[=].target.parameter[0].valueId = "cat"
* group[=].rule[=].target.parameter[+].valueString = "https://fhir.interweavedigital.nhs.uk/R4/ConceptMap/Interweave-NRL-MedicationRequest-Category"
* group[=].rule[=].target.parameter[+].valueString = "CodeableConcept"

* group[=].rule[+].name = "medicationReference"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.type = "Reference"
* group[=].rule[=].source.element = "medication"
* group[=].rule[=].source.variable = "vs"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "medication"
* group[=].rule[=].target.variable = "vt"
* group[=].rule[=].target.transform = #create
* group[=].rule[=].target.parameter.valueString = "Reference"
* group[=].rule[=].dependent.name = "Reference"
* group[=].rule[=].dependent.variable[0] = "vs"
* group[=].rule[=].dependent.variable[+] = "vt"

// simple identity transform for "subject"
* group[=].rule[+].name = "subject"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "subject"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "subject"

// simple identity transform for "context"
* group[=].rule[+].name = "context"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "context"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "encounter"

// simple identity transform for "authoredOn"
* group[=].rule[+].name = "authoredOn"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "authoredOn"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "authoredOn"

// simple identity transform for "requester"
* group[=].rule[+].name = "requester"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "requester"
* group[=].rule[=].source.variable = "vs0"
* group[=].rule[=].dependent.name = "requester"
* group[=].rule[=].dependent.variable[0] = "vs0"
* group[=].rule[=].dependent.variable[+] = "tgt"

// simple identity transform for "recorder"
* group[=].rule[+].name = "recorder"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "recorder"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "recorder"

// simple identity transform for "reasonCode"
* group[=].rule[+].name = "reasonCode"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "reasonCode"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "reasonCode"

// simple identity transform for "reasonReference"
* group[=].rule[+].name = "reasonReference"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "reasonReference"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "reasonReference"

// simple identity transform for "note"
* group[=].rule[+].name = "note"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "note"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "note"

// simple identity transform for "dosageInstruction"
* group[=].rule[+].name = "dosageInstruction"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "dosageInstruction"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "dosageInstruction"


* group[=].rule[+].name = "dispenseRequest"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "dispenseRequest"
* group[=].rule[=].source.variable = "vs0"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "dispenseRequest"
* group[=].rule[=].target.variable = "vt0"
* group[=].rule[=].dependent.name = "dispense"
* group[=].rule[=].dependent.variable[0] = "vs0"
* group[=].rule[=].dependent.variable[+] = "vt0"

* group[+].name = "requester"
* group[=].typeMode = #none
* group[=].input[0].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].mode = #target
* group[=].rule.name = "agent"
* group[=].rule.source.context = "src"
* group[=].rule.source.element = "agent"
* group[=].rule.target.context = "tgt"
* group[=].rule.target.element = "requester"


* group[+].name = "dispense"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].mode = #target

* group[=].rule[0].name = "validityPeriod"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "validityPeriod"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "validityPeriod"

* group[=].rule[+].name = "quantity"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "quantity"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "quantity"


* group[=].rule[+].name = "expectedSupplyDuration"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "expectedSupplyDuration"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "expectedSupplyDuration"


* group[=].rule[+].name = "performer"
* group[=].rule[=].source.context = "src"
* group[=].rule[=].source.element = "performer"
* group[=].rule[=].target.context = "tgt"
* group[=].rule[=].target.element = "performer"

* group[+].name = "ExtensionUnsignedIntValue"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].mode = #target
* group[=].rule.name = "value"
* group[=].rule.source.context = "src"
* group[=].rule.source.element = "value"
* group[=].rule.source.variable = "vs"
* group[=].rule.target[0].context = "tgt"
* group[=].rule.target[=].element = "value"
* group[=].rule.target[=].variable = "vt"
* group[=].rule.target[=].transform = #create
* group[=].rule.target[=].parameter.valueString = "unsignedInt"
* group[=].rule.target[+].context = "vt"
* group[=].rule.target[=].element = "value"
* group[=].rule.target[=].transform = #copy
* group[=].rule.target[=].parameter.valueId = "vs"
* group[+].name = "ExtensionDateTimeValue"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].mode = #target
* group[=].rule.name = "value"
* group[=].rule.source.context = "src"
* group[=].rule.source.element = "value"
* group[=].rule.source.variable = "vs"
* group[=].rule.target[0].context = "tgt"
* group[=].rule.target[=].element = "value"
* group[=].rule.target[=].variable = "vt"
* group[=].rule.target[=].transform = #create
* group[=].rule.target[=].parameter.valueString = "dateTime"
* group[=].rule.target[+].context = "vt"
* group[=].rule.target[=].element = "value"
* group[=].rule.target[=].transform = #copy
* group[=].rule.target[=].parameter.valueId = "vs"
* group[+].name = "DispenseRequest"
* group[=].typeMode = #type-and-types
* group[=].input[0].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].mode = #target
* group[=].rule.name = "value"
* group[=].rule.source.context = "src"
* group[=].rule.source.element = "value"
* group[=].rule.source.variable = "vs"
* group[=].rule.target[0].context = "tgt"
* group[=].rule.target[=].element = "numberOfRepeatsAllowed"
* group[=].rule.target[=].variable = "vt"
* group[=].rule.target[=].transform = #create
* group[=].rule.target[=].parameter.valueString = "unsignedInt"
* group[=].rule.target[+].context = "vt"
* group[=].rule.target[=].element = "value"
* group[=].rule.target[=].transform = #copy
* group[=].rule.target[=].parameter.valueId = "vs"