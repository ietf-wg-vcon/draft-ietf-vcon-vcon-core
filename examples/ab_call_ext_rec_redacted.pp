{
  "vcon": "0.0.2",
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
      "body": [
        {
          "parties": 0,
          "start": "2022-06-21T17:53:27.200000+00:00",
          "duration": 5.1199998,
          "text": "Hello.  This is {{URL}}.  My name is Bob.  How
             can I help you?  Hi."
        },
        {
          "parties": 0,
          "start": "2022-06-21T17:53:32.320000+00:00",
          "duration": 15.3349993,
          "text": "I'd like to add Fu to my service.  Okay.  Can 
            you give me your name and phone number so I can look 
            up your account?  My name is Alice, and my number is 
            {{INTEGER}} {{SSN}}.  Thank you."
        },
        {
          "parties": 0,
          "start": "2022-06-21T17:53:48.935000+00:00",
          "duration": 6.399873000000003,
          "text": "{{US_STATE}}.  I've added two to your service.
              Is there anything else that I can help you with?  N
            o.  Thank you."
        },
        {
          "parties": 0,
          "start": "2022-06-21T17:53:55.334875+00:00",
          "duration": 2.5599999999999987,
          "text": "Goodbye.  Goodbye.  Have a nice day."
        }
      ],
      "encoding": "json",
      "vendor": "CapitalOne",
      "schema": "data_labeler_schema",
      "product": "dataprofiler"
    }
  ],
  "attachments": [],
  "uuid": "01928e10-193e-8231-b9a2-279e0d16bc46",
  "redacted": {
    "uuid": "0199ded0-8a0f-87c2-b9a2-279e0d16bc46",
    "type": "PII Redaction"
  }
}
