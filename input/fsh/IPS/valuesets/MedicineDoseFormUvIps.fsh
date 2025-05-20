ValueSet: MedicineDoseFormUvIps
Id: medicine-doseform
Title: "Medicine Doseform - IPS"
Description: """EDQM (European Directorate for the Quality of Medicines and Healthcare) Dose Form codes.  This Value Set includes all the EDQM Standard Terms having:  
[Concept Status] = ‘Current’ AND  
[Concept Class] IN (‘PDF’, ‘CMT’, ‘CDF’, ‘PFT') AND  
[Domain] = 'Human and Veterinary'  

PDF = 'Pharmaceutical dose form'; CMT = 'Combined terms'; CDF = 'Combined pharmaceutical dose form'; PFT = 'Patient Friendly'"""
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^identifier.use = #official
* ^identifier.system = "http://art-decor.org/ns/oids/vs"
* ^identifier.value = "2.16.840.1.113883.11.22.25"
* ^version = "2.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International / Patient Care"
* ^contact.name = "HL7 International / Patient Care"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^immutable = false
* ^copyright = "This artifact includes content from EDQM Standard Terms. EDQM Standard Terms are copyright European Directorate for the Quality of Medicines. Terms & Conditions in https://www.edqm.eu/en/standard-terms-database"
* include codes from system $standardterms
    where status = "Current" and
    class = "PDF" and
    domain = "Human and Veterinary"
* include codes from system $standardterms
    where status = "Current" and
    class = "CMT" and
    domain = "Human and Veterinary"
* include codes from system $standardterms
    where status = "Current" and
    class = "CDF" and
    domain = "Human and Veterinary"
* include codes from system $standardterms
    where status = "Current" and
    class = "PFT" and
    domain = "Human and Veterinary"

* ^url = "http://hl7.org/fhir/uv/ips/ValueSet/medicine-doseform"