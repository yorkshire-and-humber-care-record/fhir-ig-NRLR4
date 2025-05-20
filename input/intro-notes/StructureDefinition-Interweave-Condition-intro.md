Status: DRAFT: For Review

### **Introduction**
This profile sets out the expectations for the interweave Condition resource. We use the [IPS-Condition](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Condition-uv-ips.html) structure definition as a base to this profile.

This resource is used to record detailed information about a condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern. The condition could be a point in time diagnosis in context of an encounter, it could be an item on the practitioner’s Problem List, or it could be a concern that doesn’t exist on the practitioner’s Problem List.

The condition resource may be used to record a certain health state of a patient which does not normally present a negative outcome, e.g. pregnancy. The condition resource may be used to record a condition following a procedure, such as the condition of Amputee-BKA following an amputation procedure.

While conditions are frequently a result of a clinician's assessment and assertion of a particular aspect of a patient's state of health, conditions can also be expressed by the patient, related person, or any care team member. A clinician may have a concern about a patient condition (e.g. anorexia) that the patient is not concerned about. Likewise, the patient may have a condition (e.g. hair loss) that does not rise to the level of importance such that it belongs on a practitioner’s Problem List.

#### **Additional Notes**

- **Clinical Status** - Essential to explain the status of the condition – eg is it currently active.

   This implies a need to keep this status up-to-date – and ideally this will be done, but in reality might not always be possible. For example in the case of historical records where the patient has moved on. 
   At a minimum however this status must be valid as-at the “assertedDate”. This allows a viewer to make an informed judgement about the likelihood that it is still relevant now.

- **Code** - Essential to describe what the condition actually is. Based on SNOMED codes eg "Sprain of shoulder". We pre-adopt the UK Core code list, which extends the default FHIR list with additional codes covering Social Care and Urgent Care.

- **Subject** - every Condition must be linked to a Patient (not a Group).

- **recordedDate** - vital information about when the condition was noted. Provides essential guidance for a viewer about the recency and thus likely relevance / accuracy of historical records

- **Category** - IPS standards have limited this field to 'Problem List Item' only, so that long term conditions to be managed over time are provided. We also include UK Core code 'Co-morbidity'. The point-in time condition categories such as “Encounter Diagnosis” or “Presenting Complaint” have been excluded. 

- **Verification Status** - The verification status to support the clinical status of the condition. verificationStatus may not be available for all conditions, for example, when a patient has abdominal pain in the ED, there is not likely going to be a verification status.

- **severity** - A subjective assessment of the severity of the condition as evaluated by the clinician/ user.

- **Body Site** - snomed coding for the affected body part. Important to provide if possible and relevant

- **encounter** - a link to the  Encounter when the condition was first asserted. Will not be relevant to all Conditions (eg historical lists), but should be populated if applicable.

- **Asserter** - Required to populate if known. The main purpose would be to provide details of a Practitioner who can give more information about the condition. Therefore it should not be populated with details of purely admin staff who may have keyed in the data. If the asserter is not populated then an unknown Practitioner should be assumed.

   *A further consideration is the possibility of a Condition being asserted by a non-care-professional, for example the Patient themselves or a relative. FHIR caters for this possibiity by allowing the asserter to be a Patient or RelatedPerson, and this option is left open here.*

- **Identifier** - a Local Id should be provided, such that could be quoted if manually getting in touch to find out more

- **Stage** - Additional information that may be useful for relevant conditions eg cancer

- **Evidence** - To some extent duplicates the “code”, but may optionally provide further information about what led to this code being assigned.

- **Note** - Only to be used with caution. Any notes may be shared widely across the region, including being viewed by the patient themselves.

- **Onset and Abatement** - these are important to provide if at all possible. 
   - Onset might be omitted if genuinely not known (eg a long-standing historical condition), but should normally be populated
   - Abatement is obviously only relevant if the condition has actually abated – in which case useful and important to populate
   - Note that in both cases there are a variety of options for how to express this (eg datetime, age, period, etc). These do seem relevant for accurately conveying what is known - with the implication that Data Consumers will need corresponding flexibility in displaying this information.