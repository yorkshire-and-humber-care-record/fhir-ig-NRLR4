Profile: InterweavePractitioner
Parent: PractitionerUvIps
Id: Interweave-Practitioner
Title: "InterweavePractitioner"
Description: "Interweave Practitioner resource profile - DRAFT."
* ^status = #draft
* ^version = "0.0.1"
* ^date  = "2025-03-14"

* insert Ruleset-InterweaveBaseFields

// Birth Date: removed - unnecessary personal information
////* birthDate ^short = "DISCOURAGED: For the purposes of regional sharing then the birth date is not required - this is unnecessary personal information"
* birthDate 0..0

// Photo: At the present time then photos are NOT required. Excluded to avoid any complexities with sharing large image files
* photo 0..0