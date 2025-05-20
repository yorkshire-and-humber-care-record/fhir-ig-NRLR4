Status: DRAFT: For Review

### Introduction
This profile sets minimum expectations for the Practitioner resource. We use the [practitioner](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Practitioner-uv-ips.html) structure definition as a base to this profile.


This Resource will give the consumer the ability to see information on the person who is directly or indirectly involved in the provisioning of healthcare / social support.

The Practitioner Resource provides information about a person formally involved in the care of a patient on behalf of a healthcare facility. Practitioners include but are not limited to physicians, nurses, pharmacists, therapists, technologists, and social workers.

Please note, this resource could be classed as reference resource and is referenced within multiple other resources as a linked resoure, as such there would not be a specific panel for this resource within the UI.

#### **Practitioner coverage and references**

 - A Data Provider MUST offer Practitioner FHIR resources to represent its own practitioners
 - When referencing a Practitioner then "reference" (url to a FHIR Resource) and "display" (name), MUST be populated
   - For an external practitioner then the url could point to an ad-hoc Contained Resource
   - In addition the "identifier" in the reference MAY also be populated. This is not as straightforward as for Organisations (where the ODS Code is widely accepted), but most practitioners will have a professional id which could be populated to more definitively identify them.

#### **Additional Notes**

- **Name** (Always populated) - The name that a Practitioner is known by and is essential to indicate who the practitioner is. As part of the standard Interweave Implementation guide we have restricted this field to single name only.  Where there are multiple, this would be the name that the practitioner is usually known as. As a minimum the Family Name is always populated. (Note that in addition, Given Name, Prefix, and Suffix are considered "Must Support") 

- **Identifier**: Populated to formally identify the practitioner. UKCore does not have any specific Guidance on range of possible identifiers, as part of Interweave guidance we have added slices for some of the known identifiers, these include:

    - https://fhir.nhs.uk/Id/sds-user-id (SDS User Id)
    - https://fhir.nhs.uk/Id/sds-role-profile-id (SDS Role Profile Id)
    - https://fhir.hl7.org.uk/id/gmp-number (General Medical Practitioner)
    - https://fhir.hl7.org.uk/id/gmc-number (General Medical Council / Consultant Code)
    - https://fhir.hl7.org.uk/id/nmc-number (Nursing and Midwifery Council)
    - https://fhir.hl7.org.uk/id/gphc-number (General Pharmaceutical Council Code)
    - https://fhir.hl7.org.uk/id/hcpc-number (Health and Care Professional Council Code)

    Or as a last resort if no other professional identifier:
    - https://fhir.interweavedigital.nhs.uk/Id/local-practitioner-identifier (Local identifier)

- **Active** - Essential if not active. This resource is generally assumed to be active if no value is provided for the active element. It is however important that both Providers and Consumers can handle appropriatly if "false".

#### **Removed fields**

- **Birth Date** - Removed. For the purposes of regional sharing then the birth date could be considered as unnecessary personal information and is not required.

- **Photo** - Removed. At the present time then photos are not required. Excluded to avoid any complexities with sharing large image files.