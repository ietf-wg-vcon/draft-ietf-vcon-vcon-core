{
  "vcon": "0.0.2",
  "parties": [
    {
      "tel": "+12345678901",
      "name": "Alice"
    },
    {
      "tel": "+19876543210",
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
      "type": "transcript",
      "dialog": 0,
      "body": {
        "metadata": {
          "transaction_key": "deprecated",
          "request_id": "e745b016-53cb-4524-8c1d-1e028a5e69f5",
          "sha256": "04dc074100461f5082f2a7a286d0161f0e2728025e83
            c20592aa7ea3724c2933",
          "created": "2025-10-13T18:25:01.268Z",
          "duration": 33.119938,
          "channels": 1,
          "models": [
            "2187e11a-3532-4498-b076-81fa530bdd49"
          ],
          "model_info": {
            "2187e11a-3532-4498-b076-81fa530bdd49": {
              "name": "general-nova-3",
              "version": "2025-07-31.0",
              "arch": "nova-3"
            }
          }
        },
        "results": {
          "channels": [
            {
              "alternatives": [
                {
                  "transcript": "Hello. This is example.com. My n
                    ame is Bob. How can I help you? Hi. I'd like 
                    to add Fu to my service. Okay. Can you give m
                    e your name and phone number so I can look up
                     your account? My name is Alice, and my numbe
                    r is +1 234567890. Thank you. Okay. I've adde
                    d two to your service. Is there anything else
                     that I can help you with? No. Thank you. Goo
                    dbye. Goodbye. Have a nice day.",
                  "confidence": 0.9996749,
                  "words": [
                    {
                      "word": "hello",
                      "start": 1.1999999,
                      "end": 1.76,
                      "confidence": 0.9944869,
                      "speaker": 0,
                      "speaker_confidence": 0.14379132,
                      "punctuated_word": "Hello."
                    },
                    {
                      "word": "this",
                      "start": 1.76,
                      "end": 2.24,
                      "confidence": 0.9994711,
                      "speaker": 0,
                      "speaker_confidence": 0.14379132,
                      "punctuated_word": "This"
                    },
                    {
                      "word": "is",
                      "start": 2.24,
                      "end": 2.3999999,
                      "confidence": 0.99721694,
                      "speaker": 0,
                      "speaker_confidence": 0.14379132,
                      "punctuated_word": "is"
                    },
                    {
                      "word": "example.com",
                      "start": 2.3999999,
                      "end": 3.4399998,
                      "confidence": 0.9065581,
                      "speaker": 0,
                      "speaker_confidence": 0.14379132,
                      "punctuated_word": "example.com."
                    },
                    {
                      "word": "my",
                      "start": 3.4399998,
                      "end": 3.6,
                      "confidence": 0.9998653,
                      "speaker": 0,
                      "speaker_confidence": 0.5028559,
                      "punctuated_word": "My"
                    },
                    {
                      "word": "name",
                      "start": 3.6,
                      "end": 3.6799998,
                      "confidence": 0.99983394,
                      "speaker": 0,
                      "speaker_confidence": 0.5028559,
                      "punctuated_word": "name"
                    },
                    {
                      "word": "is",
                      "start": 3.6799998,
                      "end": 3.84,
                      "confidence": 0.9993298,
                      "speaker": 0,
                      "speaker_confidence": 0.5028559,
                      "punctuated_word": "is"
                    },
                    {
                      "word": "bob",
                      "start": 3.84,
                      "end": 4.3199997,
                      "confidence": 0.99975514,
                      "speaker": 0,
                      "speaker_confidence": 0.5028559,
                      "punctuated_word": "Bob."
                    },
                    {
                      "word": "how",
                      "start": 4.3199997,
                      "end": 4.48,
                      "confidence": 0.99988914,
                      "speaker": 0,
                      "speaker_confidence": 0.5028559,
                      "punctuated_word": "How"
                    },
                    {
                      "word": "can",
                      "start": 4.48,
                      "end": 4.72,
                      "confidence": 0.9998795,
                      "speaker": 0,
                      "speaker_confidence": 0.5028559,
                      "punctuated_word": "can"
                    },
                    {
                      "word": "i",
                      "start": 4.72,
                      "end": 4.7999997,
                      "confidence": 0.99978393,
                      "speaker": 0,
                      "speaker_confidence": 0.5028559,
                      "punctuated_word": "I"
                    },
                    {
                      "word": "help",
                      "start": 4.7999997,
                      "end": 5.04,
                      "confidence": 0.9999826,
                      "speaker": 0,
                      "speaker_confidence": 0.5028559,
                      "punctuated_word": "help"
                    },
                    {
                      "word": "you",
                      "start": 5.04,
                      "end": 5.52,
                      "confidence": 0.99984753,
                      "speaker": 0,
                      "speaker_confidence": 0.5028559,
                      "punctuated_word": "you?"
                    },
                    {
                      "word": "hi",
                      "start": 5.6,
                      "end": 6.3199997,
                      "confidence": 0.9995427,
                      "speaker": 0,
                      "speaker_confidence": 0.5721307,
                      "punctuated_word": "Hi."
                    },
                    {
                      "word": "i'd",
                      "start": 6.3199997,
                      "end": 6.72,
                      "confidence": 0.99569285,
                      "speaker": 0,
                      "speaker_confidence": 0.5721307,
                      "punctuated_word": "I'd"
                    },
                    {
                      "word": "like",
                      "start": 6.72,
                      "end": 6.8799996,
                      "confidence": 0.99973685,
                      "speaker": 0,
                      "speaker_confidence": 0.5721307,
                      "punctuated_word": "like"
                    },
                    {
                      "word": "to",
                      "start": 6.8799996,
                      "end": 6.96,
                      "confidence": 0.99859446,
                      "speaker": 0,
                      "speaker_confidence": 0.5721307,
                      "punctuated_word": "to"
                    },
                    {
                      "word": "add",
                      "start": 6.96,
                      "end": 7.2799997,
                      "confidence": 0.98129547,
                      "speaker": 0,
                      "speaker_confidence": 0.5721307,
                      "punctuated_word": "add"
                    },
                    {
                      "word": "fu",
                      "start": 7.2799997,
                      "end": 7.68,
                      "confidence": 0.37005976,
                      "speaker": 0,
                      "speaker_confidence": 0.5721307,
                      "punctuated_word": "Fu"
                    },
                    {
                      "word": "to",
                      "start": 7.68,
                      "end": 8,
                      "confidence": 0.9966304,
                      "speaker": 0,
                      "speaker_confidence": 0.5721307,
                      "punctuated_word": "to"
                    },
                    {
                      "word": "my",
                      "start": 8,
                      "end": 8.16,
                      "confidence": 0.99920976,
                      "speaker": 0,
                      "speaker_confidence": 0.5721307,
                      "punctuated_word": "my"
                    },
                    {
                      "word": "service",
                      "start": 8.16,
                      "end": 8.799999,
                      "confidence": 0.9892772,
                      "speaker": 0,
                      "speaker_confidence": 0.5721307,
                      "punctuated_word": "service."
                    },
                    {
                      "word": "okay",
                      "start": 9.2,
                      "end": 9.839999,
                      "confidence": 0.9997375,
                      "speaker": 0,
                      "speaker_confidence": 0.5721307,
                      "punctuated_word": "Okay."
                    },
                    {
                      "word": "can",
                      "start": 10.16,
                      "end": 10.4,
                      "confidence": 0.9997745,
                      "speaker": 0,
                      "speaker_confidence": 0.5721307,
                      "punctuated_word": "Can"
                    },
                    {
                      "word": "you",
                      "start": 10.4,
                      "end": 10.559999,
                      "confidence": 0.9999038,
                      "speaker": 0,
                      "speaker_confidence": 0.5721307,
                      "punctuated_word": "you"
                    },
                    {
                      "word": "give",
                      "start": 10.559999,
                      "end": 10.719999,
                      "confidence": 0.9992379,
                      "speaker": 0,
                      "speaker_confidence": 0.5721307,
                      "punctuated_word": "give"
                    },
                    {
                      "word": "me",
                      "start": 10.719999,
                      "end": 10.88,
                      "confidence": 0.9997702,
                      "speaker": 0,
                      "speaker_confidence": 0.5721307,
                      "punctuated_word": "me"
                    },
                    {
                      "word": "your",
                      "start": 10.88,
                      "end": 11.04,
                      "confidence": 0.99950373,
                      "speaker": 0,
                      "speaker_confidence": 0.26893622,
                      "punctuated_word": "your"
                    },
                    {
                      "word": "name",
                      "start": 11.04,
                      "end": 11.2,
                      "confidence": 0.9999646,
                      "speaker": 0,
                      "speaker_confidence": 0.26893622,
                      "punctuated_word": "name"
                    },
                    {
                      "word": "and",
                      "start": 11.2,
                      "end": 11.44,
                      "confidence": 0.9985328,
                      "speaker": 0,
                      "speaker_confidence": 0.26893622,
                      "punctuated_word": "and"
                    },
                    {
                      "word": "phone",
                      "start": 11.44,
                      "end": 11.599999,
                      "confidence": 0.99956745,
                      "speaker": 0,
                      "speaker_confidence": 0.26893622,
                      "punctuated_word": "phone"
                    },
                    {
                      "word": "number",
                      "start": 11.599999,
                      "end": 11.84,
                      "confidence": 0.999426,
                      "speaker": 0,
                      "speaker_confidence": 0.26893622,
                      "punctuated_word": "number"
                    },
                    {
                      "word": "so",
                      "start": 11.84,
                      "end": 12.08,
                      "confidence": 0.89331955,
                      "speaker": 0,
                      "speaker_confidence": 0.26893622,
                      "punctuated_word": "so"
                    },
                    {
                      "word": "i",
                      "start": 12.08,
                      "end": 12.16,
                      "confidence": 0.999236,
                      "speaker": 0,
                      "speaker_confidence": 0.26893622,
                      "punctuated_word": "I"
                    },
                    {
                      "word": "can",
                      "start": 12.16,
                      "end": 12.32,
                      "confidence": 0.9991905,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "can"
                    },
                    {
                      "word": "look",
                      "start": 12.32,
                      "end": 12.48,
                      "confidence": 0.9993881,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "look"
                    },
                    {
                      "word": "up",
                      "start": 12.48,
                      "end": 12.639999,
                      "confidence": 0.9980223,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "up"
                    },
                    {
                      "word": "your",
                      "start": 12.639999,
                      "end": 12.799999,
                      "confidence": 0.99812764,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "your"
                    },
                    {
                      "word": "account",
                      "start": 12.799999,
                      "end": 13.12,
                      "confidence": 0.9978809,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "account?"
                    },
                    {
                      "word": "my",
                      "start": 13.735,
                      "end": 14.135,
                      "confidence": 0.9996507,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "My"
                    },
                    {
                      "word": "name",
                      "start": 14.135,
                      "end": 14.295,
                      "confidence": 0.9998702,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "name"
                    },
                    {
                      "word": "is",
                      "start": 14.295,
                      "end": 14.455,
                      "confidence": 0.9996233,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "is"
                    },
                    {
                      "word": "alice",
                      "start": 14.455,
                      "end": 15.174999,
                      "confidence": 0.935765,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "Alice,"
                    },
                    {
                      "word": "and",
                      "start": 15.174999,
                      "end": 15.335,
                      "confidence": 0.9998963,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "and"
                    },
                    {
                      "word": "my",
                      "start": 15.335,
                      "end": 15.575,
                      "confidence": 0.9999398,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "my"
                    },
                    {
                      "word": "number",
                      "start": 15.575,
                      "end": 15.8949995,
                      "confidence": 0.9999269,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "number"
                    },
                    {
                      "word": "is",
                      "start": 15.8949995,
                      "end": 16.455,
                      "confidence": 0.9997197,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "is"
                    },
                    {
                      "word": "+1",
                      "start": 16.455,
                      "end": 16.775,
                      "confidence": 0.99967515,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "+1"
                    },
                    {
                      "word": "234567890",
                      "start": 16.775,
                      "end": 20.615,
                      "confidence": 0.99982303,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "234567890."
                    },
                    {
                      "word": "thank",
                      "start": 20.775,
                      "end": 21.095,
                      "confidence": 0.9998648,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "Thank"
                    },
                    {
                      "word": "you",
                      "start": 21.095,
                      "end": 21.654999,
                      "confidence": 0.99993396,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "you."
                    },
                    {
                      "word": "okay",
                      "start": 22.935,
                      "end": 23.335,
                      "confidence": 0.9996749,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "Okay."
                    },
                    {
                      "word": "i've",
                      "start": 24.134874,
                      "end": 24.534874,
                      "confidence": 0.9953296,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "I've"
                    },
                    {
                      "word": "added",
                      "start": 24.534874,
                      "end": 24.854876,
                      "confidence": 0.988393,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "added"
                    },
                    {
                      "word": "two",
                      "start": 24.854876,
                      "end": 25.094875,
                      "confidence": 0.79769087,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "two"
                    },
                    {
                      "word": "to",
                      "start": 25.094875,
                      "end": 25.254875,
                      "confidence": 0.8352227,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "to"
                    },
                    {
                      "word": "your",
                      "start": 25.254875,
                      "end": 25.414875,
                      "confidence": 0.9990435,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "your"
                    },
                    {
                      "word": "service",
                      "start": 25.414875,
                      "end": 25.734875,
                      "confidence": 0.9952016,
                      "speaker": 0,
                      "speaker_confidence": 0.6502541,
                      "punctuated_word": "service."
                    },
                    {
                      "word": "is",
                      "start": 25.734875,
                      "end": 25.894875,
                      "confidence": 0.9998386,
                      "speaker": 0,
                      "speaker_confidence": 0.49827498,
                      "punctuated_word": "Is"
                    },
                    {
                      "word": "there",
                      "start": 25.894875,
                      "end": 26.054874,
                      "confidence": 0.99980074,
                      "speaker": 0,
                      "speaker_confidence": 0.49827498,
                      "punctuated_word": "there"
                    },
                    {
                      "word": "anything",
                      "start": 26.054874,
                      "end": 26.294874,
                      "confidence": 0.9997266,
                      "speaker": 0,
                      "speaker_confidence": 0.49827498,
                      "punctuated_word": "anything"
                    },
                    {
                      "word": "else",
                      "start": 26.294874,
                      "end": 26.534874,
                      "confidence": 0.9998678,
                      "speaker": 0,
                      "speaker_confidence": 0.49827498,
                      "punctuated_word": "else"
                    },
                    {
                      "word": "that",
                      "start": 26.534874,
                      "end": 26.694874,
                      "confidence": 0.6289553,
                      "speaker": 0,
                      "speaker_confidence": 0.49827498,
                      "punctuated_word": "that"
                    },
                    {
                      "word": "i",
                      "start": 26.694874,
                      "end": 26.774876,
                      "confidence": 0.9994091,
                      "speaker": 0,
                      "speaker_confidence": 0.49827498,
                      "punctuated_word": "I"
                    },
                    {
                      "word": "can",
                      "start": 26.774876,
                      "end": 26.934875,
                      "confidence": 0.99988854,
                      "speaker": 0,
                      "speaker_confidence": 0.49827498,
                      "punctuated_word": "can"
                    },
                    {
                      "word": "help",
                      "start": 26.934875,
                      "end": 27.094875,
                      "confidence": 0.9998431,
                      "speaker": 0,
                      "speaker_confidence": 0.49827498,
                      "punctuated_word": "help"
                    },
                    {
                      "word": "you",
                      "start": 27.094875,
                      "end": 27.174875,
                      "confidence": 0.99983025,
                      "speaker": 0,
                      "speaker_confidence": 0.49827498,
                      "punctuated_word": "you"
                    },
                    {
                      "word": "with",
                      "start": 27.174875,
                      "end": 27.734875,
                      "confidence": 0.999861,
                      "speaker": 0,
                      "speaker_confidence": 0.49827498,
                      "punctuated_word": "with?"
                    },
                    {
                      "word": "no",
                      "start": 28.054874,
                      "end": 28.534874,
                      "confidence": 0.99972045,
                      "speaker": 0,
                      "speaker_confidence": 0.49827498,
                      "punctuated_word": "No."
                    },
                    {
                      "word": "thank",
                      "start": 28.534874,
                      "end": 28.774876,
                      "confidence": 0.999882,
                      "speaker": 0,
                      "speaker_confidence": 0.5911765,
                      "punctuated_word": "Thank"
                    },
                    {
                      "word": "you",
                      "start": 28.774876,
                      "end": 29.334873,
                      "confidence": 0.9999063,
                      "speaker": 0,
                      "speaker_confidence": 0.5911765,
                      "punctuated_word": "you."
                    },
                    {
                      "word": "goodbye",
                      "start": 29.334875,
                      "end": 29.974874,
                      "confidence": 0.99886435,
                      "speaker": 0,
                      "speaker_confidence": 0.5911765,
                      "punctuated_word": "Goodbye."
                    },
                    {
                      "word": "goodbye",
                      "start": 30.374874,
                      "end": 31.014874,
                      "confidence": 0.9991615,
                      "speaker": 0,
                      "speaker_confidence": 0.5911765,
                      "punctuated_word": "Goodbye."
                    },
                    {
                      "word": "have",
                      "start": 31.014874,
                      "end": 31.334875,
                      "confidence": 0.9997547,
                      "speaker": 0,
                      "speaker_confidence": 0.5911765,
                      "punctuated_word": "Have"
                    },
                    {
                      "word": "a",
                      "start": 31.334875,
                      "end": 31.494875,
                      "confidence": 0.99972016,
                      "speaker": 0,
                      "speaker_confidence": 0.5911765,
                      "punctuated_word": "a"
                    },
                    {
                      "word": "nice",
                      "start": 31.494875,
                      "end": 31.654875,
                      "confidence": 0.9992854,
                      "speaker": 0,
                      "speaker_confidence": 0.5911765,
                      "punctuated_word": "nice"
                    },
                    {
                      "word": "day",
                      "start": 31.654875,
                      "end": 31.894875,
                      "confidence": 0.99970496,
                      "speaker": 0,
                      "speaker_confidence": 0,
                      "punctuated_word": "day."
                    }
                  ],
                  "paragraphs": {
                    "transcript": "\nSpeaker 0: Hello. This is ex
                      ample.com. My name is Bob. How can I help y
                      ou? Hi.\n\nI'd like to add Fu to my service
                      . Okay. Can you give me your name and phone
                       number so I can look up your account? My n
                      ame is Alice, and my number is +1 234567890
                      . Thank you.\n\nOkay. I've added two to you
                      r service. Is there anything else that I ca
                      n help you with? No. Thank you.\n\nGoodbye.
                       Goodbye. Have a nice day.",
                    "paragraphs": [
                      {
                        "sentences": [
                          {
                            "text": "Hello.",
                            "start": 1.1999999,
                            "end": 1.76
                          },
                          {
                            "text": "This is example.com.",
                            "start": 1.76,
                            "end": 3.4399998
                          },
                          {
                            "text": "My name is Bob.",
                            "start": 3.4399998,
                            "end": 4.3199997
                          },
                          {
                            "text": "How can I help you?",
                            "start": 4.3199997,
                            "end": 5.52
                          },
                          {
                            "text": "Hi.",
                            "start": 5.6,
                            "end": 6.3199997
                          }
                        ],
                        "speaker": 0,
                        "num_words": 14,
                        "start": 1.1999999,
                        "end": 6.3199997
                      },
                      {
                        "sentences": [
                          {
                            "text": "I'd like to add Fu to my ser
                              vice.",
                            "start": 6.3199997,
                            "end": 8.799999
                          },
                          {
                            "text": "Okay.",
                            "start": 9.2,
                            "end": 9.839999
                          },
                          {
                            "text": "Can you give me your name an
                              d phone number so I can look up you
                              r account?",
                            "start": 10.16,
                            "end": 13.12
                          },
                          {
                            "text": "My name is Alice, and my num
                              ber is +1 234567890.",
                            "start": 13.735,
                            "end": 20.615
                          },
                          {
                            "text": "Thank you.",
                            "start": 20.775,
                            "end": 21.654999
                          }
                        ],
                        "speaker": 0,
                        "num_words": 37,
                        "start": 6.3199997,
                        "end": 21.654999
                      },
                      {
                        "sentences": [
                          {
                            "text": "Okay.",
                            "start": 22.935,
                            "end": 23.335
                          },
                          {
                            "text": "I've added two to your servi
                              ce.",
                            "start": 24.134874,
                            "end": 25.734875
                          },
                          {
                            "text": "Is there anything else that 
                              I can help you with?",
                            "start": 25.734875,
                            "end": 27.734875
                          },
                          {
                            "text": "No.",
                            "start": 28.054874,
                            "end": 28.534874
                          },
                          {
                            "text": "Thank you.",
                            "start": 28.534874,
                            "end": 29.334873
                          }
                        ],
                        "speaker": 0,
                        "num_words": 20,
                        "start": 22.935,
                        "end": 29.334873
                      },
                      {
                        "sentences": [
                          {
                            "text": "Goodbye.",
                            "start": 29.334875,
                            "end": 29.974874
                          },
                          {
                            "text": "Goodbye.",
                            "start": 30.374874,
                            "end": 31.014874
                          },
                          {
                            "text": "Have a nice day.",
                            "start": 31.014874,
                            "end": 31.894875
                          }
                        ],
                        "speaker": 0,
                        "num_words": 6,
                        "start": 29.334875,
                        "end": 31.894875
                      }
                    ]
                  }
                }
              ]
            }
          ]
        }
      },
      "encoding": "json",
      "vendor": "deepgram",
      "schema": "deepgram_prerecorded",
      "product": "transcription"
    }
  ],
  "attachments": [],
  "uuid": "0199ded0-8a0f-87c2-b9a2-279e0d16bc46"
}
