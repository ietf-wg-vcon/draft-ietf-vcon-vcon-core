{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "$id": "https://ietf.org/vcon/schemas/unsigned-vcon.json",
  "title": "vCon - Unsigned Form",
  "description": "JSON schema for the unsigned form of vCon (Con
    versational Data Container) as defined in draft-ietf-vcon-vc
    on-core-02",
  "type": "object",
  "required": ["vcon", "uuid"],
  "properties": {
    "vcon": {
      "type": "string",
      "description": "Syntactic version of the JSON format. For 
        this document, must be '0.4.0'",
      "const": "0.4.0"
    },
    "uuid": {
      "type": "string",
      "description": "Globally unique identifier for the vCon. S
        HOULD be a version 8 UUID",
      "format": "uuid"
    },
    "subject": {
      "type": "string",
      "description": "Subject or topic of the conversation"
    },
    "created_at": {
      "type": "string",
      "description": "Creation time of this vCon in RFC3339 form
        at",
      "format": "date-time"
    },
    "updated_at": {
      "type": "string",
      "description": "Last modified time of this vCon in RFC3339
         format",
      "format": "date-time"
    },
    "extensions": {
      "type": "array",
      "description": "List of names of all vCon extensions used 
        by this vCon",
      "items": {"type": "string"}
    },
    "critical": {
      "type": "array",
      "description": "List of extension names that a consumer MU
        ST support to safely process this vCon",
      "items": {"type": "string"}
    },
    "redacted": {
      "description": "Reference to the unredacted or less redact
        ed prior vCon instance. Object form requires 'type' plus
         one of the vCon reference forms (uuid, inline, or url+c
        ontent_hash). May also be an empty object.",
      "oneOf": [
        {"type": "object", "additionalProperties": false, "prope
          rties": {}},
        {
          "type": "object",
          "required": ["type", "uuid"],
          "properties": {
            "type": {"type": "string"},
            "uuid": {"type": "string", "format": "uuid"}
          }
        },
        {
          "type": "object",
          "required": ["type", "body", "encoding"],
          "properties": {
            "type": {"type": "string"},
            "body": {"type": "string"},
            "encoding": {"type": "string", "enum": ["none", "jso
              n", "base64url"]},
            "mediatype": {"type": "string"},
            "filename": {"type": "string"}
          }
        },
        {
          "type": "object",
          "required": ["type", "url", "content_hash"],
          "properties": {
            "type": {"type": "string"},
            "url": {"type": "string", "format": "uri"},
            "content_hash": {"$ref": "#/definitions/ContentHash"
              },
            "mediatype": {"type": "string"},
            "filename": {"type": "string"}
          }
        }
      ]
    },
    "amended": {
      "description": "Reference to the prior vCon instance versi
        on that this vCon amends. One of the vCon reference form
        s (uuid, inline, or url+content_hash). May also be an em
        pty object.",
      "oneOf": [
        {"type": "object", "additionalProperties": false, "prope
          rties": {}},
        {
          "type": "object",
          "required": ["uuid"],
          "properties": {
            "uuid": {"type": "string", "format": "uuid"}
          }
        },
        {
          "type": "object",
          "required": ["body", "encoding"],
          "properties": {
            "body": {"type": "string"},
            "encoding": {"type": "string", "enum": ["none", "jso
              n", "base64url"]},
            "mediatype": {"type": "string"},
            "filename": {"type": "string"}
          }
        },
        {
          "type": "object",
          "required": ["url", "content_hash"],
          "properties": {
            "url": {"type": "string", "format": "uri"},
            "content_hash": {"$ref": "#/definitions/ContentHash"
              },
            "mediatype": {"type": "string"},
            "filename": {"type": "string"}
          }
        }
      ]
    },
    "group": {
      "type": "array",
      "description": "Array of vCon references that this vCon ag
        gregates",
      "items": {"$ref": "#/definitions/VconReference"}
    },
    "parties": {
      "type": "array",
      "description": "Array of Party Objects representing all pa
        rties involved in the conversation",
      "items": {"$ref": "#/definitions/Party"}
    },
    "dialog": {
      "type": "array",
      "description": "Array of Dialog Objects containing the cap
        tured conversation content",
      "items": {"$ref": "#/definitions/Dialog"}
    },
    "attachments": {
      "type": "array",
      "description": "Array of Attachment Objects for ancillary 
        documents related to the conversation",
      "items": {"$ref": "#/definitions/Attachment"}
    },
    "analysis": {
      "type": "array",
      "description": "Array of Analysis Objects containing analy
        sis performed on the conversational data",
      "items": {"$ref": "#/definitions/Analysis"}
    }
  },
  "definitions": {
    "ContentHash": {
      "description": "Content hash formatted as 'sha512-' follow
        ed by the base64url-encoded SHA-512 digest. May be a sin
        gle string or an array of such strings.",
      "oneOf": [
        {"type": "string"},
        {"type": "array", "items": {"type": "string"}, "minItems
          ": 1}
      ]
    },
    "VconReference": {
      "description": "Reference to another vCon by uuid, inline 
        content, or url + content_hash",
      "oneOf": [
        {
          "type": "object",
          "required": ["uuid"],
          "properties": {
            "uuid": {"type": "string", "format": "uuid"}
          }
        },
        {
          "type": "object",
          "required": ["body", "encoding"],
          "properties": {
            "body": {"type": "string"},
            "encoding": {"type": "string", "enum": ["none", "jso
              n", "base64url"]},
            "mediatype": {"type": "string"},
            "filename": {"type": "string"}
          }
        },
        {
          "type": "object",
          "required": ["url", "content_hash"],
          "properties": {
            "url": {"type": "string", "format": "uri"},
            "content_hash": {"$ref": "#/definitions/ContentHash"
              },
            "mediatype": {"type": "string"},
            "filename": {"type": "string"}
          }
        }
      ]
    },
    "Party": {
      "type": "object",
      "description": "Represents a party involved in the convers
        ation. All properties are optional; extensions MAY add f
        urther properties.",
      "properties": {
        "tel": {"type": "string", "description": "TEL URL (RFC39
          66) for the party"},
        "str": {"type": "string", "description": "STIR PASSporT 
          in JWS Compact Serialization form"},
        "mailto": {"type": "string", "description": "MAILTO URL 
          (RFC6068) for the party", "format": "email"},
        "name": {"type": "string", "description": "Name of the p
          arty"},
        "validation": {"type": "string", "description": "Label i
          dentifying the method of identity validation used"},
        "gmlpos": {"type": "string", "description": "Geographic 
          location in GML pos format (latitude longitude)"},
        "civicaddress": {"$ref": "#/definitions/Civicaddress"},
        "uuid": {"type": "string", "description": "Unique identi
          fier for this participant", "format": "uuid"},
        "role": {"type": "string", "description": "Role of the p
          arty in the conversation"}
      }
    },
    "Civicaddress": {
      "type": "object",
      "description": "Civic address information for a party's lo
        cation",
      "properties": {
        "country": {"type": "string"},
        "a1": {"type": "string", "description": "National subdiv
          ision (state/province)"},
        "a2": {"type": "string", "description": "County/parish/d
          istrict"},
        "a3": {"type": "string", "description": "City/township"}
          ,
        "a4": {"type": "string", "description": "City division/b
          orough"},
        "a5": {"type": "string", "description": "Neighborhood/bl
          ock"},
        "a6": {"type": "string", "description": "Street"},
        "prd": {"type": "string", "description": "Leading street
           direction"},
        "pod": {"type": "string", "description": "Trailing stree
          t suffix"},
        "sts": {"type": "string", "description": "Street suffix"
          },
        "hno": {"type": "string", "description": "House number"}
          ,
        "hns": {"type": "string", "description": "House number s
          uffix"},
        "lmk": {"type": "string", "description": "Landmark"},
        "loc": {"type": "string", "description": "Additional loc
          ation info"},
        "flr": {"type": "string", "description": "Floor"},
        "nam": {"type": "string", "description": "Name/occupant"
          },
        "pc": {"type": "string", "description": "Postal code"}
      }
    },
    "Dialog": {
      "type": "object",
      "description": "Represents a segment of captured conversat
        ion. The required fields depend on 'type'; see CDDL for 
        the precise per-type shape.",
      "required": ["type", "start"],
      "properties": {
        "type": {
          "type": "string",
          "enum": ["recording", "text", "transfer", "incomplete"
            ],
          "description": "Type of dialog"
        },
        "start": {"type": "string", "format": "date-time", "desc
          ription": "Start time of the dialog in RFC3339 format"
          },
        "duration": {"type": "number", "minimum": 0, "descriptio
          n": "Duration in seconds"},
        "parties": {
          "description": "Index/indices of parties in the partie
            s array",
          "oneOf": [
            {"type": "integer", "minimum": 0},
            {
              "type": "array",
              "items": {
                "oneOf": [
                  {"type": "integer", "minimum": 0},
                  {"type": "array", "items": {"type": "integer",
                     "minimum": 0}}
                ]
              }
            }
          ]
        },
        "originator": {"type": "integer", "minimum": 0, "descrip
          tion": "Index of the originating party"},
        "mediatype": {"type": "string", "description": "Media ty
          pe of the dialog content"},
        "filename": {"type": "string", "description": "Original 
          filename of the dialog content"},
        "body": {"type": "string", "description": "Inline conten
          t of the dialog"},
        "encoding": {"type": "string", "enum": ["none", "json", 
          "base64url"], "description": "Encoding type for inline
           content"},
        "url": {"type": "string", "format": "uri", "description"
          : "HTTPS URL for externally referenced content"},
        "content_hash": {"$ref": "#/definitions/ContentHash"},
        "campaign": {"type": "string", "description": "Campaign 
          identifier associated with the dialog"},
        "interaction": {"type": "string", "description": "Intera
          ction identifier associated with the dialog"},
        "disposition": {"type": "string", "description": "Reason
           for incomplete dialog (required when type is 'incompl
          ete')"},
        "party_history": {
          "type": "array",
          "items": {"$ref": "#/definitions/PartyHistory"},
          "description": "History of party join/drop/hold/mute e
            vents"
        },
        "transferee": {"type": "integer", "minimum": 0, "descrip
          tion": "Party index of the transferee (for transfer ty
          pe)"},
        "transferor": {"type": "integer", "minimum": 0, "descrip
          tion": "Party index of the transferor (for transfer ty
          pe)"},
        "transfer_target": {"type": "integer", "minimum": 0, "de
          scription": "Party index of the transfer target (for t
          ransfer type)"},
        "original": {"type": "integer", "minimum": 0, "descripti
          on": "Dialog index of the original conversation (for t
          ransfer type)"},
        "consultation": {"type": "integer", "minimum": 0, "descr
          iption": "Dialog index of the consultation (for transf
          er type)"},
        "target_dialog": {"type": "integer", "minimum": 0, "desc
          ription": "Dialog index of the target dialog (for tran
          sfer type)"}
      }
    },
    "PartyHistory": {
      "type": "object",
      "description": "Records a party event during the dialog",
      "required": ["party", "event", "time"],
      "properties": {
        "party": {"type": "integer", "minimum": 0, "description"
          : "Index of the party"},
        "event": {
          "type": "string",
          "enum": ["join", "drop", "hold", "unhold", "mute", "un
            mute"],
          "description": "Type of event"
        },
        "time": {"type": "string", "format": "date-time", "descr
          iption": "Time of the event in RFC3339 format"}
      }
    },
    "Attachment": {
      "type": "object",
      "description": "Represents an ancillary document related t
        o the conversation",
      "required": ["purpose", "party", "dialog"],
      "properties": {
        "purpose": {"type": "string", "description": "Text descr
          iption of what the attachment is for"},
        "start": {"type": "string", "format": "date-time", "desc
          ription": "Time the attachment was sent/exchanged in R
          FC3339 format"},
        "party": {"type": "integer", "minimum": 0, "description"
          : "Index of the party that contributed the attachment"
          },
        "dialog": {"type": "integer", "minimum": 0, "description
          ": "Index of the dialog this attachment is part of"},
        "mediatype": {"type": "string", "description": "Media ty
          pe of the attachment"},
        "filename": {"type": "string", "description": "Original 
          filename of the attachment"},
        "body": {"type": "string", "description": "Inline conten
          t of the attachment"},
        "encoding": {"type": "string", "enum": ["none", "json", 
          "base64url"], "description": "Encoding type for inline
           content"},
        "url": {"type": "string", "format": "uri", "description"
          : "HTTPS URL for externally referenced attachment"},
        "content_hash": {"$ref": "#/definitions/ContentHash"}
      }
    },
    "Analysis": {
      "type": "object",
      "description": "Represents analysis performed on the conve
        rsational data",
      "required": ["type", "vendor"],
      "properties": {
        "type": {"type": "string", "description": "Semantic type
           of analysis (e.g., transcript, summary, sentiment, tr
          anslation, tts)"},
        "dialog": {
          "description": "Index or array of indices of dialog ob
            jects this analysis is based on",
          "oneOf": [
            {"type": "integer", "minimum": 0},
            {"type": "array", "items": {"type": "integer", "mini
              mum": 0}}
          ]
        },
        "mediatype": {"type": "string", "description": "Media ty
          pe of the analysis file"},
        "filename": {"type": "string", "description": "Original 
          filename of the analysis data"},
        "vendor": {"type": "string", "description": "Vendor that
           generated the analysis"},
        "product": {"type": "string", "description": "Product na
          me to differentiate from other vendor products"},
        "schema": {"type": "string", "description": "Token, labe
          l, or URL identifying the data format/schema of the an
          alysis body"},
        "body": {"type": "string", "description": "Inline conten
          t of the analysis"},
        "encoding": {"type": "string", "enum": ["none", "json", 
          "base64url"], "description": "Encoding type for inline
           content"},
        "url": {"type": "string", "format": "uri", "description"
          : "HTTPS URL for externally referenced analysis"},
        "content_hash": {"$ref": "#/definitions/ContentHash"}
      }
    }
  }
}
