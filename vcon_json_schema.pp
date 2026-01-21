{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "$id": "https://ietf.org/vcon/schemas/unsigned-vcon.json",
  "title": "vCon - Unsigned Form",
  "description": "JSON schema for the unsigned form of vCon (Con
    ersational Data Container) as defined in draft-ietf-vcon-vcon
    -core-01, sections 1-4",
  "type": "object",
  "required": ["uuid", "created_at", "parties"],
  "properties": {
    "vcon": {
      "type": "string",
      "description": "DEPRECATED: Syntactic version of the JSON 
        ormat. For this document, must be '0.4.0'",
      "const": "0.4.0"
    },
    "uuid": {
      "type": "string",
      "description": "Globally unique identifier for the vCon. S
        OULD be a version 8 UUID",
      "format": "uuid"
    },
    "extensions": {
      "type": "array",
      "description": "List of names of all vCon extensions for a
        y parameters not defined in the core schema",
      "items": {
        "type": "string"
      }
    },
    "critical": {
      "type": "array",
      "description": "List of extension names that are incompati
        le with the core vCon schema and require explicit support
        ",
      "items": {
        "type": "string"
      }
    },
    "created_at": {
      "type": "string",
      "description": "Creation time of this vCon in RFC3339 form
        t",
      "format": "date-time"
    },
    "updated_at": {
      "type": "string",
      "description": "Last modified time of this vCon in RFC3339
        format",
      "format": "date-time"
    },
    "subject": {
      "type": "string",
      "description": "Subject or topic of the conversation"
    },
    "redacted": {
      "type": "object",
      "description": "Reference to the unredacted or less redact
        d vCon instance version",
      "required": ["uuid", "type"],
      "properties": {
        "uuid": {
          "type": "string",
          "description": "UUID of the unredacted/prior vCon inst
            nce version",
          "format": "uuid"
        },
        "type": {
          "type": "string",
          "description": "Type of redaction performed"
        },
        "url": {
          "type": "string",
          "description": "HTTPS URL where the referenced vCon is
            stored",
          "format": "uri"
        },
        "content_hash": {
          "oneOf": [
            {"type": "string"},
            {"type": "array", "items": {"type": "string"}}
          ],
          "description": "Hash(es) of the external content using
            format: algorithm-base64url_encoded_hash"
        }
      }
    },
    "amended": {
      "type": "object",
      "description": "Reference to the prior vCon instance versi
        n that this vCon amends",
      "properties": {
        "uuid": {
          "type": "string",
          "description": "UUID of the prior vCon instance versio
            ",
          "format": "uuid"
        },
        "url": {
          "type": "string",
          "description": "HTTPS URL where the referenced vCon is
            stored",
          "format": "uri"
        },
        "content_hash": {
          "oneOf": [
            {"type": "string"},
            {"type": "array", "items": {"type": "string"}}
          ],
          "description": "Hash(es) of the external content (requ
            red if url is provided)"
        }
      }
    },
    "group": {
      "type": "array",
      "description": "Array of related vCons that aggregate into
        this conversation",
      "items": {
        "type": "object",
        "description": "Group Object - details not fully specifi
          d in sections 1-4"
      }
    },
    "parties": {
      "type": "array",
      "description": "Array of Party Objects representing all pa
        ties involved in the conversation",
      "items": {
        "$ref": "#/definitions/Party"
      }
    },
    "dialog": {
      "type": "array",
      "description": "Array of Dialog Objects containing the cap
        ured conversation content",
      "items": {
        "$ref": "#/definitions/Dialog"
      }
    },
    "analysis": {
      "type": "array",
      "description": "Array of Analysis Objects containing analy
        is performed on the conversational data",
      "items": {
        "$ref": "#/definitions/Analysis"
      }
    },
    "attachments": {
      "type": "array",
      "description": "Array of Attachment Objects for ancillary 
        ocuments related to the conversation",
      "items": {
        "$ref": "#/definitions/Attachment"
      }
    }
  },
  "definitions": {
    "Party": {
      "type": "object",
      "description": "Represents a party involved in the convers
        tion",
      "properties": {
        "tel": {
          "type": "string",
          "description": "TEL URL (RFC3966) for the party"
        },
        "sip": {
          "type": "string",
          "description": "SIP URL for the party"
        },
        "stir": {
          "type": "string",
          "description": "STIR PASSporT in JWS Compact Serializa
            ion form"
        },
        "mailto": {
          "type": "string",
          "description": "MAILTO URL (RFC6068) for the party",
          "format": "email"
        },
        "name": {
          "type": "string",
          "description": "Name of the party"
        },
        "did": {
          "type": "string",
          "description": "Decentralized Identifier (DID) URI for
            the party"
        },
        "validation": {
          "type": "string",
          "description": "Label or token identifying the method 
            f identity validation used"
        },
        "gmlpos": {
          "type": "string",
          "description": "Geographic location in GML pos format 
            latitude longitude)"
        },
        "civicaddress": {
          "$ref": "#/definitions/Civicaddress"
        },
        "uuid": {
          "type": "string",
          "description": "Unique identifier for the participant",
          "format": "uuid"
        }
      }
    },
    "Civicaddress": {
      "type": "object",
      "description": "Civic address information for a party's lo
        ation",
      "properties": {
        "country": {"type": "string"},
        "a1": {"type": "string", "description": "National subdiv
          sion (state/province)"},
        "a2": {"type": "string", "description": "County/parish/d
          strict"},
        "a3": {"type": "string", "description": "City/township"},
        "a4": {"type": "string", "description": "City division/b
          rough"},
        "a5": {"type": "string", "description": "Neighborhood/bl
          ck"},
        "a6": {"type": "string", "description": "Street"},
        "prd": {"type": "string", "description": "Leading street
          direction"},
        "pod": {"type": "string", "description": "Trailing stree
           suffix"},
        "sts": {"type": "string", "description": "Street suffix"
        "hno": {"type": "string", "description": "House number"},
        "hns": {"type": "string", "description": "House number s
          ffix"},
        "lmk": {"type": "string", "description": "Landmark"},
        "loc": {"type": "string", "description": "Additional loc
          tion info"},
        "flr": {"type": "string", "description": "Floor"},
        "nam": {"type": "string", "description": "Name/occupant"
        "pc": {"type": "string", "description": "Postal code"}
      }
    },
    "Dialog": {
      "type": "object",
      "description": "Represents a segment of captured conversat
        on",
      "required": ["type", "start"],
      "properties": {
        "type": {
          "type": "string",
          "enum": ["recording", "text", "transfer", "incomplete"
          "description": "Type of dialog"
        },
        "start": {
          "type": "string",
          "format": "date-time",
          "description": "Start time of the dialog in RFC3339 fo
            mat"
        },
        "duration": {
          "anyOf": [
            {"type": "integer", "minimum": 0},
            {"type": "number", "minimum": 0}
          ],
          "description": "Duration in seconds"
        },
        "parties": {
          "anyOf": [
            {"type": "integer", "minimum": 0},
            {"type": "array", "items": {"type": "integer", "mini
              um": 0}},
            {
              "type": "array",
              "items": {
                "anyOf": [
                  {"type": "integer", "minimum": 0},
                  {"type": "array", "items": {"type": "integer",
                    "minimum": 0}}
                ]
              }
            }
          ],
          "description": "Index/indices of parties in the partie
             array"
        },
        "originator": {
          "type": "integer",
          "minimum": 0,
          "description": "Index of the originating party if firs
             party is not the originator"
        },
        "mediatype": {
          "type": "string",
          "description": "Media type of the dialog content"
        },
        "filename": {
          "type": "string",
          "description": "Original filename of the dialog conten
        },
        "body": {
          "type": "string",
          "description": "Inline content of the dialog (for inli
            e files)"
        },
        "encoding": {
          "type": "string",
          "enum": ["base64url", "json", "none"],
          "description": "Encoding type for inline content"
        },
        "url": {
          "type": "string",
          "format": "uri",
          "description": "HTTPS URL for externally referenced co
            tent"
        },
        "content_hash": {
          "oneOf": [
            {"type": "string"},
            {"type": "array", "items": {"type": "string"}}
          ],
          "description": "Hash(es) of external content"
        },
        "disposition": {
          "type": "string",
          "enum": ["no-answer", "congestion", "failed", "busy", 
            hung-up", "voicemail-no-message"],
          "description": "Reason for incomplete dialog (required
            for incomplete type)"
        },
        "session_id": {
          "oneOf": [
            {"$ref": "#/definitions/SessionId"},
            {"type": "array", "items": {"$ref": "#/definitions/S
              ssionId"}},
            {
              "type": "array",
              "items": {
                "oneOf": [
                  {"$ref": "#/definitions/SessionId"},
                  {"type": "array", "items": {"$ref": "#/definit
                    ons/SessionId"}}
                ]
              }
            }
          ],
          "description": "Session ID(s) for the dialog"
        },
        "party_history": {
          "type": "array",
          "items": {"$ref": "#/definitions/PartyHistory"},
          "description": "History of party join/drop/hold/mute e
            ents"
        },
        "transferee": {
          "type": "integer",
          "minimum": 0,
          "description": "Party index of the transferee (for tra
            sfer type)"
        },
        "transferor": {
          "type": "integer",
          "minimum": 0,
          "description": "Party index of the transferor (for tra
            sfer type)"
        },
        "transfer_target": {
          "oneOf": [
            {"type": "integer", "minimum": 0},
            {"type": "array", "items": {"type": "integer", "mini
              um": 0}}
          ],
          "description": "Party index/indices of the transfer ta
            get (for transfer type)"
        },
        "original": {
          "oneOf": [
            {"type": "integer", "minimum": -1},
            {"type": "array", "items": {"type": "integer", "mini
              um": -1}}
          ],
          "description": "Dialog index/indices of original conve
            sation (for transfer type)"
        },
        "consultation": {
          "oneOf": [
            {"type": "integer", "minimum": -1},
            {"type": "array", "items": {"type": "integer", "mini
              um": -1}}
          ],
          "description": "Dialog index/indices of consultation (
            or transfer type)"
        },
        "target_dialog": {
          "oneOf": [
            {"type": "integer", "minimum": -1},
            {"type": "array", "items": {"type": "integer", "mini
              um": -1}}
          ],
          "description": "Dialog index/indices of target dialog 
            for transfer type)"
        },
        "application": {
          "type": "string",
          "description": "Application, communication channel or 
            ontext of the conversation"
        },
        "message_id": {
          "type": "string",
          "description": "Unique message identifier from the mes
            aging system"
        }
      }
    },
    "SessionId": {
      "type": "object",
      "description": "Session identifier with local and remote U
        IDs",
      "required": ["local", "remote"],
      "properties": {
        "local": {
          "type": "string",
          "description": "Local UUID for the session"
        },
        "remote": {
          "type": "string",
          "description": "Remote UUID for the session"
        }
      }
    },
    "PartyHistory": {
      "type": "object",
      "description": "Records party events during the dialog",
      "required": ["party", "time", "event"],
      "properties": {
        "party": {
          "type": "integer",
          "minimum": 0,
          "description": "Index of the party"
        },
        "time": {
          "type": "string",
          "format": "date-time",
          "description": "Time of the event in RFC3339 format"
        },
        "event": {
          "type": "string",
          "enum": ["join", "drop", "hold", "unhold", "mute", "un
            ute", "keydown", "keyup"],
          "description": "Type of event"
        },
        "button": {
          "type": "string",
          "description": "DTMF digit, character or string (requi
            ed for keydown/keyup events)"
        }
      }
    },
    "Attachment": {
      "type": "object",
      "description": "Represents an ancillary document related t
         the conversation",
      "required": ["start", "party", "dialog"],
      "properties": {
        "start": {
          "type": "string",
          "format": "date-time",
          "description": "Time the attachment was sent/exchanged
            in RFC3339 format"
        },
        "party": {
          "type": "integer",
          "minimum": 0,
          "description": "Index of the party that contributed th
             attachment"
        },
        "dialog": {
          "type": "integer",
          "minimum": 0,
          "description": "Index of the dialog this attachment is
            part of"
        },
        "mediatype": {
          "type": "string",
          "description": "Media type of the attachment"
        },
        "filename": {
          "type": "string",
          "description": "Original filename of the attachment"
        },
        "body": {
          "type": "string",
          "description": "Inline content of the attachment (for 
            nline files)"
        },
        "encoding": {
          "type": "string",
          "enum": ["base64url", "json", "none"],
          "description": "Encoding type for inline content"
        },
        "url": {
          "type": "string",
          "format": "uri",
          "description": "HTTPS URL for externally referenced at
            achment"
        },
        "content_hash": {
          "oneOf": [
            {"type": "string"},
            {"type": "array", "items": {"type": "string"}}
          ],
          "description": "Hash(es) of external content"
        }
      }
    },
    "Analysis": {
      "type": "object",
      "description": "Represents analysis performed on the conve
        sational data",
      "required": ["type", "vendor"],
      "properties": {
        "type": {
          "type": "string",
          "description": "Semantic type of analysis (e.g., trans
            ript, translation, summary, sentiment)"
        },
        "dialog": {
          "oneOf": [
            {"type": "integer", "minimum": 0},
            {"type": "array", "items": {"type": "integer", "mini
              um": 0}}
          ],
          "description": "Index/indices of dialog objects this a
            alysis is based on"
        },
        "mediatype": {
          "type": "string",
          "description": "Media type of the analysis file"
        },
        "filename": {
          "type": "string",
          "description": "Original filename of the analysis data"
        },
        "vendor": {
          "type": "string",
          "description": "Vendor or product name that generated 
            he analysis"
        },
        "product": {
          "type": "string",
          "description": "Product name to differentiate from oth
            r vendor products"
        },
        "schema": {
          "type": "string",
          "description": "Token or label for the data format/sch
            ma of the analysis"
        },
        "body": {
          "type": "string",
          "description": "Inline content of the analysis (for in
            ine files)"
        },
        "encoding": {
          "type": "string",
          "enum": ["base64url", "json", "none"],
          "description": "Encoding type for inline content"
        },
        "url": {
          "type": "string",
          "format": "uri",
          "description": "HTTPS URL for externally referenced an
            lysis"
        },
        "content_hash": {
          "oneOf": [
            {"type": "string"},
            {"type": "array", "items": {"type": "string"}}
          ],
          "description": "Hash(es) of external content"
        }
      }
    }
  }
}
