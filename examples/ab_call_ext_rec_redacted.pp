{
  "vcon": "0.4.0",
  "uuid": "01928e10-193e-8231-b9a2-279e0d16bc46",
  "redacted": {
    "uuid": "0199e054-ed10-8035-b9a2-279e0d16bc46",
    "type": "PII Redaction"
  },
  "parties": [
    {
      "name": "Alice"
    },
    {
      "name": "Bob"
    }
  ],
  "dialog": [
    {
      "type": "recording",
      "start": "2022-06-21T17:53:26.000+00:00",
      "duration": 33.12,
      "parties": [
        0,
        1
      ],
      "url": "https://github.com/ietf-wg-vcon/draft-ietf-vcon-vco
        n-container/raw/refs/heads/main/examples/ab_call.mp3",
      "mediatype": "audio/x-mp3",
      "filename": "ab_call.mp3",
      "content_hash": "sha512-GLy6IPaIUM1GqzZqfIPZlWjaDsNgNvZM0iC
        ONNThnH0a75fhUM6cYzLZ5GynSURREvZwmOh54-2lRRieyj82UQ"
    }
  ],
  "analysis": [
    {
      "type": "transcript-redacted",
      "dialog": 0,
      "body": "[{\"parties\": 0, \"start\": \"2022-06-21T17:53:27
        .200000+00:00\", \"duration\": 5.1199998, \"text\": \"Hel
        lo.  This is {{URL}}.  My name is Bob.  How can I help yo
        u?  Hi.\"}, {\"parties\": 0, \"start\": \"2022-06-21T17:5
        3:32.320000+00:00\", \"duration\": 15.3349993, \"text\": 
        \"I'd like to add Fu to my service.  Okay.  Can you give 
        me your name and phone number so I can look up your accou
        nt?  My name is Alice, and my number is {{INTEGER}} {{SSN
        }}.  Thank you.\"}, {\"parties\": 0, \"start\": \"2022-06
        -21T17:53:48.935000+00:00\", \"duration\": 6.399873000000
        003, \"text\": \"{{US_STATE}}.  I've added two to your se
        rvice.  Is there anything else that I can help you with? 
         No.  Thank you.\"}, {\"parties\": 0, \"start\": \"2022-0
        6-21T17:53:55.334875+00:00\", \"duration\": 2.63999899999
        99995, \"text\": \"Goodbye.  Goodbye.  Have a nice day.\"
        }]",
      "encoding": "json",
      "vendor": "CapitalOne",
      "schema": "data_labeler_schema",
      "product": "dataprofiler"
    }
  ],
  "attachments": []
}
