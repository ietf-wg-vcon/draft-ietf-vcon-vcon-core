---
title: "The JSON format for vCon - Conversation Data Container"
abbrev: "JSON vCon"
category: std

docname: draft-ietf-vcon-vcon-core-latest

submissiontype: IETF  # also: "independent", "IAB", or "IRTF"
number:
date:
consensus: true
v: 3
area: "Applications and Real-Time"
workgroup: "Virtualized Conversations"
keyword:
 - conversation
 - vcon
 - CDR
 - call detail record
 - call meta data
 - call recording
 - email thread
 - text conversation
 - video recording
 - video conference
 - conference recording
venue:
  group: "Virtualized Conversations"
  type: "Working Group"
  mail: "vcon@ietf.org"
  arch: "https://mailarchive.ietf.org/arch/browse/vcon/"
  github: "ietf-wg-vcon/draft-ietf-vcon-vcon-core"
  latest: "https://ietf-wg-vcon.github.io/draft-ietf-vcon-vcon-core/draft-ietf-vcon-vcon-core.html"

author:
 -
    fullname: Daniel G Petrie
    organization: SIPez LLC
    email: dan.ietf@sipez.com

normative:

  RFC3339:

  DID:
    target: https://www.w3.org/TR/did-core/
    title: "Decentralized Identifiers (DIDs) v1.0"
    author:
      org: W3C
    date: July 2022

  GEOPRIV: RFC4119

  GZIP: RFC1952

  HTTPS: RFC9110

  IANA-COSE-ALG:
    target: <https://www.iana.org/assignments/cose/cose.xhtml>
    title: "COSE Algorithms"

  JMAP: RFC8620

  JSON: RFC8259

  JWS: RFC7515

  JWE: RFC7516

  JWK: RFC7517

  MAILTO: RFC6068

  MEDIATYPE: RFC6838

  MIME: RFC2045

  PASSporT: RFC8225

  PIDF-LO: RFC5491

  SESSION-ID: RFC7989

  SMTP: RFC5321

  TEL: RFC3966

  UUID: I-D.draft-peabody-dispatch-new-uuid-format

informative:

  CBOR: RFC8949

  CDDL: RFC8610

  ISOBMFF:
    target: https://www.iso.org/standard/83102.html
    title: "Information technology -- Coding of audio-visual objects -- Part 12: ISO base media file format"
    refcontent: ISO/IEC 14496-12:2022
    date: January 2022
    org: International Organization for Standardization

  JWT: RFC7519

  SHA-512: RFC6234

  SIP: RFC3261

  SIP-XFER: RFC5589

  STIR-PASS: I-D.draft-ietf-stir-passport-rcd

  vCard: RFC7095

  vCon-white-paper:
    target: https://github.com/vcon-dev/vcon/blob/main/docs/vCons_%20an%20Open%20Standard%20for%20Conversation%20Data.pdf
    title: "vCon: an Open Standard for Conversation Data"
    author:
      -
        ins: T. Howe
        name: Thomas Howe
        org: STROLID Inc.
      -
        ins: D. Petrie
        name: Daniel Petrie
        org: SIPez LLC
      -
        ins: M. Lieberman
        name: Mitch Lieberman
        org: Conversational X
      -
        ins: A. Quayle
        name: Alan Quayle
        org: TADHack and TADSummit

  CDR:
    target: https://www.itu.int/rec/T-REC-Q.825
    title: "Recommendation Q.825: Specification of TMN applications at the Q3 interface: Call detail recording"
    author:
      org: ITU
      date: 1998

  PY-VCON:
    target: https://github.com/py-vcon/py-vcon
    title: "Python open source vCon command line interface, library and workflow server"

--- abstract

vCon is a standardized framework for the exchange of conversational data.
Conversations, which may involve one or more participants, occur across a wide variety of modes and application platforms.
This document defines a JSON format for representing conversational data, encompassing metadata, conversation media, related documents, and analysis.
The goal of this standard is to provide an abstracted, platform-independent data format for conversations, regardless of the mode or application platform.
By doing so, it facilitates the integration and seamless exchange of conversational data across application platforms, enterprises, and trust boundaries.

--- middle

# Introduction

This document specifies the **vCon** (Conversational Data Exchange) standard, which defines a unified format for representing and exchanging conversational data across different communication platforms and modalities.
The goal of **vCon** is to provide a standardized, platform-agnostic structure for capturing and sharing conversational information, allowing for seamless integration between systems, enterprises, and trust boundaries.

##  Purpose of vCon

The **vCon** standard enables the abstraction of conversation data, making it easier to integrate communication platforms with external services, including post-conversation analysis tools, customer support systems, and business intelligence platforms.
By defining a consistent data format, **vCon** ensures interoperability across various platforms, regardless of the communication mode - whether text, audio, video, or other formats.

The **vCon** format captures the essential components of a conversation, including metadata, media content, related documents, and post-conversation analysis.
This abstraction simplifies data exchange, apply AI-driven analysis, as well as model training and testing.

## Extending the vCon Schema

In addition to the core **vCon** schema, this document provides a framework for extending the **vCon** format to support specialized use cases.
The **vCon** schema can be customized to address the needs of specific industries or applications, such as:

- **Contact Centers**: Adding specific metadata related to customer service interactions, case management, and priority tracking.
- **Messaging Platforms**: Supporting the integration of different message formats, including SMS, email, and chat, group concepts, along with platform-specific information.
- **ECRIT (Emergency Communication) Centers**: Extending the schema to capture critical data such as location, urgency, and incident details for emergency communications.

The ability to add extensions ensure that **vCon** remains flexible and adaptable, enabling its use in a wide range of domains while maintaining a consistent format for data exchange.

## Benefits of vCon

The **vCon** standard offers several key benefits:

- **Interoperability**: A consistent data format for conversational data facilitates integration across diverse platforms and systems.
- **AI-Driven Analysis**: By capturing data in a structured format, **vCon** enables the application of AI analysis such as sentiment analysis, categorization, transcription, and decision-making.
- **Data Automation**: The **vCon** format simplifies the automation of processes involving conversational data, improving efficiency and reducing the risk of errors.
- **Enterprise Integration**: The ability to integrate conversation data with third-party tools and services enhances the value of conversations by providing deeper insights and driving business decisions.

### 1.4. **Scope of the Document**

This document defines the core structure and schema for **vCon** as a JSON format.
Detailed specifications for the various parameters and the extension framework will be provided in subsequent sections.
The primary focus is on creating a flexible, extensible standard for the exchange of conversational data that can be easily adopted across industries, use cases, and communication technologies.

# Conventions and Definitions

{::boilerplate bcp14-tagged}

## Terminology

* analysis - analysis, transformations, summary, sentiment, or translation typically of the dialog data

* conversation - an exchange of communication using text, audio or video medium between at least one human and one or more bots or humans

* de-identification - removal of all information that could identify a party in a conversation.  This includes PII as well as audio and video recordings.  Voice recordings might be re-vocalized with a different speaker.

* dialog - the captured conversation in its original form (e.g. text, audio or video)

* encrypted form - encrypted JWE document with the JWS signed vCon form contained in the ciphertext

* file - a data block either included or referenced in a vCon

* object - JSON object containing key and value pairs

* parameter - JSON key and value pair

* party - an observer or participant to the conversation, either passive or active

* payload - the contents or bytes that make up a file

* PII - Personal Identifiable Information

* PII masked - may include voice recordings, but PII is removed from transcripts and recordings (audio and video).

* vCon - container for conversational information

* vCon instance - a vCon populated with data for a specific conversation

* vCon instance version - a single version of an instance of a conversation, which may be modified to redact or append additional information  forming a subsequent vCon instance version

* vCon syntax version - the version for the data syntax used for form a vCon

* signed form - JWS signed document with the unsigned vCon form contained in the payload

## JSON Notation

For the ease of documentation, the convention for [JSON] notation used in this document is copied from sections 1.1-1.5 of [JMAP].

* Date - A string that MUST have the form of an [RFC3339] date string as defined for the Date type in section 1.4 of [JMAP].

* "String" - a JSON string type

* "UnsignedInt" - a positive JSON integer as defined in section 1.3 of [JMAP].

* "UnsignedFloat" - a positive JSON floating point number containing a decimal point as defined in section 6 of [JSON].

* "Mediatype" - A "String" value that MUST be of the following form as defined in section 5.1 of [MIME]:
    type "/" subtype

* "ContentHash" - The string token value is generated using the same approach used in section 6 of [STIR-PASS].
The relevant text is copied here for convenience and to remove the normative dependency.
The hash string token values are formed from combining a string that
defines the crypto algorithm used to generate the digest along with the Base64Url Encoded value of the
SHA-512 hash, as defined in section 6.3 and 6.4 [SHA-512], of the body of the content at the given url.
The hash algorithm is identified by "sha512".
SHA-512 is part of the SHA-2 set of cryptographic hash functions [SHA-512] defined by the US National
Institute of Standards and Technology (NIST).
Implementations MAY support additional recommended hash algorithms in [IANA-COSE-ALG]; that is, the hash
algorithm has "Yes" in the "Recommended" column of the IANA registry.
Hash algorithm identifiers MUST use only lowercase letters, and they MUST NOT contain hyphen characters.
The character following the algorithm string MUST be a hyphen character, "-", or ASCII 45.
The subsequent characters are the Base64Url encoded (see Section 2 [JWS]) digest of a canonicalized and concatenated string
or binary data based on the JSON pointer referenced elements of "rcd" claim or the URI referenced content
contained in the claim.


