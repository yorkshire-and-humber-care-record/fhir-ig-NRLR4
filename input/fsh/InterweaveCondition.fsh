Profile: InterweaveCondition
Parent: ConditionUvIps
Id: Interweave-Condition
Description: "Interweave Condition resource profile - DRAFT."
Title: "InterweaveCondition"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2025-03-14"

* insert Ruleset-InterweaveBaseFields

* category from Interweave-NRL-ConditionCategory (extensible)
* insert Ruleset-CodingWithSystemCodeDisplay(category)

* code from UKCore-ConditionCode (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(code)

* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)

* insert Ruleset-ReferenceWithReferenceAndDisplay(asserter)