Status: Active: DRAFT: For Review

### **Introduction**
This profile sets out the expectations for the interweave allergy intolerance resource. We use the [IPS-AllergyIntolerance](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-AllergyIntolerance-uv-ips.html) structure definition as a base to this profile.

#### **Additional Notes**

- **verificationStatus** – Specifies whether the allergy/intolerance is confirmed or unconfirmed.

- **type** – Specifies whether an allergy or intolerance is being modelled.

- **code** - Code for an allergy or intolerance statement (either a positive or a negated/excluded statement). This may be a code for a substance or pharmaceutical product that is considered to be responsible for the adverse reaction risk (e.g., "Latex"), an allergy or intolerance condition (e.g., "Latex allergy"), or a negated/excluded code for a specific substance or class (e.g., "No latex allergy") or a general or categorical negated statement (e.g., "No known allergy", "No known drug allergies"). 

    We stipulate a preferred binding to the SNOMED / dm+d concepts below, with the understanding that local code sets are widely in use and mapping from local codes to SNOMED / dm+d maybe troublesome. However, every effort should be made to map, and where it is deemed unachievable, you will need to contact interweave team to gain explicit permission to use your own local code set: 

    - A set of codes from the following dm+d (dictionary of medicines and devices) concept classes that define a medication or medication ingredient that the patient has an allergy or intolerance to:

        * VTM – Virtual Therapeutic Moiety
        * VMP – Virtual Medicinal Product
        * AMP – Actual Medicinal Product
        * Ingredient

    - A set of codes from the SNOMED CT UK coding system that:

        * identify a substance (105590001) or pharmaceutical / biologic product (373873005) that the patient has an allergy or intolerance to 
        * state that the patient has no known allergy (716186003) 
        * provide a degrade of information about a drug (196461000000101) or non-drug allergy (196471000000108).

    - Where no dm+d or SNOMED CT coded information is available, a specific code from the nullFlavor Code System can be used instead to indicate this.

- **patient** – The person who has the allergy/intolerance.

- **recordedDate** – This should be the date that the allergy/intolerance was recorded. The date that the allergy/intolerance was identified should be captured in the onset[x] field.

- **Onset[x]** – When the allergy or intolerance was identified. The Estimated or actual date, date-time, or age when allergy or intolerance was identified. We have removed the Range and String data types from this field as they were deemed unnecessary, and it reduced the complexity of processing multiple data types for the data consumer.

- **asserter** – The source of the information about the allergy. This can be a reference to a patient, related person, or a practitioner.

- **reaction** – This field can be used to present the history of known reactions. The reaction field has a number of important child fields that should/must be provided as below:

    - **manifestation** – This is a mandatory field when providing the reaction. It is used to record the signs/symptoms of the reaction.

    - **onset** – this is a must support field which gives the date/time of when the reaction occurred.

	- **severity** – another important must support field which details the severity of the reaction event.

    - **substance** – This is an optional field, but it is important to note its usage. This is the specific substance or pharmaceutical product considered to be responsible for the event. e.g. If a patient is allergic to egg, if they are given a vaccine containing egg, which initiates a reaction, it is the vaccine that should be recorded here.

- **clinicalStatus** – Defines whether the allergy or intolerance is active, inactive or resolved.

- **extension:abatement** - The date or estimated date that the allergy or intolerance resolved.

- **category** – The classification of the substance or pharmaceutical product that is considered to be responsible for the adverse reaction. Please note that not all clinical systems currently capture this information.

- **criticality** – Used to record the severity of the reaction.

- **identifier** – Usually a Local Id that is provided which can be quoted if manually getting in touch to find out more information. In most Interweave profiles this is a must support field, however, it is more likely that a patient identifier(NHS number) would be quoted when wanting to find out more about a persons allergies, and therefore this is marked as optional.

- **encounter** – An optional link to the encounter where the allergy or intolerance was asserted.

- **evidence** – Option to provide a reference to a diagnostic report which confirms the presence of an allergy or an intolerance.

- **recorder**: Option to provide the practitioner or patient who recorded the adverse reaction.

- **note** – Additional information about the allergy/intolerance, which is not captured elsewhere, can be entered within the notes section. For example, this could be information about how to care for an individual after exposure to a reactive substance. Care must be taken when populating this field, and only information which is deemed suitable for use within the shared care record should be populated here.

- **last Occurrence** – It is used to record the date/time of the last known occurrence of a reaction. However, it is deemed that this could be misleading unless records are routinely checked and kept up to date.