* "A\[\]" and array of values of type A.

All parameters are assumed to be mandatory unless other wise noted.

Objects or arrays with no or null values MAY be excluded from the vCon.

## Inline Files

Objects that contain a file or data inline (i.e. within the vCon) MUST have the parameters: body and encoding.
JSON does not support binary data values.
For this reason inline files MUST be Base64url (see Section 2 [JWS]) encoded to be included as a valid JSON string value if they are not already valid JSON strings.

### body

The body parameter contains the payload of the file to be included inline.
Depending upon the data in the file, it may require encoding to be used as a valid JSON string value.

* body: "String"

### encoding

The encoding parameter describes the type of encoding that was performed on the string value of the body parameter.

* encoding: "String"

This MUST be one of the following strings:

* "base64url": The payload of the file has been Base64Url encoded and provided as the string value of the body parameter.

* "json": The value of the body string is a JSON object.

* "none": The payload of the file is a valid JSON string and can be included without modification as the string value to the body parameter.

## Externally Referenced Files

Files and data stored externally from the vCon MUST be "signed" to ensure that they have not been modified.
Objects that refer to a file which is externally stored from the vCon MUST have the parameters: url,
content_hash.
These parameters are defined in the following subsections.
The values and format of the hashes are defined in [](#json-notation) type: ContentHash.
The use of [SHA-512] hash for ensuring that the externally referenced data or file has not been modified, is defined in this document.
Other methods of ensuring integrity may be added in the future.

### url

The url value contains the [HTTPS] URL where the externally referenced file is stored.
HTTPS MUST be used for retrieval to protect the privacy of the contents of the file.

* url: "String"


### content_hash

The integrity of externally referenced files are protected using a hash of the external content.
The algorithm and hash value are contained in the content_hash parameter.
The value of the content_hash can be a single token or an array of tokens if multiple hash
algorithms are desired to be provided.
The SHA-512 [SHA-512] algorithm MUST be supported.
Other algorithms MAY be included.
The algorithm used for signing the externally referenced file is defined in section 6.3 and 6.4 of [SHA-512].

* content_hash: "ContentHash" \| "ContentHash\[\]"


## Extending vCon

vCon provides a means to extend the schema defined in this document.
A vCon extension can define new parameters at any level of the schema.
It can also redefine the semantics of or deprecate existing parameters.
To do so, a new extension definition MUST do the following:
* Define a new [extensions](#extensions) token value and register it with IANA [(see examples)](#vcon-json-registry))
* Define the new parameter(s), their meaning, value types and register them with IANA
* Define the new semantics and values for change parameters
* List deprecated parameters, what should be used in its stead and migration approaches
* Use snake case naming convention for parameter names (as opposed to camel case)

Extensions to the vCon schema can be classified into two categories:

* **Compatible**: These extensions introduce additional data or fields without altering the meaning or structure of existing elements. Implementations that do not recognize these extensions can safely ignore them while maintaining valid processing of the vCon.

* **Incompatible**: These extensions modify existing semantics or schema definitions in ways that render a vCon incompatible with implementations that do not support the extension. Interpreting such a vCon correctly requires explicit awareness of the extension.

Wherever feasible, extensions **SHOULD** be designed as **Compatible** to preserve compatibility with existing implementations.

However, when disruptive extensions are necessary, the names of all such extensions **MUST** be listed in the [`must_support`](#must_support) parameter of the vCon. This allows implementations to determine whether they are capable of processing the vCon safely and accurately.

Implementations that encounter a vCon containing a disruptive extension listed in the must_support parameter, but do not support that extension, **MUST NOT** process the vCon except to reject it or notify the user.

# vCon JSON Object

The JSON form of a vCon is contained in a JSON object in one of three forms:

* unsigned
* signed
* encrypted

The unsigned form of the vCon has a single top level object.
This top level vCon object is also contained as described in the [signed](#signed-form-of-vcon-object) and [encrypted](#encrypted-form-of-vcon-object) forms of the vCon.
The selection of the JSON format enables interchange between application and lower layers of the network stack, critical for enablement of analysis of conversations.
The signed form of vCon is defined in [](#signed-form-of-vcon-object) using [JWE] to provide integrity and proof of the conversation data.
The encrypted form of vCon is defined in [](#encrypted-form-of-vcon-object) to provide complete privacy of the conversational data.
Partial privacy or data minimization can be provide for a vCon using the [redacted](#redacted) construct.

# Unsigned Form of vCon Object

The unsigned form of the top level vCon object is necessary as in many cases, a vCon will be partially constructed and in process as conversation data is collected.
This may change while the conversation is in progress or on-going.
The vCon may start with only meta data and party information, then progress to contain dialog information.
It may then get analysis added or it could be passed to another security domain for analysis.

A vCon may be constructed across several security domains.
When a vCon is to be exported from one security domain to another, it SHOULD be signed or encyrpted by the domain that constructed it.
The subsequent domain may have need to redact or append data to the vCon.
Alternatively the originating domain may want to redact the vCon before providing it to an other domain.
The second or subsequent domain, MAY modify the prior vCon instance version and when complete or exporting to another security domain, it SHOULD sign or encrypt the new vCon instance version.
The new vCon instance version SHOULD refer to the prior vCon instance version via the redacted ([redacted](#redacted)) or appended ([appended](#appended)) parameters.

## vCon JSON Object Keys and Values

The keys and values for the top level vCon JSON object are defined in the following subsections.

### vcon

The the value of vcon parameter contains the syntactic version of the JSON format used in the vCon.

* vcon: "String"

For syntax defined in this document, the string MUST have the value: "0.3.0"

### uuid

The [UUID] for the vCon is used to refer to it when privacy or security may not allow for inclusion or URL
reference to a vCon.
The UUID MUST be globally unique.

* uuid: "String"

The value of the string SHOULD be generated using the version 8 UUID defined in [UUID] which is generated
identically to a version 7 UUID with the exception that:

  * rand_b/custom_c is generated from the high 62 bits of the SHA-1 hash of the FQHN string

  * the variant and version fields are set as described for version 8 UUID

The DNS name string used in generating the uuid value SHOULD be the same FQHN, or a subdomain to allow
for more distributed generation of UUIDs, as would used in the signing certificate as they are the same
domains of uniqueness.

### extensions

The vCon schema can be extended through the definition of new extensions.
The extensions parameter SHOULD contain the list of names of all vCon extensions for any parameters used that are not defined in this core vCon schema document.

* extensions: "String\[\]"

### must_support {#must_support}

Implementations that include extensions which are incompatible with the core vCon schema MUST list the names of those extensions in the must_support parameter.
A vCon that includes a must_support parameter indicates that correct interpretation of the vCon requires explicit support for the listed extensions.
An implementation that does not recognize or support the extensions listed in the must_support parameter MUST NOT attempt to process or operate on the vCon, except to reject it or report unsupported content.

* must_support: "String\[\]"

### created_at {#created_at}

The created_at parameter provides the creation time of this vcon, which MUST be present, and should not
changed once the vcon object is created.

* created_at: "Date"

### updated_at {#updated_at}

The updated_at parameter provides the last modified time of this vcon, which MAY be present.
For unsigned forms, the updated_at of the vcon object SHOULD be updated as it is modified.
For signed forms of the vCon object, the updated_at contains the time when this vcon was last signed.
Future updates MUST first set the updated_at to the new signing time as the vcon object is signed again.

* updated_at: "Date"

### subject

The subject or the topic of the conversation is provided in the subject parameter.
This parameter is optional as not all conversations have a defined subject.
Email threads and prescheduled calls and video conferences typically have a subject which can be captured here.
The subject may also be derived from analysis of the dialog.

* subject: "String" (optional)

The string value of the subject parameter is a free formed JSON string with no constrained syntax.

### redacted

A redacted vCon SHOULD provide a reference to the unredacted or prior, less redacted, vCon instance version of itself.
The purpose of the [Redacted Object](#redacted-object) is to provide the reference to the unredacted or less redacted version of the vCon from which this vCon was derived.
For privacy reasons, it may be necessary to redact a vCon to construct another vCon without the PII.
This allows the non-PII portion of the vCon to still be analyzed or used in a broader scope.
The [Redacted Object](#redacted-object) SHOULD contain the uuid parameter and MAY include the url, content_hash parameters (see [Externally Referenced Files](#externally-referenced-files)).
If a reference to the unredacted vCon is provided in the url parameter, the access to that URL MUST
be restricted to only those who should be allowed to see the identity or PII for the redacted vCon.

The method(s) for redaction of text, audio and video can be done with existing post processing of media.
The method of redaction is out of scope of this document.
The assurance of the accuracy of the redaction is made by the entity that creates the redaction which
SHOULD sign the redacted version of the vCon.

All data and parameters in the prior, less redacted, vCon instance version are either:

* Removed entirely in the redacted version
* Copied and partially redacted
* Copied as is

Data which is to be completely removed from the redacted version, that is contained in a JSON array in
the unredacted vCon, SHOULD create an empty placeholder such that object array indices do not change for
the rest of the elements of the array.

* redacted: "Redacted" (optional, mutually exclusive with appended and group parameters)

#### Redacted Object

A Redacted Object contains the following parameters:

* uuid: "String"

The value contains the [uuid string value](#uuid) of the unredacted/prior vCon instance version.
The absence of a value for uuid indicates that the less redacted version of this vCon is not available or
does not exist.

* type: "String"

The value of the redacted type parameter is used to indicate the type of redaction that was performed on
this vCon relative to the less redacted version referenced by the redacted uuid parameter.
This should indicate the type of information that was redacted.

The the location of the referenced vCon MAY be provided as defined in [Externally Referenced Files](#externally-referenced-files) by including url  and content_hash.
content_hash MUST be included if url is provided.

* url: "String"
* content_hash: "ContentHash" \| "ContentHash\[\]"

The following diagram illustrates an example partial JSON object tree for a redacted vCon.
The top level object is a JWS signed vCon which contains a vCon in the unsigned form in the payload
parameter.
The second level object is the redacted vcon which refers to the encrypted unredacted vCon in it's
redacted parameter.
Note that the redacted vCon references the JWE encrypted vCon by UUID and may reference it by URL or
direct inclusion.
The JWE encrypted unredacted vCon contains the signed version of the unredacted vCon in the ciphertext
parameter.
The signed unredacted vCon contains the unredacted vCon in the unsigned form in it's payload parameter.

~~~
{::include redacted-vcon-tree.ans}
~~~
{: #diagram1 title="redacted vCon object tree"}

### appended

TODO: should the name be appended, updated or amended?

A signed or encrypted vCon cannot be modified without invalidating it.
In these cases, to allow for adding of additional information a new vCon instance version MUST be created.
The prior vCon instance version is referenced by the [Appended Object](#appended-object).
The vCon with appended or amended data contains all of the data that is in the referenced vCon with the exception of data that is amended.
That is to say that the newer version of the vCon is a deep copy of the prior version with the amended and additional data added to it.

The prior vCon instance version SHOULD be referenced via the uuid of the prior vCon instance version, and MAY include the url and content_hash parameters (see [Externally Referenced Files](#externally-referenced-files)).

* appended: "Appended" (optional, mutually exclusive with redacted and group parameters)

#### Appended Object

The Appended Object contains the following parameters:

* uuid: "String" (optional if inline or external reference provided)

The value contains the [uuid string value](#uuid) of the unredacted/original vCon instance version.

The location of the referenced vCon MAY be provided, as defined in [Externally Referenced Files](#externally-referenced-files) by including url and content_hash.  content_hash MUST be provided if url is provided.

* url: "String"
* content_hash: "ContentHash" \| "ContentHash\[\]"

The following figure illustrates an example partial JSON object tree for an appended vCon.
The top level object is the JWS signed appended vCon which contains the unsigned form of the vCon in it's payload parameter.
The second level object is the appended vCon with additional conversational data (e.g. analysis data).
It refers to its original parent (or prior vCon instance version) of the vCon in its appended parameter.
Note: the appended parameter may refer to the prior version of the vCon via URL.
The appended vCon in this figure refers to the JWS signed version of the vCon, which in turn contains the original vCon in unsigned form in its payload parameter.

~~~
{::include appended-vcon-tree.ans}
~~~
{: #diagram2 title="appended vCon object tree"}

### group Objects Array

The scope of a conversation is defined by the observer.
It may be any of the following in this non-exhaustive list:

* a quick text exchange

* a simple 2-way call

* an evolving group chat

* a class lecture and question and answer session

* a web chat, evolving to a 2 way call, progressing to a transferred 3-way call transitioning to a video conference

* a series of weekly status calls

In support of these constructs, it may be desirable to aggregate a group of vCons as opposed to including
all of the dialog in a single vCon.
The conversations may be over heterogeneous or homogeneous medium.
A vCon MAY aggregated a group of vCon instances in the group array, using a Group Object for each vCon instance.

* group: "Group\[\]" (optional, mutually exclusive with redacted and appended parameters)

The group array contains a [Group Object](#group-object) for each vCon.

### parties Objects Array

The name, identity or contact information of all of the parties involved with the conversation are included in the parties object array.
Whether the parties were observers, passive or active participants in the conversation, they each are included as a Party Object in the parties array.

TODO: Should this be a object not an array to make it easier to append parties (i.e. indices of append vCons change when appended)?

* parties: "Party\[\]"

The value of the parties parameter is an array of [Party Objects](#party-object).

### dialog Objects Array

The actual conversation which occurred over text, audio or video that was captured, is contained in the dialog Objects Array.

* dialog: "Dialog\[\]" (optional)

The value of the dialog parameter is an array of [Dialog Objects](#dialog-object).
It should be noted that the Dialog Objects may not be sorted in chronological order.
It is the applications responsibility to sort dialog and transcriptions if they are needed in chronological order.

### analysis Objects Array

Analysis, which is performed on the conversational data, is stored in the analysis Objects array.

* analysis: "Analysis\[\]" (optional)

The value of the analysis parameter is an array of [Analysis Objects](#analysis-object).

### attachments Objects Array

Ancillary documents, discussed, presented, referenced or related to the conversation may be stored in the attachments array.

* attachments: "Attachment\[\]" (optional)

The value of the attachments parameter is an array of [Attachment Objects](#attachment-object).

## Party Object

### tel

If the tel URL for the party is known, it can be included in the tel parameter.

* tel: "String" (optional)

The value of the tel parameter SHOULD be a valid [TEL] URL.  The URL scheme prefix (i.e. "tel:") is optional.


### sip

The [SIP] URL for the party can be provided in the sip parameter.

* sip: "String" (optional)

  The value of the sip parameter is the addr-spec as defined in section 25.1 of [SIP].

### stir

If the STIR [PASSporT] was provided to identify the party, the PASSporT can be included in the stir
parameter for the party.

* stir: "String" (optional)

The string value of the stir parameter contains the [PASSporT] in the JWS Compact Serialization form.

### mailto

If the mailto URL is known for the party, it can be included in the mailto parameter.

* mailto: "String" (optional)

The value of the mailto parameter is a string of the format of a valid [MAILTO] URL.  The URL scheme
prefix (i.e. "mailto:") is optional.

### name

If the party's name is known, it can be included in the name parameter.

* name: "String" (optional)

The string value of the name parameter is a free form JSON string in which part or all of the party's name can be included.

### did

If a Decentralized Identifier [DID] is known for the party, it can be included in the did parameter.

* did: "String" (optional)

The value of the did parameter MUST be a valid DID URI that enables verifiable, decentralized digital identity for the party.
DIDs are designed to be decoupled from centralized registries and identity providers, allowing the controller of the DID to prove control without requiring permission from other parties.
The DID can refer to any subject (person, organization, thing, etc.) as determined by the controller of the DID.

### validation

Proof of authorization of the communication channel through STIR, login or possession of a device, is often not sufficient proof of the identity of the person at the other end of the communications channel.
It is common in call centers to validate the identity of the person on the communication channel through verification of some sort of personal identification information.
The methods used, often varies with the situation and is business practices specific.
The purpose of the validation parameter, is to allow the validator to save a label or token which identifies the method of identity validation used to identify the person at the other end of the communication channel.
For confidentially reasons, it SHOULD NOT contain the data used to validate the name.
However it MAY name the data used to validate the name (e.g. "SSN", "DOB", "user ID and password").
It is up to the domain creating the vCon to define the set of tokens or values to be used for the validation parameter.

* validation: "String" (SHOULD be provided if name parameter is provided)

The value of the validation string MAY be "none" or enterprise or domain defined token or string values.

### jCard

TODO: Do we want to support including a jCard for the party?

### gmlpos

If the geolocation of the party is known, it can be added in the gmlpos parameter.
The gmlpos parameter contains the latitude and longitude of the location of the party at the time of the conversation start.

* gmlpos: "String" (optional)

The gmlpos parameter value contains a string of the same format as the gml:pos element defined in section 3.2 of the [PIDF-LO] PIDF.

### civicaddress

The the civicaddress parameter value contains a Civicaddress Object which is optional and contains civic address information about the location for the party.

* civicaddress: "Civicaddress" (optional)

The Civicaddress Object MAY contain any or all of the following parameters: country, a1, a2, a3, a4, a5, a6, prd, pod, sts, hno, hns, lmk, loc, flr, nam, pc as defined in section 2.2.1 of [GEOPRIV].
The values of all of these parameters are of type String.
Note that the parameter names MUST be in lower case when contained in the Civicaddress Object even though they are in upper case in [GEOPRIV].

* country: "String" (optional)
* a1: "String" (optional)
* a2: "String" (optional)
* a3: "String" (optional)
* a4: "String" (optional)
* a5: "String" (optional)
* a6: "String" (optional)
* prd: "String" (optional)
* pod: "String" (optional)
* sts: "String" (optional)
* hno: "String" (optional)
* hns: "String" (optional)
* lmk: "String" (optional)
* loc: "String" (optional)
* flr: "String" (optional)
* nam: "String" (optional)
* pc: "String" (optional)

TODO: Do we need RFC6848 civic address extensions?

TODO: Is there a need for any temporal location?  For example should location be an array, each element with a time stamp?

TODO: Do we just specify for the start of the conversation?

### timezone

TODO: timezone for the location of the party?

### uuid {#party-uuid}

The uuid is a unique identifier for the participant.
In a contact center, this is particularly important for the call agent participant, and must be static across interactions to allow correlation with the actual agent configuration provisioned into the systems.

* uuid: "String" (optional)


## Dialog Object

The Dialog object references or contains text, audio or video captured from the conversation.
Currently two types of dialog objects are defined in this document.
One for text media and the other for audio or video recording files.

TODO: Is there other signalling data that we want to capture other than start and duration and the media (e.g. from jabber, sms, mms, email, SIP, etc.)?

### type {#dialog-type}

* type: "String"

The sting MUST have the value of either "recording", "text", "transfer" or "incomplete".
A dialog of type "recording" has Dialog Content that either contains a body or refers to via url, which is a recording of the video and/or audio of a segment of the conversation.
A dialog of type "text" had  has Dialog Content that either contains a body or refers to via url, which contains the text from one of the parties for a segment of the conversation.
A dialog of type "transfer" does not capture actual conversation exchange, but rather captures operations, parties and relations between dialog segments.
A dialog of type "incomplete" or "transfer" MUST NOT have Dialog Content.
In the "incomplete" case the call or conversation failed to be setup to the point of exchanging any conversation.
Incomplete dialogs MUST have a disposition parameter which indicates why the call or conversations failed.
In the "transfer" case, the conversation is recorded in other dialogs.
The Dialog Transfer parameters, are used to show the roles and relationships between the parties and other dialogs as the transfer process occurred.


### start {#dialog-start}

The start parameter contains the date and time for the beginning of the captured piece of dialog.
For text it is the time that the party started typing or if not available, then it is the time the text was sent.
For audio and video recordings, it is the time which corresponds to the beginning of the recording.

* start: "Date"

### duration

The duration parameter contains the duration in seconds of the referenced or included piece of dialog.
For text, if known, it is the time duration from when the party started typing to when they completed typing and the text was sent.
For recordings, it is the duration of the recording.

* duration: "UnsignedInt" \| "UnsignedFloat" (optional)

The value MUST be the dialog duration in seconds.

### parties

The party(s) which generated the text or recording for this piece of dialog are indicated in the parties parameter.

* parties: "UnsignedInt" \| "UnsignedInt\[\]" \| ("UnsignedInt" \| "UnsignedInt\[\]")\[\]

Single channel recordings should have a parties value of the form: "UnisignedInt" or "UnsignedInt\[\]" where the integer value or array of integer values are the indices to the Party Object(s) in the parties array that contributed to the mix for the single channel recording.
The index for the Party Object SHOULD be included even if the indicated party was silent the entire piece of dialog.

Multi-channel recordings MUST have a parties value that is an array of the same size as the number of channels in the recording.
The values in that array are either an integer or an array of integers which are the indices to the parties that contributed to the mix for the associated channel of the recording.
The index for Party Objects SHOULD be included even if the party was silent the entire conversation.

It is implied that the first party in the dialog Object parties list, is the originator of the dialog.
However, in some situations, it is difficult to impose the constraint that the first channel of a recording is the originator.
If ensuring that the first channel and party listed is the originator is not possible, the optional originator parameter indicates the originator party.
In other cases, there may be a separate recording file for each party in a conversation, where only one party is recorded per file.
In this situation, it is necessary to indicate the originator as the dialog Object parties parameter may contain only one party and may not be the originator.
It should be noted that the recordings may be shorter than the collective conference when there is a separate recording per speaker/party.
For example the recording(s) of the individual speaker may be trimmed to only the parts where they are actually speaking.

TODO: For an email thread, To and Cc parties are all passive.  Do we just put the sender as the party or do we want to list all of the recipients and by convention the sender is the first party?  Note that each dialog/email could have a difference set of recipients.

### originator

The originator party for this dialog.
For email and text, this is the sender of the text.
For audio and video, this is the caller or host of the call or conference.
The originator parameter is only provided if the first party of the dialog Object parties list is NOT the originator.

* originator: "UnsignedInt" (optional)

The originator value is the index into the parties Objects Array, to the party that originated the dialog.

### mediatype {#dialog-mediatype}

The media type for the piece of dialog included or referenced is provided in the mediatype parameter.
The mediatype parameter MUST be provided for inline dialog files and MUST be provided if the Content-Type header in the [HTTPS] response for the externally referenced URL is not provided.


* mediatype: "Mediatype" (optional for externally referenced files, if absent, this is provided in the [HTTPS] Content-Type header)

The media types SHOULD be one of the following strings:

  * "text/plain"
  * "audio/x-wav"
  * "audio/x-mp3"
  * "audio/x-mp4"
  * "audio/ogg"
  * "video/x-mp4"
  * "video/ogg"
  * "multipart/mixed"

    Note: multi-part will also likely include the boundary parameter

### filename {#dialog-filename}

It is sometimes useful to preserve the name of the file which originally contained this piece of dialog.
This can be done in the filename parameter.

* filename: "String" (optional)

### Dialog Content

The Dialog Object SHOULD contain the body and encoding parameters or the url and content_hash parameters for
all dialog types other than "incomplete" and "transfer", these parameters MUST NOT be present for
"incomplete" or "transfer" dialog types (see [Inline Files](#inline-files) and
[Externally Referenced Files](#externally-referenced-files)).
The exception to this is that the body or url MAY be absent if it is redacted.

For inline included dialog:

* body: "String" (optional in an a redacted vCon)
* encoding: "String"

Alternatively, for externally referenced dialog:

* url: "String"  (optional in an a redacted vCon)
* content_hash: "ContentHash" \| "ContentHash\[\]"

### disposition

TODO: should this go in CC extensions?

If the dialog type is "incomplete", it must have a disposition parameter.
The value of the disposition parameter provides the reason that the "call control" failed.
The term: "call control" is used in a loose sense, as there in not always a call involved, to differentiate from a call disposition that an agent may assign to a call to indicate the reason, issue addressed or outcome of a conversation.
This latter definition of call disposition is not dialog, but analysis of the conversation and is not included in the dialog portion.

* disposition: "String" (required for incomplete type dialogs, SHOULD NOT be present for other dialog types)

The value of the disposition parameter MUST be one of the following string:

  * "no-answer" - a call or connection was attempted, but no one answered or accepted the connection
  * "congestion" - a call or connection was attempted, but was unable to be completed due to system load
  * "failed" - a call or connection was attempted, but failed
  * "busy" - a call or connection was attempted, but the party was busy with another conversation
  * "hung-up" - a call or connection was made, but the party hung-up before any conversation occurred
  * "voicemail-no-message" - a call or connection was made, the voicemail system answered, but no message was left

    Note: if a message was left with the voicemail system this is no longer an "incomplete" type dialog, it is a "recording" type and the conversation SHOULD be included in the Dialog Content.

### session_id {#session_id}

The [SESSION-ID] MAY be included for the dialog.

* session_id: "String" (optional)

  The session_id value is the string as defined in section 4.1 of [SESSION-ID].

### party_history Objects Array {#party_history-objects-array}

Participants in a dialog may not all join and leave at the same time.
To support the capturing of the information when parties join, drop, go on hold or mute and unmute, the party_history array may be added to the Dialog Object.

* party_history: "Party_History\[\]" (optional)

#### Party_History Object {#party_history-object}

The Party_History Object contains the following parameters:

* party: "UnsignedInt"

  The index of the party for this event.

* time: "Date"

  The time at which this event occurred.

* event: "String"

  The string token for the event which MUST be one of the following:

    * "join" - when the party joins the dialog
    * "drop" - when the party drops out of the dialog
    * "hold" - when the party is put on hold
    * "unhold" - when the part is taken off hold
    * "mute" - when the party is muted
    * "unmute" - when the part is taken off mute

### Dialog Transfer

A dialog of type "transfer" documents the rolls of three parties and the relationship between 2 or three dialog segments.
In a transfer operation, the roles of the three parties to a transfer are defined in [SIP-XFER] as:

* Transferee
* Transferor
* Transfer Target

There are two or three calls in which the parties are connected:

* original call
* consultative call (optional as this call may not get created)
* target call

To capture the above roles and dialog segments, the following parameters are defined and SHOULD be present in the "transfer" type dialog and MUST NOT be present in other dialog types.

* transferee: "UnsignedInt"

The value of the transferee parameter is the index into the parties Object array to the party that played the role of the Transferee.

* transferor: "UnsignedInt"

The value of the transferor parameter is the index into the parties Object array to the party that played the role of the Transferor.

* transfer_target: "UnsignedInt"

The value of the transfer_target parameter is the index into the parties Object array to the party that played the role of the Transfer Target.

* original: "UnsignedInt"

The value of the original parameter is the index into the dialogs Object array to the "recording" or "text" type dialog for the original dialog between the Transferee and the Transferor.

* consultation: "UnsignedInt" (optional)

The value of the consultation parameter is the index into the dialogs Object array to the "recording", "text" or "incomplete" type dialog for the consultative dialog between the Transferor and the Transfer Target.

* target_dialog: "UnsignedInt"

The value of the target_dialog parameter is the index into the dialogs Object array to the "recording", "text" or "incomplete" type dialog for the target dialog between the Transferee and the Transfer Target.

A "transfer" type dialog MUST NOT contain the parties, originator, mediatype, filename or Dialog Content parameters.

The "transfer" type dialog only captures the roles, operations and events of the parties and the dialog setup.
It does not capture the purpose or reason for the transfer as that is analysis to be captures in the analysis section of the Vcon after the conversation has occurred.

### application

The application parameter is used to capture the application, communication channel or context over which the conversation was held.
The conversation mode can be identified by looking at the dialog type.
However that does not different between different communication platform service providers or hosting service.
For example, the application parameter can be used to identify the web conference hosting service.

* application "String" (optional)

### message_id {#message_id}

Some messaging systems assign a unique message identifier to each message.
The message_id parameter may be used to label the message for either cross referencing back to the messaging
system or to prevent the addition of duplicate messages to the vCon.
For example SMTP [SMTP] messages have a message-id in the SMTP header.
In the SMTP case a message may exist in multiple mailboxes or tags.
When exporting these SMTP messages, the message_id parameter may be used to avoid adding the same message,
to the vCon containing the email thread, more than once.

* message_id: "string" (optional)

## Attachment Object

Ancillary documents to the conversation are included or referenced in the Attachment Object.
There is no constraint on the types files which can be included or referenced.
As most modes of communication, that allow the exchange of files, do not constrain the file type, any file type may be included here.

### type or purpose

TODO: Do we want a semantic type like: contract or presentation?  Or a subject or title.

### start {#attachment-start}

The start parameter contains the date and time that the Attachment Object was sent/exchanged.

* start: "Date"

### party

In most conversations, ancillary documents originate from one of the parties to the conversation.
This is not necessarily the author, but the person who distributed the document.
This party is identified by the party parameter in the Attachment Object.

* party: "UnsignedInt"

The value of the party parameter is the index into the Party Object array to the party that contributed the attachment.

### dialog {#attachment-dialog}

Attachments are added as data related to the dialog.
The dialog parameter is used to identify the dialog that the attachment is part of.
The dialog is identified by the index to the dialog Object in the dialog objects array.

* dialog: "UnsignedInt"

### mediatype {#attachment-mediatype}

The media type for the included or referenced attachment file is provided in the mediatype parameter.

* mediatype: "Mediatype" (optional for externally referenced files, if absent, this is provided in the [HTTPS] Content-Type header)

The mediatype string contains the media type or [MIME] type of the attached file.

### filename {#attachment-filename}

It is sometimes useful to preserve the name of the file which originally contained this attachment file.
This can be done in the filename parameter.

* filename: "String" (optional)

The file name string contains an optional name for the attachment file referenced in this Attachment Object.

### Attachment Content

The Attachment Object SHOULD contain the body and encoding parameters or the url and content_hash parameters
(see [Inline Files](#inline-files) and [Externally Referenced Files](#externally-referenced-files)).
The exception to this is that the body or url MAY be absent if it is redacted.

For inline included attachments:

* body: "String"
* encoding: "String"

Alternatively, for externally referenced attachments:

* url: "String"
* content_hash: "ContentHash" \| "ContentHash\[\]"


## Analysis Object

Analysis is a broad and in some cases developing field.
This document does not attempt to suggest a SHOULD support list of types.
Nor are formats for analysis data defined in this document.
That is for research and specification outside the scope of this document.
For this reason the Analysis Object provides multiple ways to define the media type of the analysis file.
If a well known media type is defined, it SHOULD be used.
For analysis data or files types for which a media type is not defined, the vendor and schema parameters SHOULD be used.

### type {#analysis-type}

The type parameter is used to label the semantic type of analysis data.

* type: "String"

TODO:  this list is not sufficient.  Do we enforce a specific set of tokens.  Seems like analysis has a pretty huge set of possibilities.

The string value SHOULD be one of the following:

  * "summary"
  * "transcript"
  * "translation"
  * "sentiment"
  * "tts"

### dialog {#analysis-dialog}

Analysis typically pertains to one or more of the Dialog Objects in the dialog array.
The dialog parameter is used to indicate which Dialog Objects this analysis was based upon.

* dialog: "UnsignedInt" \| "UnsignedInt\[\]" (optional only if the analysis was not derived from any of the dialog)

The value of the dialog parameter is the index to the dialog or array of indices to dialogs in the dialog array to which this analysis object corresponds.

### mediatype {#analysis-mediatype}

The media type for the included or referenced analysis file is provided in the mediatype parameter.

* mediatype: "Mediatype" (optional for externally referenced files, if absent, this is provided in the [HTTPS] Content-Type header)

The mediatype string contains the media type or [MIME] type of the analysis file.

### filename {#analysis-filename}

It is sometimes useful to preserve the name of the file which originally contained this analysis data.
This can be done in the filename parameter.

* filename: "String" (optional)

The file name string contains an optional name for the analysis data file referenced in this Analysis Object.

### vendor

There may not be a IANA registered media type for the file format containing the analysis data.
Even if a media type is defined, it is often useful to keep a record of the vendor that produced the software that produced the analysis.
Different implementations perform differently and knowing the implementation can be useful in interpreting the analysis.
For this reason, the vendor or product name is provided in the vendor parameter.

* vendor: "String"

The vendor string value contains the vendor or product name of the software which generated this analysis.

### product

As the vendor may have more than one product, the product parameter may be used to differentiate it from other products which may have different schemas of analysis data.

* product: "string" (optional)

### schema

The same vendor or software product may produce different formats or data for the same analysis.
The schema parameter allows the data format, schema or configuration used to generate the analysis to be saved with the included or referenced analysis data.

* schema: "String" (optional)

The schema string contains a token or label for the data format or schema for the analysis data.
As the vendor name may not be specific enough to identify the format of the analysis, the schema value is provide to differentiate from potentially multiple data formats for analysis provided by the same vendor or software.

### Analysis Content

The Analysis Object SHOULD contain the body and encoding parameters or the url and content_hash parameters
(see [Inline Files](#inline-files) and [Externally Referenced Files](#externally-referenced-files)).
The exception to this is that the body or url MAY be absent if it is redacted.

For inline included analysis:

* body: "String"
* encoding: "String"

Alternatively, for externally referenced analysis:

* url: "String"
* content_hash: "ContentHash" \| "ContentHash\[\]"


## Group Object

A conversation may have take place using different modes (e.g. web chat which evolves to email, which evolves to phone call, which evolves to video conference).
A conversation could take place over several calls (e.g. multiple calls regarding a support incident or problem).
Each of these examples might be considered a single conversation event though there are multiple sets of dialog in each.
What is considered the boundary of a conversation is a business decision.
There are situations in the above example, where it is desired to treat these as a single conversation, but each set of dialog is created in a single vCon (e.g. each dialog occurred in a separate communication silo or security domain) which gets signed.
For this reason, it may be necessary to aggregate the separate vCon into a single vCon which is considered the whole of a conversation.
The Group Object includes or refers to a vCon to be aggregated into the whole of a single vCon conversation.

The Group Object SHOULD contain the uuid and the url and content_hash
parameters (see [Externally Referenced Files](#externally-referenced-files)).
The referenced vCon SHOULD be via UUID:

* uuid: "String"

The value of the uuid parameter, is the [uuid string value](#uuid) of the referenced vCon to be aggregated.

The vCon MAY be included in line as the value of the body parameter.
The encoding parameter MUST be included with the body parameter, if provided, to describe the encoding of the vCon body.

* body: "vCon"

The JSON unsigned form of the vCon, the JWS signed form of the vCon or the JWE encrypted form of the vCon.

* encoding: "String"

The encoding string MUST have the value: "json".

In addition, the location for the referenced vCon MAY be provided.
The url and content_hash parameters and values are defined in
[Externally Referenced Files](#externally-referenced-files).

* url: "String"
* content_hash: "ContentHash" \| "ContentHash\[\]"

# Security Considerations

The security concerns for vCons can put into two categories: making the conversation immutable through integrity verification and protecting the confidentiality of privacy of the parties to the conversation and/or their PII.
These requirements along with need to evolve a vCon (e.g. adding analysis, translations and transcriptions) conflict in some ways.
To enable this, multiple versions of a vCon may be created.
Versions of a vCon may add information (e.g. analysis added to a prior vCon referenced by the appended ([appended](#appended))) and versions that remove information (e.g. redactions of privacy information removed from the vCon referenced in the redacted ([redacted](#redacted))).
Redactions may be at different levels for example:

* PII masked to remove PII data in the text, audio, video or transcripts

* De-identified to remove segments or whole recordings that might be used for voice printing or facial recognition

Different parts and versions of a vCon may be created in different security domains over a period of time.
In addition, some conversation data may be referenced externally through an HTTPS URL as opposed to completely contained within the vCon.
Typically a conversation of one mode, will be hosted or observed in a single domain.
This will likely fall into one of the following hosting situations:

* Enterprise Hosted Communications

* Software as a Service (SaaS) Hosted Communications

* Service Provider Hosted Communications

The distinction among these has gotten clouded over recent years.
The import consideration is that each is a different security domain.
Information about a conversation captured in an enterprise communications system (e.g. meta data and Dialog Object(s) recorded in an IP PBX) is a different security domain from a SaaS transcription service (i.e. an Analysis Object).
Before a vCon leaves a security domain, it SHOULD be signed to prevent it from being altered.
If the new security domain needs to alter it, a new vCon is created with the removed or added data and the prior version is referenced (i.e. via the redacted ([redacted](#redacted)) or appended ([appended](#appended))).
See the redacted vCon object tree figure-1 and appended vCon object tree figure-2.
If information is redacted for privacy reasons, the vCon referenced in the redacted ([redacted](#redacted)), if inline, SHOULD be encrypted to protect the privacy information in the unredacted version of the vCon.

The secure storage and access of externally referenced conversation data is considered out of scope from this document.
Secure mechanisms for HTTPS access and storage of files are well defined.
Identity and credentials for accessing externally stored data will be exchanged out of band from the vCon.
The one requirement for externally referenced data from the perspective of this document, is proof of integrity of that data.

Using the above described approach for redaction and appending of data, we can reduce the security operations on a vCon to signing and encryption.
Two approaches to signing are needed as we have data, in JSON format, that is contained within the vCon and may have data (typically media and file formats, often binary) not contained, inline in the vCon, that is externally referenced.

Externally referenced data will be "signed" using [SHA-512] hash which along with the URL of the externally referenced data is included in the vCon.
[SHA-512] was chosen due to the relatively low cost to generate and verify the signature for what could be very large externally referenced media files.
As the hash for each externally referenced file is contained in the vCon which will be signed, the chain of authentication is provided via the signature on the vCon itself.

This document specifies the JSON format for vCons.
So it seemed the logical solution for signing vCons, is JOSE [JWS] JSON Serialization and likewise for
encrypting vCons is JOSE [JWE] JSON Serialization.
The solutions are well documents, implementations are readily available and tested.

Methods of redaction exist for text, audio and video using post processing of the media.
The method of redaction used is out of the scope of this document.
A redacted vCon SHOULD reference it's non-redacted version.
The non-redacted version of the vCon referenced from the redacted vCon MUST be encrypted such that only those with permission to view the non-redacted content can decrypt it.

Any time a vCon is shared outside its original security domain, it SHOULD be signed and optionally encrypted.
Files externally referenced by a vCon SHOULD always be signed with the verification information included in the vCon that references the external file as defined in [Externally Referenced Files](#externally-referenced-files) and [Signing Externally Referenced Files](#signing-externally-referenced-files).
Externally referenced files SHOULD only be transported over [HTTPS] and SHOULD be access controlled to those who are permitted to read the contents of that non-redacted vCon.
vCons transported over non-secure channels such as email MUST be in the encrypted form.

## Signing Externally Referenced Files

In some deployments, it is not practical to include all of the file contents of a vCon inline.
In support of that, a file may be externally referenced.
When external files are referenced, the signature on the vCon does not secure the file contents from modification.
For this reason any externally referenced files SHOULD also have a signature.
vCons use the [SHA-512] hash method for integrity checking of externally referenced file content and include
its url and content_hash in the vCon which are included in the integrity signature for the whole vCon.

After retrieving externally referenced files, before using its content, the payload of the HTTPS request should be verified using the signature parameter value for the hash for the url body using the procedure defined in section 6.3 and 6.4 of [SHA-512].

## Signed Form of vCon Object

A signed vCon uses [JWS] and takes the General JWS JSON Serialization Syntax form as defined in section 7.2.1 of [JWS].
The vCon General JWS JSON Serialization MUST include x5c or x5u in the unprotected header.

* payload: "String"

The value of the payload is the Base64Url Encoded string containing either: the unsigned form of the JSON vCon; or the gzipped [GZIP] unsigned form of the JSON vCon.
The general construction of the payload string value is described in section 7.2.1 of [JWK]

* signatures "Signature\[\]"

The value of signatures is an array of [Signature Objects](#signature-object)

### Signature Object

The Signature Object MUST contain a header, protected and signature parameter as defined in section 7.2.1 of [JWS].

* header: "Header"

The value of header is defined in [Header Object](#header-object)

* protected: "String"
* signature" "String"


### Header Object

The Header Object and its contents are defined in section 4 of [JWS].
The Header Object for a signed vCon MUST include the alg and either the x5c or x5u arrays.
The x5c or x5u requirement makes the management and use of vCons easier, allowing the certificate chain to be found as the vCon is moved.

* alg: "String"

The string value of alg is defined in section 4.1.1 of [JWS].  For a signed vCon this value SHOULD be "RS256" to maximize interoperability.

* x5c: "String\[\]" (MUST provide x5c or x5u)

The array of string values for x5c are defined in section 4.1.6 of [JWS].

* x5u: "String" (MUST provide x5c or x5u)

The string value of x5u MUST contain an [HTTPS] URL as defined in section 4.1.5 of [JWS].

* uuid: "String" (SHOULD be provided)

The string value of the UUID for the vCon contained in the payload parameter.
This is added for convenience to not require verification of the signed vCon to get it's UUID.
When the vCon is verified, the value of this uuid parameter SHOULD be verified against the UUID in the signed vCon.

TODO: How to deal with expired signatures?

## Encrypted Form of vCon Object

TODO: Check this terminology:

A vCon MUST be signed first using JWS as defined in [Signed Form of vCon Object](#signed-form-of-vcon-object), then encrypted using JWE as opposed to just encrypted with integrity protection.
The rationale is that meta data and dialog will typically be collected in one security domain, then may be stored or exported to another.
The signing is likely for the lifetime of the vCon, where the encryption may be shorter term or domain specific.
vCons may be stored in unencrypted form, but the signed form MUST be maintained to ensure its integrity.

A encrypted vCon uses [JWE] and takes the General JWE JSON Serialization Syntax form as defined in section 7.2.1 of [JWE].

* unprotected: "Unprotected"

* recipients: "Recipient\[\]"

* iv: "String"

The string value of iv is the Initialization Vector as constructed as defined in section 7.2.1 of [JWE].

* ciphertext: "String"

The string value of ciphertext is constructed as defined in section 7.2.1 of [JWE] using the signed form of the vCon as the plaintext input for encryption.

* tag: "String"

The string value of tag is the the Authentication Tag as defined in section 7.2.1 of [JWE].

### Unprotected Object

* cty: "String"

The string value of cty SHOULD be either "application/vcon" or "application/vcon+gzip"

* enc: "String"

The string value of enc SHOULD be "A256CBC-HS512"

* uuid: "String" (SHOULD be provided)

The string value of the UUID for the vCon contained in the ciphertext parameter.
This is provided for identification of the encrypted vCon without the need of the key to decrypt the vCon.
The value of this uuid parameter SHOULD be verified when the vCon is decrypted.

### Recipient Object

* header: "Header"

* encrypted_key: "String"

The string value of encrypted_key is defined in section 7.2.1 of [JWE].

### Header Object

* alg: "String"

The string value of alg SHOULD be "RSA-OAEP".

## Differentiation of unsigned, signed and encrypted forms of vCon

vCons in the unsigned, signed and encrypted form are all valid JSON.
It is necessary to distinguish which form a vCon is in order to properly handle it.
For example a signed vCon needs to be verified.
The following is the recommended approaches to identifying which form a particular vCon is in:

* unsigned

  The presence of one or more of the following parameters indicates that the vCon is in the unsigned form:

  * parties
  * dialog
  * analysis
  * attachments

* signed (JWS)

  The presence of both of the following parameters indicates that the vCon is in the signed (JWS) form:

  * payload
  * signatures

* encrypted (JWE)

  The presence of both of the following parameters indicates that the vCon is in the encrypted (JWE) form:

  * ciphertext
  * recipients

# IANA Considerations

This section includes the information required for IANA to register the application/vcon media type per
[MEDIATYPE].

## JSON Format vCon Mediatype

The JSON format for vCon is mandatory to implement.

* Type name: application

* Subtype name: vcon

* Required parameters: N/A

* Optional parameters: N/A; unrecognized parameters should be ignored.

* Encoding considerations: 8bit

* Additional information: [JSON] format

* Security considerations: See Security Considerations section of this document.

* Interoperability considerations: The vCon schema is defined in RFC XXXX.  The schema may be extended through extensions as defined there.

* Published specification: [VCON], this document: RFC XXXX

* Applications that use this media type:

* Fragment identifier considerations: N/A

* Additional Information:

  * Deprecated alias names for this type: N/A

  * Magic number(s): N/A

  * File extension(s): "vcon"

  * Macintosh file type code(s): N/A

  * Windows Clipboard Name: VCON

* Author: See the Author's Addresses section of this document.

* Change controller: IETF

## gzip Format vCon Mediatype

A gzip format vCon is a JSON format vCon that has been compressed using the gzip [GZIP] compression algorithm.
The gzip format is used to reduce the size of potentially very large vCons containing audio or video media in
dialog objects.
Applications SHOULD support the receiving of gzip format vCons, but do not need to use the gzip format
when sending.


* Type name: application

* Subtype name: vcon+gzip

* Required parameters: N/A

* Optional parameters: N/A; unrecognized parameters should be ignored.

* Encoding considerations: binary

* Additional information: [GZIP] compression of [JSON] format

* Security considerations: See Security Considerations section of this document.

* Interoperability considerations: The vCon schema is defined in RFC XXXX.  The schema may be extended through extensions as defined there.

* Published specification: [VCON], this document: RFC XXXX

* Applications that use this media type:

* Fragment identifier considerations: N/A

* Additional Information:

  * Deprecated alias names for this type: N/A

  * Magic number(s): N/A

  * File extension(s): "vcon"

  * Macintosh file type code(s): N/A

  * Windows Clipboard Name: VCON

* Author: See the Author's Addresses section of this document.

* Change controller: IETF

## vCon JSON registry

This document defines a number of new IANA registries for the JSON vCon schema.
Each Object (i.e. dict, map, dictionary) has its own registry of parameter names.
All of those registries have the same registry template.

### Object Registry Template

Parameter Name:

  The string name of a parameter to be used within the Object.
  The name is case sensitive.
  Names may not match other registered names in a case-insensitive manner unless the Designated Experts state that there is a compelling reason to allow an exception.

Parameter Description:

  Brief description of the parameter

Change Controller:

   For Standards Track RFCs, list the "IESG".  For others, give the
   name of the responsible party.  Other details (e.g., postal
   address, email address, home page URI) may also be included.

Specification Document(s):

   Reference to the document or documents that specify the parameter,
   preferably including URIs that can be used to retrieve copies of
   the documents.  An indication of the relevant sections may also be
   included but is not required.

### vCon Object Parameter Names Registry

The following defines the initial values for the vCon Object Parameter Names Registry.

| Parameter Name | Parameter Description | Change Controller | Specification Document(s) |
| --- | --- | --- | --- |
| vcon | Schema version number | IESG | [](#vcon) RFC XXXX |
| uuid | vCon instance UUID | IESG | [](#uuid) RFC XXXX |
| extensions | list of extensions used | IESG | [extensions](#extensions) RFC XXXX |
| must_support | list of incompatible extensions used | IESG | [must_support](#must_support) RFC XXXX |
| created_at | creation date | IESG | [](#created_at) RFC XXXX |
| updated_at | modification date | IESG | [](#updated_at) RFC XXXX |
| subject | conversation subject | IESG | [](#subject) RFC XXXX |
| redacted | Redacted Object | IESG | [](#redacted) RFC XXXX |
| appended | Appended Object | IESG | [](#redacted) RFC XXXX |
| group | Group Objects array | IESG | [](#group-objects-array) RFC XXXX |
| parties | Party Objects array | IESG | [](#parties-objects-array) RFC XXXX |
| dialog | Dialog Objects array | IESG | [](#dialog-objects-array) RFC XXXX |
| analysis | Analysis Objects array | IESG | [](#analysis-objects-array) RFC XXXX |
| attachments | Attachment Objects array | IESG | [](#attachments-objects-array) RFC XXXX |

### Party Object Parameter Names Registry

The following defines the initial values for the Party Object Parameter Names Registry.

| Parameter Name | Parameter Description | Change Controller | Specification Document(s) |
| --- | --- | --- | --- |
| tel | tel URL | IESG | [](#tel) RFC XXXX |
| sip | SIP URL | IESG | [](#tel) RFC XXXX |
| stir | STIR token | IESG | [](#stir) RFC XXXX |
| mailto | mailto URL | IESG | [](#mailto) RFC XXXX |
| name | participant name | IESG | [](#name) RFC XXXX |
| validation | validation method | IESG | [](#validation) RFC XXXX |
| jCard | participant jCard | IESG | [](#jcard) RFC XXXX |
| gmlpos | participant geolocation | IESG | [](#gmlpos) RFC XXXX |
| civicaddress | civic address | IESG | [](#civicaddress) RFC XXXX |
| timezone | participant timezone | IESG | [](#timezone) RFC XXXX |
| uuid | participant UUID | IESG | [](#party-uuid) RFC XXXX |

### Dialog Object Parameter Names Registry

The following defines the initial values for the Dialog Object Parameter Names Registry.

| Parameter Name | Parameter Description | Change Controller | Specification Document(s) |
| --- | --- | --- | --- |
| type | dialog type name | IESG | [](#dialog-type) RFC XXXX |
| start | dialog start time | IESG | [](#dialog-start) RFC XXXX |
| duration | dialog duration period | IESG | [](#duration) RFC XXXX |
| parties | dialog parties list | IESG | [](#parties) RFC XXXX |
| originator | dialog originator party | IESG | [](#originator) RFC XXXX |
| mediatype | dialog content media type | IESG | [](#dialog-mediatype) RFC XXXX |
| filename | dialog content filename | IESG | [](#dialog-filename) RFC XXXX |
| body | dialog inline content | IESG | [](#dialog-content) RFC XXXX |
| encoding | dialog inline content encoding | IESG | [](#dialog-content) RFC XXXX |
| url | dialog referenced content URL | IESG | [](#dialog-content) RFC XXXX |
| content_hash | dialog content hash | IESG | [](#dialog-content) RFC XXXX |
| disposition | dialog disposition | IESG | [](#disposition) RFC XXXX |
| session_id | RFC7989 session ID  | IESG | [](#session_id) RFC XXXX |
| party_history | dialog party events history | IESG | [](#party_history-objects-array) RFC XXXX |
| transferee | transferee party index | IESG | [](#dialog-transfer) RFC XXXX |
| transferor | transferor party index | IESG | [](#dialog-transfer) RFC XXXX |
| transfer_target | transfer target party index | IESG | [](#dialog-transfer) RFC XXXX |
| original | original transfer dialog index | IESG | [](#dialog-transfer) RFC XXXX |
| consultation | consultation`transfer dialog index | IESG | [](#dialog-transfer) RFC XXXX |
| target_dialog | target_dialog transfer dialog index | IESG | [](#dialog-transfer) RFC XXXX |
| application | dialog source application | IESG | [](#application) RFC XXXX |
| message_id | dialog message id | IESG | [](#message_id) RFC XXXX |

#### Dialog Type Name Registry

This document defines a new registry for the token name values that are permitted as values to the [dialog type](#dialog-type) parameter.

##### Dialog Type Name Registration Template

Dialog Type Name:

  The string token name of a Dialog Object Type
  The name is case sensitive.
  Names may not match other registered names in a case-insensitive manner unless the Designated Experts state that there is a compelling reason to allow an exception.

Dialog Type Description:

  Brief description of the Dialog Object type

Change Controller:

   For Standards Track RFCs, list the "IESG".  For others, give the
   name of the responsible party.  Other details (e.g., postal
   address, email address, home page URI) may also be included.

Specification Document(s):

   Reference to the document or documents that specify the parameter,
   preferably including URIs that can be used to retrieve copies of
   the documents.  An indication of the relevant sections may also be
   included but is not required.

##### Dialog Type Name Registration Initial Values

The following table defines the initial values for the Dialog Object Types Registry.

| Dialog Type Name | Dialog Type Description | Change Controller | Specification Document(s) |
| --- | --- | --- | --- |
| text | text dialog | IESG | [](#dialog-type) RFC XXXX |
| recording | recording dialog | IESG | [](#dialog-type) RFC XXXX |
| transfer | transfer dialog | IESG | [](#dialog-type) RFC XXXX |
| incomplete | incomplete dialog | IESG | [](#dialog-type) RFC XXXX |


### party_history Object Parameter Names Registry

The party_history Object Parameter Names Registry uses the [Object Registry Template](#object-registry-template) registry template.
This initial values for the party_history Object Parameter Names Registry are listed in the following table.

| Parameter Name | Parameter Description | Change Controller | Specification Document(s) |
| --- | --- | --- | --- |
| party | event party index | IESG | [](#party_history-object) RFC XXXX |
| time | time event occurred | IESG | [](#party_history-object) RFC XXXX |
| event | event type | IESG | [](#party_history-object) RFC XXXX |

#### party_event Event Name Registry

This document defines a new registry for the token name values that are permitted as values to the [party_event Object event](#party_history-object) parameter.

##### party_event Event Name Registration Template

party_event Event Name:

  The string token name of a party_event Object event type.
  The name is case sensitive.
  Names may not match other registered names in a case-insensitive manner unless the Designated Experts state that there is a compelling reason to allow an exception.

party_event Event Description:

  Brief description of the party_event Object Event

Change Controller:

   For Standards Track RFCs, list the "IESG".  For others, give the
   name of the responsible party.  Other details (e.g., postal
   address, email address, home page URI) may also be included.

Specification Document(s):

   Reference to the document or documents that specify the parameter,
   preferably including URIs that can be used to retrieve copies of
   the documents.  An indication of the relevant sections may also be
   included but is not required.

##### party_event Type Name Registration Initial Values

The following table defines the initial values for the Dialog Object Types Registry.

| party_event Event Name | party_event Event Description | Change Controller | Specification Document(s) |
| --- | --- | --- | --- |
| join | party join event | IESG | [](#party_history-object) RFC XXXX |
| drop | party drop event | IESG | [](#party_history-object) RFC XXXX |
| hold | party on hold event | IESG | [](#party_history-object) RFC XXXX |
| unhold | party off hold event | IESG | [](#party_history-object) RFC XXXX |
| mute | party on mute event | IESG | [](#party_history-object) RFC XXXX |
| unmute | party off mute event | IESG | [](#party_history-object) RFC XXXX |

### Attachment Object Parameter Names Registry

TODO: type or purpose

The following defines the initial values for the Attachment Object Parameter Names Registry.

| Parameter Name | Parameter Description | Change Controller | Specification Document(s) |
| --- | --- | --- | --- |
| start | attachment start time | IESG | [](#attachment-start) RFC XXXX |
| party | sending party index | IESG | [](#party) RFC XXXX |
| dialog | associated dialog index | IESG | [](#attachment-dialog) RFC XXXX |
| mediatype | attachment body media type | IESG | [](#attachment-mediatype) RFC XXXX |
| filename | attachment content filename | IESG | [](#attachment-filename) RFC XXXX |
| body | attachment inline content | IESG | [](#attachment-content) RFC XXXX |
| encoding | attachment inline content encoding | IESG | [](#attachment-content) RFC XXXX |
| url | attachment referenced content URL | IESG | [](#attachment-content) RFC XXXX |
| content_hash | attachment content hash | IESG | [](#attachment-content) RFC XXXX |

### Analysis Object Parameter Names Registry

The following defines the initial values for the Analysis Object Parameter Names Registry.

| Parameter Name | Parameter Description | Change Controller | Specification Document(s) |
| --- | --- | --- | --- |
| type | analysis type | IESG | [](#analysis-type) RFC XXXX |
| dialog | associated dialog index | IESG | [](#analysis-dialog) RFC XXXX |
| mediatype | analysis body media type | IESG | [](#analysis-mediatype) RFC XXXX |
| filename | analysis content filename | IESG | [](#analysis-filename) RFC XXXX |
| vendor | vendor producing content | IESG | [](#vendor) RFC XXXX |
| product | vendor product producing content| IESG | [](#product) RFC XXXX |
| schema | product schema of content| IESG | [](#schema) RFC XXXX |
| body | analysis inline content | IESG | [](#analysis-content) RFC XXXX |
| encoding | analysis inline content encoding | IESG | [](#analysis-content) RFC XXXX |
| url | analysis referenced content URL | IESG | [](#analysis-content) RFC XXXX |
| content_hash | analysis content hash | IESG | [](#analysis-content) RFC XXXX |

### Redacted Object Parameter Names Registry

The following defines the initial values for the Redacted Object Parameter Names Registry.

| Parameter Name | Parameter Description | Change Controller | Specification Document(s) |
| --- | --- | --- | --- |
| uuid | less redacted vCon UUID | IESG | [](#redacted-object) RFC XXXX |
| type | redaction type or reason | IESG | [](#redacted-object) RFC XXXX |
| url | referenced less redacted vCon URL | IESG | [](#redacted-object) RFC XXXX |
| content_hash | less redacted vCon hash | IESG | [](#redacted-object) RFC XXXX |

### Appended Object Parameter Names Registry

The following defines the initial values for the Appended Object Parameter Names Registry.

| Parameter Name | Parameter Description | Change Controller | Specification Document(s) |
| --- | --- | --- | --- |
| uuid | prior vCon version UUID | IESG | [](#appended-object) RFC XXXX |
| url | referenced prior version vCon URL | IESG | [](#appended-object) RFC XXXX |
| content_hash | prior version vCon hash | IESG | [](#appended-object) RFC XXXX |


### Group Object Parameter Names Registry

The following defines the initial values for the Group Object Parameter Names Registry.

| Parameter Name | Parameter Description | Change Controller | Specification Document(s) |
| --- | --- | --- | --- |
| uuid | child vCon version UUID | IESG | [](#group-object) RFC XXXX |
| url | referenced child vCon URL | IESG | [](#group-object) RFC XXXX |
| content_hash | prior version vCon hash | IESG | [](#group-object) RFC XXXX |


## vCon Extensions Names Registry

This document defines and new registry for the token name values that are permitted as values to the [extensions]s(#extensions) parameter.
However it does not define any values for this registry.
Values for this registry are to be defined in subsequent documents which define extensions to the vCon schema.

### Extensions Registration Template

Extension Name:

  The string token name of an extension to the vCon JSON schema.
  The name is case sensitive.
  Names may not match other registered names in a case-insensitive manner unless the Designated Experts state that there is a compelling reason to allow an exception.

Extension Description:

  Brief description of the the vCon extension

Change Controller:

   For Standards Track RFCs, list the "IESG".  For others, give the
   name of the responsible party.  Other details (e.g., postal
   address, email address, home page URI) may also be included.

Specification Document(s):

   Reference to the document or documents that specify the parameter,
   preferably including URIs that can be used to retrieve copies of
   the documents.  An indication of the relevant sections may also be
   included but is not required.

## JSON Web Signature and Encryption Header Parameters

This document registers the following new parameter in the [JWS] JSON Web Signature and Encryption Header Parameters registry.

* Header Parameter Name: "uuid"
* Header Parameter Description: UUID of the signed object
* Header Parameter Usage Location(s): JWS
* Change Controller: IESG
* Specification Document(s): [Header Object](#header-object) of RFC XXXX

## JSON Web Signature and Encryption Unprotected Parameters

TODO: cannot find this registry

This document registers the following new parameter in the [JWS] JSON Web Signature and Encryption Unprotected Parameters registry.

* Header Parameter Name: "uuid"
* Header Parameter Description: UUID of the encrypted object
* Header Parameter Usage Location(s): JWE
* Change Controller: IESG
* Specification Document(s): [Header Object](#unprotected-object) of RFC XXXX

# Non-Upward Compatible Changes to the vCon Container

## Version 0.0.2 to 0.3.0

  * "transfer-target" parameter was renamed to "transfer_target" to be consistent with other compound names that use the underscore ("_").
  * "target-dialog" parameter was renamed to "target_dialog" to be consistent with other compound names that use the underscore ("_").

## Version 0.0.1 to 0.0.2

  * "mimetype" parameters were renamed to "mediatype"

  * "alg" and "signature" were combined into "content_hash"


--- back

# Example vCons

This appendix contains example vCons in the unsigned, signed and encrypted form.
The JSON has been indented for readability.
The vCons have been formatted such that long text lines have been wrapped with a left hand white space indent for readability purposes.
Links for unformatted versions of the vCons are provided for each of the examples.
The example vCons in this document were generated using the [PY-VCON] command line interface.


## Two Party Call vCon With Inline Recording

This example vCon is for a simple 2 party PSTN call.
It has a single Dialog Object which contains a single channel wav format recording with the two parties audio mixed into the single channel.

The unformatted version of the following example can be downloaded from:
https://raw.githubusercontent.com/ietf-wg-vcon/draft-ietf-vcon-vcon-core/refs/heads/main/examples/ab_call_int_rec.vcon

~~~
{::include examples/ab_call_int_rec.pp}
~~~

## Text Chat vCon

TODO: text vCon example

## Email Thread Multipart vCon

The following is an unsigned form of an vCon for a 2 message email thread between 2 parties.
The email messages are multipart MIME message bodies.

The unformatted version of the following example can be downloaded from:
https://raw.githubusercontent.com/ietf-wg-vcon/draft-ietf-vcon-vcon-core/refs/heads/main/examples/ab_email_acct_prob_thread.vcon

~~~
{::include examples/ab_email_acct_prob_thread.pp}
~~~

## Email Thread Text vCon

The following is an unsigned form of an vCon for a 3 message email thread between 2 parties.
The email messages are plain text message bodies.

The unformatted version of the following example can be downloaded from:
https://raw.githubusercontent.com/ietf-wg-vcon/draft-ietf-vcon-vcon-core/refs/heads/main/examples/ab_email_prob_followup_text_thread.vcon

~~~
{::include examples/ab_email_prob_followup_text_thread.pp}
~~~

## Two Party Call vCon With Externally Referenced Recording

This example vCon is for a simple 2 party PSTN call.
It has a single Dialog Object which reference a single channel wav format recording with the two parties audio mixed into the single channel.

The unformatted version of the following example can be downloaded from:
https://raw.githubusercontent.com/ietf-wg-vcon/draft-ietf-vcon-vcon-core/refs/heads/main/examples/ab_call_ext_rec.vcon

~~~
{::include examples/ab_call_ext_rec.pp}
~~~

## Two Party Call vCon with Analysis

TODO: fix diarization in transcript

The unformatted version of the following example can be downloaded from:
https://raw.githubusercontent.com/ietf-wg-vcon/draft-ietf-vcon-vcon-core/refs/heads/main/examples/ab_call_ext_rec_analysis.vcon

~~~
{::include examples/ab_call_ext_rec_analysis.pp}
~~~

## Signed vCon

This example vCon is the signed form of the [Two Party Call vCon With Externally Referenced Recording](#two-party-call-vcon-with-externally-referenced-recording) example.
The private key used to sign this can be found at:

    https://raw.githubusercontent.com/vcon-dev/vcon/main/certs/fake_grp.key

The certificate chain is included in the x5c parameter of the header Object.

The unformatted version of the following example can be downloaded from:
https://raw.githubusercontent.com/ietf-wg-vcon/draft-ietf-vcon-vcon-core/refs/heads/main/examples/ab_call_ext_rec_signed.vcon

~~~
{::include examples/ab_call_ext_rec_signed.pp}
~~~

## Encrypted vCon

This example vCon is the encrypted form of the [Signed vCon](#signed-vcon) example.
The private key to decrypt it can be found at:

    https://raw.githubusercontent.com/vcon-dev/vcon/main/certs/fake_grp.key

The unformatted version of the following example can be downloaded from:
https://raw.githubusercontent.com/ietf-wg-vcon/draft-ietf-vcon-vcon-core/refs/heads/main/examples/ab_call_ext_rec_encrypted.vcon

~~~
{::include examples/ab_call_ext_rec_encrypted.pp}
~~~

## Redacted vCon

This is an example redaction of the vCon in the example [Two Party Call vCon With Externally Referenced Recording](#two-party-call-vcon-with-externally-referenced-recording).
Most notable is the [Redacted object](#redacted) which references the lesser redacted version of this vCon.
In addition the **url** parameter has been redacted from the [Dialog Object](#dialog-object), but the rest of the [Dialog Object](#dialog-object) was left in the redaction.

The unformatted version of the following example can be downloaded from:
https://raw.githubusercontent.com/ietf-wg-vcon/draft-ietf-vcon-vcon-core/refs/heads/main/examples/ab_call_ext_rec_redacted.vcon

~~~
{::include examples/ab_call_ext_rec_redacted.pp}
~~~

## Appended Signed vCon

This is an example vCon with an [Appended Object](#appended) referencing the vCon that it appends addional content.
In this case it is referening the signed vCon example above.

The unformatted version of the following example can be downloaded from:
https://raw.githubusercontent.com/ietf-wg-vcon/draft-ietf-vcon-vcon-core/refs/heads/main/examples/ab_call_ext_rec_appended.vcon

~~~
{::include examples/ab_call_ext_rec_appended.pp}
~~~

## vCon Group

TODO: group vCon example

# Acknowledgments
{:numbered="false"}

* Thank you to Thomas McCarthy-Howe for inventing the concept of a vCon and the many discussions that we had while this concept was developed into reality.
* Thank you to Jonathan Rosenberg and Andrew Siciliano for their input to the vCon container requirements in the form of I-D: draft-rosenberg-vcon-cc-usecases.
* Thank you to Rohan Mahy for his help in exploring the CDDL schema and CBOR format for vCon.
* The examples in this document were generated using the command line interface (CLI) from the py-vcon [PY-VCON] python open source project.
* Thank you to Steve Lasker for formatting and spelling edits.

