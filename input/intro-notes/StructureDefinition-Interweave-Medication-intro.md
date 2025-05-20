Status: DRAFT: For Review

### **Introduction**

This profile sets out the expectations for the Interweave medication resource. We use the [IPS-madication](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Medication-uv-ips.html) structure definition as a base to this profile.

This resource is primarily used for the identification and definition of a medication for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use.

The Medication resource allows for medications to be characterized by the form of the drug. For shared care, the importance needs to be placed on “What” the medication is and its form. We therefore have defined a very minimal dataset and removed all unnecessary fields.

#### **Additional Notes**

- **code** – A code that specify this medication, or a textual description if no code is available. The NHS dictionary of medicines and devices (dm+d) is the NHS standard for identifying medicines and medical devices used by the NHS.

- **form** – Describes the form of the item. Powder; tablets; capsule. sThis field is recommended by PRSB. Useful information if it is available. When Medication is referenced from MedicationRequest, this is the ordered form.