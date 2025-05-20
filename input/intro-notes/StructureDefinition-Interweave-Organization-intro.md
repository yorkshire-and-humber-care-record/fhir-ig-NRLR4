Status: DRAFT: For Review

### Introduction
This profile sets minimum expectations for the Organization resource. We use the [IPS-Organization](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Organization-uv-ips.html) structure definition as a base to this profile.


#### **Organisation coverage and references**
 - A Data Provider MUST offer Organisation FHIR resources to represent its own organisation(s)
 - When referencing an organisation then the "reference" (url of FHIR Resource) and "display" (name) MUST be populated
   - For an external organisation then the url could be either to an ad-hoc Contained Resource, or to the regional master organisation record
   - The "identifier" in the reference MAY be populated with the organisation's ODS Code
  

#### **Additional Notes**

- **Name** - A name associated with the organization.

- **Identifier: ODS Organisation code** - Almost all organisations in both Health and Social Care do have an ODS Code which both identifies the organisation and allows other details to be looked up from the master ODS records. However it is recognised that there may be some circumstances with new or smaller providers where it cannot be populated. The ODS code use https://fhir.nhs.uk/Id/ods-organization-code as system uri.

- **Identifier:Local Id** - As with most other resources, there is the option to include a local identifier. The wide use of ODS codes to uniquely identify an organisation makes it less important to also include a local id. However in cases where an ODS code does not exist then a local id would be present instead to help identify the organisation.

- **Active** - Essential if not active. This resource is generally assumed to be active if no value is provided for the active element. It is however important that both Providers and Consumers can handle appropriatly if "false".

- **Address** - The organisation's address. (Noting that the definitive address can always be looked up given the ODS code)

- **Type** - The type of organisation, as classified by ODS. List of expected codes are available [here](https://fhir.interweavedigital.com/R4/CodeSystem-Interweave-OrganizationType.html)

#### **Removed fields**

 - **Endpoint** - Removed. Technical endpoints are captured elsewhere (ie via the Participant Registry)