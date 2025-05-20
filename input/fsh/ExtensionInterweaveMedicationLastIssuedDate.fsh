Extension: ExtensionInterweaveMedicationLastIssuedDate
Id: Extension-Interweave-MedicationLastIssuedDate
Description: "Indicates the last issued date for specific repeat information of a medication item."
* ^status = #draft
* ^version = "1.0.0"
* ^date = "2024-07-15"

* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* . ..1
* . ^short = "Last issued date for repeat medication."
* . ^definition = "Last issued date for repeat medication."

* value[x] only dateTime