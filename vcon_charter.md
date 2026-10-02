#The vCon Charter Proposal

## Introduction and Group Overview

The vCon work group is about passing conversational data, where that conversational data represents the interactions between humans (such as a meeting), humans and AI agents (such as a traditional chatbot application), and between AI agents (such as an agent to sub-agent interaction in a coding agent). 

Such data is commonly generated and collected in many environments, including online meeting systems, contact centers, web-based AI chatbots, and desktop AI agent platforms. These store a range of data, including chat logs, transcripts, recordings, tool call requests and responses, reasoning, prompt context, sub-agent invocations and returns, meeting sidebar start and end, and so on. Most systems provide a way to store such information, but there are not many standards or interoperability within the storage or transmission mechanisms or formats.

Furthermore, the traditional proprietary storage formats have varied wildly acorss the type of originating system - one type of format for an online meeting platform, a different one for a contact center call, and a wide range of formats to capture AI Agent conversations. As the lines become blurry between human and AI agent participants in a conversation, it is imperative that a singular format is capable of representing a conversation - whether it be amongst humans, AI agents, or some combination therein. 

The two opposing forces influencing such information passing are (1) trying to enforce privacy of personal data and (2) providing the ability and interest to use conversations in various ways, including analysis, curation of training data, troubleshooting, auditing, and even production as evidence in legal or civil cases. 

For the first force, the key is knowing what information exists, where it comes from, and being able to protect it appropriately. Or being able to refer to conversations without exposing their contents or assure suitable redaction has been performed.

For the second force the key is being able to integrate data from multiple channels of communication (phone calls, chat systems, email, etc.), representing multiple actors in the conversation (human users, AI agents, sub-agents), and capturing content (spoken voice or a chat response),  actions performed (e.g., a tool call or sub-agent invocation), events that occurred (a DTMF input or reasoning statement), and meta-data related to all of the above (model vendor and version, user agent desktop application version, etc). With a full and traceable record, it becomes possible to move data when transitioning from one software or provider to another, exchange signed records for audit and troubleshooting, or publish records for transparency.


The use of a standard for a conversation data container will focus on the following data exchange scenarios:
  * Communication System or AI Agent System to Data Owner/Consumer
  * Data Owner/Consumer to Analysis or Storage Services
  * Analysis Services to Data Consumer
  

The Communication System is an application, service or system which is able to capture the conversation metadata and the conversation. The AI Agent system is a type of communication system in which one of the actors is an AI agent. The Analysis Services will add data to an existing conversation data container.
It should be noted that these entities are not always distinct.
For example, the Communications System may also provide some analysis data.
It should also be noted that these entities may also exist in multitude.
For example, an enterprise may have a communication system for each mode (e.g., text, message, voice, video) or for each corporate product or division.

 
## In Scope

The scope of the VCON working group is:

### Standards Track Baseline Format

  * Define a JSON based standard container and Media type to contain and/or reference conversational data, including call style metadata, recordings, data exchanged or presented in the conversations, conversation analysis, transcriptions, translations and annotations, forming a baseline format which can be extended to include details specific to AI Agents
  * Define/specify the use of an existing mechanism for proving integrity and optionally authenticity of the conversation data
  * Define/specify the use of an existing mechanism for encrypting of the objects enclosed in the vCon conversation data container to provide privacy of the participants and/or confidentiality of the data independent of transport such that some parts of the vCon may be disclosed to different parties
  * Determine if there is need for defining media types and standard containers for some small set of analysis, annotation or transcription data

### Standards Track AI Agent Extension

  * Define an extension to the baseline format that contains meta-data unique to AI Agents and AI agent conversations, that are important to capture in an interchangeable format. These include, but are not limited to: tool call requests and responses; model details (vendor, version, parameters, and so on); token usage; prompts, prompt templates,  and other input not communicated to other participants. reasoning and other output not communicated to other participants. 

### Informational Internet Draft Output
The Working Group may develop use cases in drafts for reference, but there is no expectation they will be published as an RFC.
The use cases should include considerations for data minimization.
The Working Group may consider the following as well as other use cases:

  * Contact Center Data Exchange
  * Non-Contact Center Data Exchange with Customer Relationship Management (CRM)
  * Conversations of Record including ECRIT Environments
  * Message History Data Exchange

## Out of Scope

The following are out of scope:

  * Algorithms or methodologies for transcription, translation, redaction, analysis or annotation of call data
  * Real-time streaming or updating of conversational data
  * Transport mechanisms
  * Storage or databases specifications
  * Key management
  * API definitions
  * Definition of a new object security model  
    It is expected that JOSE or other existing IETF technology is sufficient.


