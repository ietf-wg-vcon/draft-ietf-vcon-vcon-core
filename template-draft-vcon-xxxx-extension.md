---
###
# vCon Extension Internet-Draft Template
#
# Start by creating a new repository from
# https://github.com/martinthomson/internet-draft-template
# then replace the content of its draft-todo-yourname-protocol.md
# with this file and rename it (e.g. draft-yourname-vcon-xxxx-extension.md).
#
# Replace xxxx with the extension name throughout.
# The sections in the middle are the ones required of a vCon extension
# by the "Extending vCon" section of [VCON-CORE].
# Delete any subsection that does not apply rather than leaving it empty.
# See draft-ietf-vcon-cc-extension for an example of a complete extension.
#
# Use one sentence per line.
# Use snake case for all parameter names.
###
title: "The JSON vCon - TODO Extension"
abbrev: "vCon TODO Extension"
category: std

docname: draft-yourname-vcon-xxxx-extension-latest

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
 - TODO
venue:
  group: "Virtualized Conversations"
  type: "Working Group"
  mail: "vcon@ietf.org"
  arch: "https://mailarchive.ietf.org/arch/browse/vcon/"
  github: "USER/REPO"
  latest: "https://USER.github.io/REPO/draft-yourname-vcon-xxxx-extension.html"

author:
 -
    fullname: Your Name Here
    organization: Your Organization Here
    email: your.email@example.com

normative:

  JSON: RFC8259

  VCON-CORE: I-D.draft-ietf-vcon-vcon-core

informative:

  CDDL: RFC8610


--- abstract

A vCon is a container for data and information relating to a conversation.
This document defines an extension to the JSON vCon schema in support of TODO.

--- middle

# Introduction

This document adds TODO to the JSON [JSON] vCon schema defined in [VCON-CORE].
The general framework and requirements for defining an extension to the JSON vCon schema are defined in [VCON-CORE].

TODO: why the extension is needed and what it is not trying to do.

# Conventions and Definitions

{::boilerplate bcp14-tagged}

## Terminology

See section 2.1 of [VCON-CORE] for terminology used in this document.

TODO: any additional terms.

# Extension Name

The extension name for this document is "xxxx".

TODO: state whether and under what conditions xxxx appears in the extensions parameter, the critical parameter or both.

# Parameter Definitions

TODO: delete the subsections that do not apply.

## New Objects

TODO: define each new Object, where it appears in the schema and its parameters.
TODO: request a parameter names registry for each new Object.

## Party Object Parameters

TODO

## Dialog Object Parameters

TODO

## Event Object Types and Parameters

TODO: new Event type values and the parameters that apply to each.

## Session Object Parameters

TODO

## Analysis Object Parameters

TODO

## Attachment Object Parameters

TODO

## Redefined or Deprecated Parameters

TODO: for each, the new semantics or values, or what replaces it and the migration approach.

# Compatibility Considerations

TODO: for each parameter or semantic added or changed, why an implementation that does not recognize this extension can still process the vCon correctly by ignoring it, or the conditions under which that holds.

# Incompatibility Considerations

TODO: either show that this extension introduces no incompatibilities, or list each one.
TODO: for each, the processing affected (e.g. redaction vs transcription), whether xxxx is therefore required in the critical parameter and the required behavior of implementations that do not support this extension.

# Privacy and Integrity Considerations

TODO: how these parameters interact with redaction and de-identification, and whether any can carry party identifying data or PII.
TODO: any new external content references and their content_hash.

# Security Considerations

* TODO

# IANA Considerations

## vCon JSON Registry Additions

### vCon Extensions Names Registry

The following extension name is added to the vCon Extensions Names Registry.

| Extension Name | Extension Description | Change Controller | Specification Document(s) |
| --- | --- | --- | --- |
| xxxx | TODO | IESG | [](#extension-name) RFC XXXX |

### TODO Object Parameter Names Registry

The following defines additional values for the vCon TODO Object Parameter Names Registry.

| Parameter Name | Parameter Description | Change Controller | Specification Document(s) |
| --- | --- | --- | --- |
| TODO | TODO | IESG | RFC XXXX |

TODO: one subsection per Object registry that this extension adds to, and one per new registry requested.


--- back

# Example vCons

TODO

# JSON Schema for the xxxx Extension

This appendix provides a JSON schema for the parameters defined by the xxxx extension.
The text in the preceding sections of this document defines the normative definition of these parameters.
If the JSON schema provided below differs from that in the text of the preceding sections, the text is the definitive definition and the JSON schema below is to be considered incorrect.

This schema supplements, and does not replace, the core vCon JSON schema.
To fully validate a vCon that uses this extension, apply both the core vCon schema and this schema to the vCon.

The JSON schema definition below has been formatted with line breaks to print nicely on the page.
The unformatted version of the JSON schema can be downloaded from:
TODO URL to xxxx_json_schema.json

~~~
{::include xxxx_json_schema.pp}
~~~

# CDDL for the xxxx Extension

This appendix provides a [CDDL] definition for the parameters defined by the xxxx extension.
The text in the preceding sections of this document defines the normative definition of these parameters.
If the CDDL provided below differs from that in the text of the preceding sections, the text is the definitive definition and the CDDL below is to be considered incorrect.

TODO: which core CDDL sockets this extends.

The unformatted version of the CDDL can be downloaded from:
TODO URL to xxxx.cddl

~~~ cddl
{::include xxxx_cddl.pp}
~~~

# Acknowledgments
{:numbered="false"}

