{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "$id": "https://ietf.org/vcon/schemas/unsigned-vcon.json",
  "title": "vCon - Unsigned Form",
  "description": "JSON schema for the unsigned form of vCon (Conv
    ersational Data Container) as defined in RFCXXXX",
  "type": "object",
  "required": [
    "uuid",
    "created_at"
  ],
  "properties": {
    "vcon": {
      "type": "string",
      "description": "DEPRECATED: Syntactic version of the JSON f
        ormat. This was used to indicate schema changes in the In
        ternet-Draft versions",
      "const": "0.5.0"
    },
    "uuid": {
      "type": "string",
      "description": "Globally unique identifier for the vCon. SH
        OULD be a version 8 UUID",
      "format": "uuid"
    },
    "extensions": {
      "type": "array",
      "description": "List of names of all vCon extensions used b
        y this vCon",
      "items": {
        "type": "string"
      }
    },
    "critical": {
      "type": "array",
      "description": "List of extension names that a consumer MUS
        T support to safely process this vCon",
      "items": {
        "type": "string"
      }
    },
    "created_at": {
      "type": "string",
      "description": "Creation time of this vCon in RFC3339 forma
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
    "redacted_from": {
      "type": "object",
      "description": "Reference to the unredacted or less redacte
        d vCon prior instance (Redacted_from Object); mutually ex
        clusive with amended_from",
      "required": [
        "type"
      ],
      "properties": {
        "uuid": {
          "type": "string",
          "description": "UUID of the unredacted or less redacted
             vCon prior instance",
          "format": "uuid"
        },
        "type": {
          "type": "string",
          "description": "Type of redaction performed; same set o
            f values as the type parameter of the Redacted_string
             Object"
        },
        "url": {
          "type": "string",
          "description": "HTTPS URL where the referenced vCon is 
            stored",
          "format": "uri"
        },
        "content_hash": {
          "oneOf": [
            {
              "type": "string"
            },
            {
              "type": "array",
              "items": {
                "type": "string"
              }
            }
          ],
          "description": "Hash(es) of the external content using 
            format: algorithm-base64url_encoded_hash"
        }
      },
      "dependencies": {
        "url": [
          "content_hash"
        ]
      }
    },
    "amended_from": {
      "type": "object",
      "description": "Reference to the prior vCon instance versio
        n that this vCon amends (Amended_from Object); mutually e
        xclusive with redacted_from",
      "properties": {
        "uuid": {
          "type": "string",
          "description": "UUID of the prior vCon instance version
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
            {
              "type": "string"
            },
            {
              "type": "array",
              "items": {
                "type": "string"
              }
            }
          ],
          "description": "Hash(es) of the external content (requi
            red if url is provided)"
        }
      },
      "dependencies": {
        "url": [
          "content_hash"
        ]
      },
      "if": {
        "not": {
          "required": [
            "url"
          ]
        }
      },
      "then": {
        "required": [
          "uuid"
        ],
        "$comment": "uuid is optional only if an external referen
          ce is provided"
      }
    },
    "redacted_strings": {
      "type": "array",
      "description": "Array of Redacted_string Objects, one for e
        ach unique substring replaced by __REDACTED_REF_# in the 
        vCon",
      "items": {
        "$ref": "#/definitions/RedactedString"
      }
    },
    "sessions": {
      "type": "array",
      "description": "Array of Session Objects, each grouping the
         Dialog and Event Objects of one session of the conversat
        ion",
      "items": {
        "$ref": "#/definitions/Session"
      }
    },
    "parties": {
      "type": "array",
      "description": "Array of Party Objects representing all par
        ties involved in the conversation",
      "items": {
        "$ref": "#/definitions/Party"
      }
    },
    "events": {
      "type": "array",
      "description": "Array of Event Objects; order is not signif
        icant, Event Objects are sequenced by their time paramete
        r",
      "items": {
        "$ref": "#/definitions/Event"
      }
    },
    "dialog": {
      "type": "array",
      "description": "Array of Dialog Objects containing the capt
        ured conversation content",
      "items": {
        "$ref": "#/definitions/Dialog"
      }
    },
    "analysis": {
      "type": "array",
      "description": "Array of Analysis Objects containing analys
        is performed on the conversational data",
      "items": {
        "$ref": "#/definitions/Analysis"
      }
    },
    "attachments": {
      "type": "array",
      "description": "Array of Attachment Objects for ancillary d
        ocuments related to the conversation",
      "items": {
        "$ref": "#/definitions/Attachment"
      }
    }
  },
  "definitions": {
    "Session": {
      "type": "object",
      "description": "Represents one session of the conversation 
        and references the Dialog Objects which are part of it; a
         Session Object with no parameters is permitted",
      "properties": {
        "start": {
          "type": "string",
          "format": "date-time",
          "description": "Start time of the session in RFC3339 fo
            rmat; SHOULD be present"
        },
        "duration": {
          "anyOf": [
            {
              "type": "integer",
              "minimum": 0
            },
            {
              "type": "number",
              "minimum": 0
            }
          ],
          "description": "Duration of the session in seconds"
        },
        "parties": {
          "type": "array",
          "items": {
            "type": "integer",
            "minimum": 0
          },
          "description": "Indices of the parties that are the rec
            eivers of the dialog in the session; SHOULD be presen
            t; the first party is the implied originator"
        },
        "originator": {
          "type": "integer",
          "minimum": 0,
          "description": "Index of the originating party; only pr
            ovided if the first party in parties is not the origi
            nator"
        },
        "session_id": {
          "$ref": "#/definitions/SessionId"
        },
        "sessions": {
          "type": "array",
          "items": {
            "$ref": "#/definitions/SessionReference"
          },
          "description": "Relationships to other Session Objects"
        },
        "dialog": {
          "type": "array",
          "items": {
            "type": "integer",
            "minimum": 0
          },
          "description": "Indices of the Dialog Objects which are
             part of the session"
        }
      }
    },
    "SessionReference": {
      "type": "object",
      "description": "Session_Reference Object: the relationship 
        of another Session Object to the Session Object which con
        tains this reference",
      "required": [
        "session",
        "type"
      ],
      "properties": {
        "session": {
          "type": "integer",
          "minimum": 0,
          "description": "Index of the referenced Session Object 
            in the sessions array"
        },
        "type": {
          "type": "string",
          "description": "Type of relationship: child, peer, prec
            ursor, breakout, or a value defined in a vCon extensi
            on"
        },
        "description": {
          "type": "string",
          "description": "Free form text description of the relat
            ionship"
        }
      }
    },
    "Party": {
      "type": "object",
      "description": "Represents a party involved in the conversa
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
          "description": "STIR PASSporT in JWS Compact Serializat
            ion form"
        },
        "mailto": {
          "type": "string",
          "description": "Email address for the party in any comm
            on form, including a bare address or a MAILTO URL"
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
          "description": "Label or token identifying the method o
            f identity validation used"
        },
        "gmlpos": {
          "type": "string",
          "description": "Geographic location in GML pos format (
            latitude longitude)"
        },
        "civicaddress": {
          "$ref": "#/definitions/Civicaddress"
        },
        "uuid": {
          "type": "string",
          "description": "Free form unique identifier for the par
            ticipant; not constrained to UUID syntax"
        },
        "type": {
          "type": "string",
          "description": "Participant type"
        },
        "org": {
          "type": "string",
          "description": "Organization to which the party belongs
            "
        },
        "dept": {
          "type": "string",
          "description": "Department to which the party belongs"
        }
      }
    },
    "Civicaddress": {
      "type": "object",
      "description": "Civic address information for a party's loc
        ation",
      "properties": {
        "country": {
          "type": "string"
        },
        "a1": {
          "type": "string",
          "description": "National subdivision (state/province)"
        },
        "a2": {
          "type": "string",
          "description": "County/parish/district"
        },
        "a3": {
          "type": "string",
          "description": "City/township"
        },
        "a4": {
          "type": "string",
          "description": "City division/borough"
        },
        "a5": {
          "type": "string",
          "description": "Neighborhood/block"
        },
        "a6": {
          "type": "string",
          "description": "Street"
        },
        "prd": {
          "type": "string",
          "description": "Leading street direction"
        },
        "pod": {
          "type": "string",
          "description": "Trailing street suffix"
        },
        "sts": {
          "type": "string",
          "description": "Street suffix"
        },
        "hno": {
          "type": "string",
          "description": "House number"
        },
        "hns": {
          "type": "string",
          "description": "House number suffix"
        },
        "lmk": {
          "type": "string",
          "description": "Landmark"
        },
        "loc": {
          "type": "string",
          "description": "Additional location info"
        },
        "flr": {
          "type": "string",
          "description": "Floor"
        },
        "nam": {
          "type": "string",
          "description": "Name/occupant"
        },
        "pc": {
          "type": "string",
          "description": "Postal code"
        }
      }
    },
    "Event": {
      "type": "object",
      "description": "Represents an event which occurred in a ses
        sion, such as a party joining, a key press or a transfer"
        ,
      "required": [
        "type",
        "time"
      ],
      "properties": {
        "type": {
          "type": "string",
          "description": "Type of event: join, drop, hold, unhold
            , mute, unmute, keydown, keyup, consultation-start, b
            lind-transfer, consultative-transfer, transfer-abando
            ned, channel-contributors, or a value defined in a vC
            on extension"
        },
        "time": {
          "type": "string",
          "format": "date-time",
          "description": "Time of the event in RFC3339 format"
        },
        "sessions": {
          "oneOf": [
            {
              "type": "integer",
              "minimum": 0
            },
            {
              "type": "array",
              "items": {
                "type": "integer",
                "minimum": 0
              }
            }
          ],
          "description": "Index or indices of the Session Objects
             in which the event occurred; the event applies only 
            to the listed Session Objects; for transfer event typ
            es, a single index to the Session Object for the orig
            inal call; MUST NOT be present for channel-contributo
            rs"
        },
        "party": {
          "type": "integer",
          "minimum": 0,
          "description": "Index of the party to which the event a
            pplies; for transfer event types, the Transferor; MUS
            T NOT be present for channel-contributors"
        },
        "dialog": {
          "type": "integer",
          "minimum": 0,
          "description": "Index of the Dialog Object to which the
             event relates; required for channel-contributors, wh
            ere it references a recording Dialog Object; SHOULD N
            OT be present for the other event types defined in RF
            CXXXX; an event type defined in a vCon extension may 
            allow an array of indices"
        },
        "channel": {
          "type": "integer",
          "minimum": 0,
          "description": "Index of the channel of the recording, 
            where 0 is the first channel (channel-contributors on
            ly)"
        },
        "contributors": {
          "anyOf": [
            {
              "type": "integer",
              "minimum": 0
            },
            {
              "type": "array",
              "items": {
                "type": "integer",
                "minimum": 0
              }
            },
            {
              "type": "null"
            }
          ],
          "description": "Index or indices of the parties contrib
            uting to the channel starting at the time of the even
            t; null or absent means no party contributes (channel
            -contributors only)"
        },
        "button": {
          "type": "string",
          "description": "DTMF digit, character or string (requir
            ed for keydown and keyup events)"
        },
        "transferee": {
          "type": "integer",
          "minimum": 0,
          "description": "Party index of the Transferee (transfer
             event types)"
        },
        "transfer_target": {
          "type": "integer",
          "minimum": 0,
          "description": "Party index of the Transfer Target (tra
            nsfer event types; optional for transfer-abandoned)"
        },
        "consultation": {
          "type": "integer",
          "minimum": 0,
          "description": "Session index of the consultative call 
            (consultation-start and consultative-transfer; option
            al for transfer-abandoned)"
        },
        "target_session": {
          "type": "integer",
          "minimum": 0,
          "description": "Session index of the target call (blind
            -transfer and consultative-transfer)"
        }
      },
      "allOf": [
        {
          "if": {
            "properties": {
              "type": {
                "enum": [
                  "join",
                  "drop",
                  "hold",
                  "unhold",
                  "mute",
                  "unmute",
                  "keydown",
                  "keyup",
                  "consultation-start",
                  "blind-transfer",
                  "consultative-transfer",
                  "transfer-abandoned"
                ]
              }
            },
            "required": [
              "type"
            ]
          },
          "then": {
            "required": [
              "sessions",
              "party"
            ],
            "not": {
              "anyOf": [
                {
                  "required": [
                    "channel"
                  ]
                },
                {
                  "required": [
                    "contributors"
                  ]
                }
              ]
            }
          }
        },
        {
          "if": {
            "properties": {
              "type": {
                "enum": [
                  "consultation-start",
                  "blind-transfer",
                  "consultative-transfer",
                  "transfer-abandoned"
                ]
              }
            },
            "required": [
              "type"
            ]
          },
          "then": {
            "properties": {
              "sessions": {
                "type": "integer",
                "minimum": 0
              }
            }
          }
        },
        {
          "if": {
            "properties": {
              "type": {
                "enum": [
                  "join",
                  "drop",
                  "hold",
                  "unhold",
                  "mute",
                  "unmute"
                ]
              }
            },
            "required": [
              "type"
            ]
          },
          "then": {
            "not": {
              "anyOf": [
                {
                  "required": [
                    "button"
                  ]
                },
                {
                  "required": [
                    "transferee"
                  ]
                },
                {
                  "required": [
                    "transfer_target"
                  ]
                },
                {
                  "required": [
                    "consultation"
                  ]
                },
                {
                  "required": [
                    "target_session"
                  ]
                }
              ]
            }
          }
        },
        {
          "if": {
            "properties": {
              "type": {
                "enum": [
                  "keydown",
                  "keyup"
                ]
              }
            },
            "required": [
              "type"
            ]
          },
          "then": {
            "required": [
              "button"
            ],
            "not": {
              "anyOf": [
                {
                  "required": [
                    "transferee"
                  ]
                },
                {
                  "required": [
                    "transfer_target"
                  ]
                },
                {
                  "required": [
                    "consultation"
                  ]
                },
                {
                  "required": [
                    "target_session"
                  ]
                }
              ]
            }
          }
        },
        {
          "if": {
            "properties": {
              "type": {
                "const": "consultation-start"
              }
            },
            "required": [
              "type"
            ]
          },
          "then": {
            "required": [
              "transferee",
              "transfer_target",
              "consultation"
            ],
            "not": {
              "anyOf": [
                {
                  "required": [
                    "button"
                  ]
                },
                {
                  "required": [
                    "target_session"
                  ]
                }
              ]
            }
          }
        },
        {
          "if": {
            "properties": {
              "type": {
                "const": "blind-transfer"
              }
            },
            "required": [
              "type"
            ]
          },
          "then": {
            "required": [
              "transferee",
              "transfer_target",
              "target_session"
            ],
            "not": {
              "anyOf": [
                {
                  "required": [
                    "button"
                  ]
                },
                {
                  "required": [
                    "consultation"
                  ]
                }
              ]
            }
          }
        },
        {
          "if": {
            "properties": {
              "type": {
                "const": "consultative-transfer"
              }
            },
            "required": [
              "type"
            ]
          },
          "then": {
            "required": [
              "transferee",
              "transfer_target",
              "consultation",
              "target_session"
            ],
            "not": {
              "anyOf": [
                {
                  "required": [
                    "button"
                  ]
                }
              ]
            }
          }
        },
        {
          "if": {
            "properties": {
              "type": {
                "const": "transfer-abandoned"
              }
            },
            "required": [
              "type"
            ]
          },
          "then": {
            "required": [
              "transferee"
            ],
            "not": {
              "anyOf": [
                {
                  "required": [
                    "button"
                  ]
                },
                {
                  "required": [
                    "target_session"
                  ]
                }
              ]
            }
          }
        },
        {
          "if": {
            "properties": {
              "type": {
                "const": "channel-contributors"
              }
            },
            "required": [
              "type"
            ]
          },
          "then": {
            "required": [
              "dialog",
              "channel"
            ],
            "not": {
              "anyOf": [
                {
                  "required": [
                    "sessions"
                  ]
                },
                {
                  "required": [
                    "party"
                  ]
                },
                {
                  "required": [
                    "button"
                  ]
                },
                {
                  "required": [
                    "transferee"
                  ]
                },
                {
                  "required": [
                    "transfer_target"
                  ]
                },
                {
                  "required": [
                    "consultation"
                  ]
                },
                {
                  "required": [
                    "target_session"
                  ]
                }
              ]
            }
          }
        }
      ],
      "$comment": "The rules for each known type follow the Event
         Object Parameter Applicability by Type tables. SHOULD NO
        T statements, such as dialog in the event types other tha
        n channel-contributors, are not enforced. An Event Object
         with a type which is not listed is only checked for the 
        parameters common to all types."
    },
    "Dialog": {
      "type": "object",
      "description": "Represents a segment of captured conversati
        on; an empty Dialog Object holds a position in the dialog
         array",
      "anyOf": [
        {
          "required": [
            "type"
          ]
        },
        {
          "maxProperties": 0,
          "$comment": "An empty Dialog Object has no type and no 
            meaning"
        }
      ],
      "properties": {
        "type": {
          "type": "string",
          "description": "Type of dialog: recording, text, incomp
            lete, or a value defined in a vCon extension"
        },
        "start": {
          "type": "string",
          "format": "date-time",
          "description": "Start time of the dialog in RFC3339 for
            mat; SHOULD be present unless not known"
        },
        "duration": {
          "anyOf": [
            {
              "type": "integer",
              "minimum": 0
            },
            {
              "type": "number",
              "minimum": 0
            }
          ],
          "description": "Duration in seconds"
        },
        "parties": {
          "anyOf": [
            {
              "type": "integer",
              "minimum": 0
            },
            {
              "type": "array",
              "items": {
                "type": "integer",
                "minimum": 0
              }
            },
            {
              "type": "array",
              "items": {
                "anyOf": [
                  {
                    "type": "integer",
                    "minimum": 0
                  },
                  {
                    "type": "array",
                    "items": {
                      "type": "integer",
                      "minimum": 0
                    }
                  },
                  {
                    "type": "null"
                  }
                ]
              }
            }
          ],
          "description": "Index/indices of the parties that contr
            ibuted to the dialog content; SHOULD be present for r
            ecording and text types"
        },
        "mediatype": {
          "type": "string",
          "description": "Media type of the dialog content; MUST 
            be present for inline content; not required when Dial
            og Content is absent"
        },
        "filename": {
          "type": "string",
          "description": "Original filename of the dialog content
            "
        },
        "body": {
          "description": "Inline content of the dialog (for inlin
            e files).  Any type for encoding json; a string for e
            ncoding base64url or none."
        },
        "encoding": {
          "type": "string",
          "description": "Encoding type for inline content: base6
            4url, json, none, or a value defined in a vCon extens
            ion"
        },
        "url": {
          "type": "string",
          "format": "uri",
          "description": "HTTPS URL for externally referenced con
            tent"
        },
        "content_hash": {
          "oneOf": [
            {
              "type": "string"
            },
            {
              "type": "array",
              "items": {
                "type": "string"
              }
            }
          ],
          "description": "Hash(es) of external content"
        },
        "disposition": {
          "type": "string",
          "description": "Reason the call or conversation failed 
            (required for incomplete type, SHOULD NOT be present 
            for other types): no-answer, congestion, failed, busy
            , hung-up, voicemail-no-message, or a value defined i
            n a vCon extension; \"failed\" SHOULD be used when th
            e reason is not known"
        },
        "session_id": {
          "anyOf": [
            {
              "$ref": "#/definitions/SessionId"
            },
            {
              "type": "array",
              "items": {
                "$ref": "#/definitions/SessionId"
              }
            },
            {
              "type": "array",
              "items": {
                "oneOf": [
                  {
                    "$ref": "#/definitions/SessionId"
                  },
                  {
                    "type": "array",
                    "items": {
                      "$ref": "#/definitions/SessionId"
                    }
                  }
                ]
              }
            }
          ],
          "description": "Session ID(s) for the dialog, correlate
            d with the parties parameter"
        },
        "application": {
          "type": "string",
          "description": "Application, communication channel or c
            ontext of the conversation"
        },
        "message_id": {
          "type": "string",
          "description": "Unique message identifier from the mess
            aging system"
        },
        "redacted_segments": {
          "type": "array",
          "description": "Redacted_segments Objects for the audio
            visual segments which were redacted; SHOULD NOT be pr
            esent for text; MUST NOT be present for incomplete",
          "items": {
            "$ref": "#/definitions/RedactedSegments"
          }
        }
      },
      "dependencies": {
        "url": [
          "content_hash"
        ]
      },
      "allOf": [
        {
          "if": {
            "properties": {
              "type": {
                "const": "incomplete"
              }
            },
            "required": [
              "type"
            ]
          },
          "then": {
            "required": [
              "disposition"
            ],
            "not": {
              "anyOf": [
                {
                  "required": [
                    "mediatype"
                  ]
                },
                {
                  "required": [
                    "filename"
                  ]
                },
                {
                  "required": [
                    "body"
                  ]
                },
                {
                  "required": [
                    "encoding"
                  ]
                },
                {
                  "required": [
                    "url"
                  ]
                },
                {
                  "required": [
                    "content_hash"
                  ]
                },
                {
                  "required": [
                    "message_id"
                  ]
                },
                {
                  "required": [
                    "redacted_segments"
                  ]
                }
              ]
            }
          }
        },
        {
          "if": {
            "required": [
              "body"
            ],
            "properties": {
              "body": {
                "not": {
                  "const": ""
                }
              }
            }
          },
          "then": {
            "required": [
              "encoding"
            ]
          }
        },
        {
          "if": {
            "required": [
              "body"
            ],
            "properties": {
              "body": {
                "not": {
                  "const": ""
                }
              }
            }
          },
          "then": {
            "required": [
              "mediatype"
            ]
          }
        },
        {
          "if": {
            "properties": {
              "encoding": {
                "enum": [
                  "base64url",
                  "none"
                ]
              }
            },
            "required": [
              "encoding"
            ]
          },
          "then": {
            "properties": {
              "body": {
                "type": "string"
              }
            }
          }
        }
      ],
      "$comment": "The rules for each known type follow the Dialo
        g Object Parameter Applicability by Type table. A Dialog 
        Object with a type which is not listed is only checked fo
        r the rules common to all types."
    },
    "SessionId": {
      "type": "object",
      "description": "Session identifier with local and remote UU
        IDs",
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
    "Attachment": {
      "type": "object",
      "description": "Represents an ancillary document related to
         the conversation",
      "required": [
        "start",
        "party"
      ],
      "properties": {
        "purpose": {
          "type": "string",
          "description": "text description of what the attachment
             is for"
        },
        "start": {
          "type": "string",
          "format": "date-time",
          "description": "Time the attachment was sent/exchanged 
            in RFC3339 format"
        },
        "party": {
          "type": "integer",
          "minimum": 0,
          "description": "Index of the party that contributed the
             attachment"
        },
        "dialog": {
          "type": "integer",
          "minimum": 0,
          "description": "Index of the dialog this attachment is 
            part of (optional; at least one of dialog or session 
            MUST be present)"
        },
        "session": {
          "oneOf": [
            {
              "type": "integer",
              "minimum": 0
            },
            {
              "type": "array",
              "items": {
                "type": "integer",
                "minimum": 0
              }
            }
          ],
          "description": "Index/indices of the Session Object(s) 
            this attachment is related to"
        },
        "mediatype": {
          "type": "string",
          "description": "Media type of the attachment content; M
            UST be present for inline content; not required when 
            Attachment Content is absent"
        },
        "filename": {
          "type": "string",
          "description": "Original filename of the attachment"
        },
        "body": {
          "description": "Inline content of the attachment (for i
            nline files).  Any type for encoding json; a string f
            or encoding base64url or none."
        },
        "encoding": {
          "type": "string",
          "description": "Encoding type for inline content: base6
            4url, json, none, or a value defined in a vCon extens
            ion"
        },
        "url": {
          "type": "string",
          "format": "uri",
          "description": "HTTPS URL for externally referenced att
            achment"
        },
        "content_hash": {
          "oneOf": [
            {
              "type": "string"
            },
            {
              "type": "array",
              "items": {
                "type": "string"
              }
            }
          ],
          "description": "Hash(es) of external content"
        }
      },
      "dependencies": {
        "url": [
          "content_hash"
        ]
      },
      "anyOf": [
        {
          "required": [
            "dialog"
          ]
        },
        {
          "required": [
            "session"
          ]
        }
      ],
      "allOf": [
        {
          "if": {
            "required": [
              "body"
            ],
            "properties": {
              "body": {
                "not": {
                  "const": ""
                }
              }
            }
          },
          "then": {
            "required": [
              "encoding"
            ]
          }
        },
        {
          "if": {
            "required": [
              "body"
            ],
            "properties": {
              "body": {
                "not": {
                  "const": ""
                }
              }
            }
          },
          "then": {
            "required": [
              "mediatype"
            ]
          }
        },
        {
          "if": {
            "properties": {
              "encoding": {
                "enum": [
                  "base64url",
                  "none"
                ]
              }
            },
            "required": [
              "encoding"
            ]
          },
          "then": {
            "properties": {
              "body": {
                "type": "string"
              }
            }
          }
        }
      ]
    },
    "Analysis": {
      "type": "object",
      "description": "Represents analysis performed on the conver
        sational data",
      "required": [
        "type",
        "vendor"
      ],
      "properties": {
        "type": {
          "type": "string",
          "description": "Semantic type of analysis (e.g., report
            , sentiment, summary, transcript, translation, tts)"
        },
        "dialog": {
          "oneOf": [
            {
              "type": "integer",
              "minimum": 0
            },
            {
              "type": "array",
              "items": {
                "type": "integer",
                "minimum": 0
              }
            }
          ],
          "description": "Index/indices of dialog objects this an
            alysis is based on (optional)"
        },
        "sessions": {
          "oneOf": [
            {
              "type": "integer",
              "minimum": 0
            },
            {
              "type": "array",
              "items": {
                "type": "integer",
                "minimum": 0
              }
            }
          ],
          "description": "Index/indices of Session Objects this a
            nalysis is based on (optional)"
        },
        "attachment": {
          "oneOf": [
            {
              "type": "integer",
              "minimum": 0
            },
            {
              "type": "array",
              "items": {
                "type": "integer",
                "minimum": 0
              }
            }
          ],
          "description": "Index/indices of attachment objects thi
            s analysis is based on (optional)"
        },
        "analysis": {
          "oneOf": [
            {
              "type": "integer",
              "minimum": 0
            },
            {
              "type": "array",
              "items": {
                "type": "integer",
                "minimum": 0
              }
            }
          ],
          "description": "Index/indices of other Analysis Objects
             this analysis is based on (optional); MUST NOT refer
            ence itself"
        },
        "mediatype": {
          "type": "string",
          "description": "Media type of the analysis content; SHO
            ULD be provided for inline content and for external c
            ontent without an HTTPS Content-Type header; when no 
            media type is defined for the data format, the vendor
            , product and schema parameters SHOULD identify the f
            ormat instead"
        },
        "filename": {
          "type": "string",
          "description": "Original filename of the analysis data"
        },
        "vendor": {
          "type": "string",
          "description": "Vendor or product name that generated t
            he analysis"
        },
        "product": {
          "type": "string",
          "description": "Product name to differentiate from othe
            r vendor products"
        },
        "schema": {
          "type": "string",
          "description": "Token or label for the data format/sche
            ma of the analysis"
        },
        "body": {
          "description": "Inline content of the analysis (for inl
            ine files).  Any type for encoding json; a string for
             encoding base64url or none."
        },
        "encoding": {
          "type": "string",
          "description": "Encoding type for inline content: base6
            4url, json, none, or a value defined in a vCon extens
            ion"
        },
        "url": {
          "type": "string",
          "format": "uri",
          "description": "HTTPS URL for externally referenced ana
            lysis"
        },
        "content_hash": {
          "oneOf": [
            {
              "type": "string"
            },
            {
              "type": "array",
              "items": {
                "type": "string"
              }
            }
          ],
          "description": "Hash(es) of external content"
        }
      },
      "dependencies": {
        "url": [
          "content_hash"
        ]
      },
      "allOf": [
        {
          "if": {
            "required": [
              "body"
            ],
            "properties": {
              "body": {
                "not": {
                  "const": ""
                }
              }
            }
          },
          "then": {
            "required": [
              "encoding"
            ]
          }
        },
        {
          "if": {
            "properties": {
              "encoding": {
                "enum": [
                  "base64url",
                  "none"
                ]
              }
            },
            "required": [
              "encoding"
            ]
          },
          "then": {
            "properties": {
              "body": {
                "type": "string"
              }
            }
          }
        }
      ],
      "$comment": "At least one of the dialog, sessions, attachme
        nt or analysis parameters SHOULD be present. An Analysis 
        Object MUST NOT reference itself in the analysis paramete
        r; this is not enforced by this schema."
    },
    "RedactedString": {
      "type": "object",
      "description": "Information about a substring of the vCon w
        hich was replaced by __REDACTED_REF_#",
      "required": [
        "ref"
      ],
      "properties": {
        "ref": {
          "type": "integer",
          "minimum": 1,
          "maximum": 99999,
          "description": "Reference number of the redacted substr
            ing"
        },
        "type": {
          "type": "string",
          "description": "Type of information redacted: GOVT_ID_N
            UM, FIN_ID_NUM, MED_ID_NUM, BIOMETRIC, AUTH_DATA, CON
            TACT_INFO, LOC_INFO, EMPL_INFO, BELIEF_INFO, UNSPECIF
            IED or another value; absent means UNSPECIFIED"
        },
        "orig": {
          "type": "string",
          "description": "Original, unredacted value of the subst
            ring"
        }
      },
      "$comment": "That each __REDACTED_REF_# substring has a Red
        acted_string Object with a matching ref is not enforced b
        y this schema."
    },
    "RedactedSegments": {
      "type": "object",
      "description": "An audiovisual segment of a recording which
         was redacted",
      "required": [
        "start",
        "end"
      ],
      "properties": {
        "start": {
          "type": "string",
          "format": "date-time",
          "description": "Start time of the redaction in RFC3339 
            format"
        },
        "end": {
          "type": "string",
          "format": "date-time",
          "description": "End time of the redaction in RFC3339 fo
            rmat"
        },
        "parties": {
          "type": "array",
          "items": {
            "type": "integer",
            "minimum": 0
          },
          "description": "Indices of the parties whose content wa
            s redacted"
        }
      },
      "$comment": "TODO: should use duration instead of end?"
    }
  },
  "not": {
    "required": [
      "redacted_from",
      "amended_from"
    ],
    "$comment": "The redacted_from and amended_from parameters ar
      e mutually exclusive"
  },
  "allOf": [
    {
      "if": {
        "anyOf": [
          {
            "required": [
              "dialog"
            ],
            "properties": {
              "dialog": {
                "minItems": 1
              }
            }
          },
          {
            "required": [
              "events"
            ],
            "properties": {
              "events": {
                "minItems": 1
              }
            }
          }
        ]
      },
      "then": {
        "required": [
          "sessions"
        ],
        "properties": {
          "sessions": {
            "minItems": 1
          }
        },
        "$comment": "At least one Session Object MUST exist if th
          e events array or the dialog array contain Objects"
      }
    }
  ],
  "$comment": "This schema is permissive: parameters and type val
    ues which are not defined in RFCXXXX do not cause validation 
    to fail. At least one of the parties, dialog, analysis or att
    achments parameters SHOULD be present. SHOULD-level statement
    s are not enforced by this schema. Index values are not check
    ed against the size of the array which they reference."
}

