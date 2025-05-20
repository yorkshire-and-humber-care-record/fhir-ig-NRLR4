Status: DRAFT: For Review

### **Introduction**

This profile sets out the expectations for the interweave medication request resource. We use the [ips-madicationRequest](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-MedicationRequest-uv-ips.html) structure definition as a base to this profile.

We use this resource to represent prescriptions of medication and repeat prescription schedules. Only prescriptions which have been issued should be shared. Issued is the point at when the prescription is either printed and signed, or passed on to the Electronic Prescription Service (EPS). The exception to this rule is repeat prescriptions, which are not themselves issued, but are authorised for instances of them to be issued.

#### **Additional Notes**

- **status** - Repeat prescriptions can have the statuses listed below. For all other prescription types, this should be defaulted to “complete”.

     - active – the repeat prescription is active
     - stopped – the repeat has been stopped, discontinued or cancelled.
     - complete – the repeat has ran its course

- **courseOfTherapyType** – This field records the type of prescription rather than having to derive this information from other fields. further details on how the codes should be used are outlined in the table below:

<table class="grid">
     <tr>
          <th>Code</th>
          <th>Description</th>
     </tr>
     <tr>
          <td>acute</td>
          <td>A medication which the patient is only expected to consume for the duration of the current order and which is not expected to be renewed.</td>
     </tr>
     <tr>
          <td>continuous</td>
          <td>Details of medication which are expected to be issued on a regular basis to treat an ongoing medical condition.</td>
     </tr>
     <tr>
          <td>continuous-repeating-dispensing</td>
          <td>A dispense of medication which is on a repeat prescription i.e. an instance of a repeat prescription.</td>
     </tr>
     <tr>
          <td>delayed prescribing</td>
          <td>The supply of a prescription to a patient in advance of the possible need for it to be dispensed and taken.</td>
     </tr>
</table>

- **intent** – Only prescriptions which have been issued/authorised should be shared. When prescriptionType == “repeat” then intent == “plan” otherwise set to “order”.
GPC use this field as part of a hierarchy implementation of prescriptions. It is felt that for the shared care record, having a linear list of prescriptions, and being able to identify which are ‘repeat prescriptions’ is enough and we do not want to create any complex linkages.

- **category** – Indicates the type of medication request (for example, where the medication is expected to be consumed or administered (i.e. inpatient or outpatient)). We also make this a required binding.

- **medication[x]** - Identifies the medication being requested. This is a link to a resource that represents the medication which may be the details of the medication or simply an attribute carrying a code that identifies the medication from a known list of medications. If only a code is specified, then it needs to be a code for a specific product. In either case, the display field should be populated with the name of the medication which will be a DM&D description.

- **subject** – A reference to the representing the person (patient) to whom the medication will be given. To aid the data consumer, the display element should contain the patient’s name.

- **authoredOn** – This is the date/time that the medication was authorised/prescribed.

- **dosageInstruction** - Dosage instructions for the medication that indicates how the medication is to be used by the patient. The following sub-elements are mandatory.

     * ***dosageInstruction.text*** - Complete dosage instructions as text. The content of this attribute does not include the name or description of the medication. Additional information about administration or preparation of the medication should be included as text.

     * ***dosageInstruction.patientInstruction*** - Instructions in terms that are understood by the patient or consumer.

- **repeatInformation** – This is a useful extension which allows repeat information to be captured. It also include the date when the last repeat was issued. These fields should be populated when the prescription type is “repeat”.

- **substitution** - Indicates whether or not substitution can or should be part of the dispense. In some cases, substitution must happen, in other cases substitution must not happen. This block explains the prescriber's intent.

- **identifier** – We keep this fields usage inline with GPC (GP Connect) specification as follows; If the EPS identifier is present, then the identifier.value is where the EPS Id SHOULD also be added. The codeSystem for this identifier is https://fhir.nhs.uk/Id/prescription-order-item-number and use should  be set to “official”. This field may also be used to provide other types of unique business identifiers.

- **statusReason** –  This should be populated when the status == “stopped” / "on-hold". along with the FHIR valueSet, We also add SNOMED concept, Drug therapy discontinued (274512008), which appears to be a good candidate to use here. We have set this as our “preferred” valueset – and will accept other code lists which have similar representations on a case by case basis.

- **encounter** - For a repeat prescriptions, this is the encounter where the repeat was authorised. For all others this is the encounter where the specific issue was authorised.

- **requester** - The individual or organization that initiated the request and has responsibility for its activation. 

- **reasonCode** – A preferred list of SNOMED codes are used to populate this field which represent Condition/Problem/Diagnosis.

- **note** - Use this field for instructions to a third party e.g. “GP to Continue” noted on a prescription given to an outpatient.

- **dispenseRequest** – Hold suseful information on quantity and expected supply duration. We keep this sub-elements usage inline with GPC (GP Connect) specification

     * ***dispenseRequest.validityPeriod*** - This indicates the validity period of a prescription. It reflects the prescribers' perspective for the validity of the prescription. Dispenses must not be made against the prescription outside of this period. The startDate of the Dispensing Window signifies the earliest date that the prescription can be filled for the first time. If an endDate is not specified then the Prescription is open-ended.

- **performer** - The specified desired performer of the medication treatment (e.g. the performer of the medication administration).

- **performerType** - Indicates the type of performer of the administration of the medication. If specified without indicating a performer, this indicates that the performer must be of the specified type. If specified with a performer then it indicates the requirements of the performer if the designated performer is not available.

- **recorder** –  This field is used to capture the person who entered the order on behalf of another individual for example in the case of a verbal or a telephone order. In pharmacy systems, it is a legal requirement to capture this field, however we have left as optional, as no real-benefit was identified for use within the shared care record.

- **reasonReference** – Option to provide more detailed information via Observation and/or a condition resource which represent the reason for the medication request.

#### **Removed fields**
     
- **priority** – Removed, this field is more likely to be used in a prescribing system rather than the shared care record.

- **supportingInformation** – Removed. This field allows reference to any type of resource which is very open and may cause confusion to the consumer. GPC also do not use this field.

- **basedOn** and **groupIdentifier** – Both removed to avoid unnecessary hierarchy complexity, a simple list of prescriptions in date order will suffice.

- **insurance** - Removed.Not required for the shared care record.

- **priorPrescription** – Removed to avoid any unnecessary complexity.

- **detectedIssue** – Removed. Not required for the shared care record.

- **eventHistory** – Removed. Not required for the shared care record.