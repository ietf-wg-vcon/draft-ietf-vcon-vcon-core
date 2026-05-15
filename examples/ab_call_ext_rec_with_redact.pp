{
  "vcon": "0.4.0",
  "uuid": "0199e054-ed10-8035-b9a2-279e0d16bc46",
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
      "body": "{\"metadata\": {\"transaction_key\": \"deprecated\
        ", \"request_id\": \"277eb8c5-86a9-4333-968e-243c77bc9a63
        \", \"sha256\": \"04dc074100461f5082f2a7a286d0161f0e27280
        25e83c20592aa7ea3724c2933\", \"created\": \"2025-10-14T01
        :32:14.393Z\", \"duration\": 33.119938, \"channels\": 1, 
        \"models\": [\"2187e11a-3532-4498-b076-81fa530bdd49\"], \
        "model_info\": {\"2187e11a-3532-4498-b076-81fa530bdd49\":
         {\"name\": \"general-nova-3\", \"version\": \"2025-07-31
        .0\", \"arch\": \"nova-3\"}}}, \"results\": {\"channels\"
        : [{\"alternatives\": [{\"transcript\": \"Hello. This is 
        example.com. My name is Bob. How can I help you? Hi. I'd 
        like to add Fu to my service. Okay. Can you give me your 
        name and phone number so I can look up your account? My n
        ame is Alice, and my number is +1 234567890. Thank you. O
        kay. I've added two to your service. Is there anything el
        se that I can help you with? No. Thank you. Goodbye. Good
        bye. Have a nice day.\", \"confidence\": 0.9996748, \"wor
        ds\": [{\"word\": \"hello\", \"start\": 1.1999999, \"end\
        ": 1.76, \"confidence\": 0.9944868, \"speaker\": 0, \"spe
        aker_confidence\": 0.13938093, \"punctuated_word\": \"Hel
        lo.\"}, {\"word\": \"this\", \"start\": 1.76, \"end\": 2.
        24, \"confidence\": 0.9994715, \"speaker\": 0, \"speaker_
        confidence\": 0.13938093, \"punctuated_word\": \"This\"},
         {\"word\": \"is\", \"start\": 2.24, \"end\": 2.3999999, 
        \"confidence\": 0.99721825, \"speaker\": 0, \"speaker_con
        fidence\": 0.13938093, \"punctuated_word\": \"is\"}, {\"w
        ord\": \"example.com\", \"start\": 2.3999999, \"end\": 3.
        4399998, \"confidence\": 0.906518, \"speaker\": 0, \"spea
        ker_confidence\": 0.13938093, \"punctuated_word\": \"exam
        ple.com.\"}, {\"word\": \"my\", \"start\": 3.4399998, \"e
        nd\": 3.6, \"confidence\": 0.9998653, \"speaker\": 0, \"s
        peaker_confidence\": 0.50997114, \"punctuated_word\": \"M
        y\"}, {\"word\": \"name\", \"start\": 3.6, \"end\": 3.679
        9998, \"confidence\": 0.99983394, \"speaker\": 0, \"speak
        er_confidence\": 0.50997114, \"punctuated_word\": \"name\
        "}, {\"word\": \"is\", \"start\": 3.6799998, \"end\": 3.8
        4, \"confidence\": 0.9993299, \"speaker\": 0, \"speaker_c
        onfidence\": 0.50997114, \"punctuated_word\": \"is\"}, {\
        "word\": \"bob\", \"start\": 3.84, \"end\": 4.3199997, \"
        confidence\": 0.99975526, \"speaker\": 0, \"speaker_confi
        dence\": 0.50997114, \"punctuated_word\": \"Bob.\"}, {\"w
        ord\": \"how\", \"start\": 4.3199997, \"end\": 4.48, \"co
        nfidence\": 0.99988914, \"speaker\": 0, \"speaker_confide
        nce\": 0.50997114, \"punctuated_word\": \"How\"}, {\"word
        \": \"can\", \"start\": 4.48, \"end\": 4.72, \"confidence
        \": 0.99987936, \"speaker\": 0, \"speaker_confidence\": 0
        .50997114, \"punctuated_word\": \"can\"}, {\"word\": \"i\
        ", \"start\": 4.72, \"end\": 4.7999997, \"confidence\": 0
        .99978393, \"speaker\": 0, \"speaker_confidence\": 0.5099
        7114, \"punctuated_word\": \"I\"}, {\"word\": \"help\", \
        "start\": 4.7999997, \"end\": 5.04, \"confidence\": 0.999
        9826, \"speaker\": 0, \"speaker_confidence\": 0.50997114,
         \"punctuated_word\": \"help\"}, {\"word\": \"you\", \"st
        art\": 5.04, \"end\": 5.52, \"confidence\": 0.99984753, \
        "speaker\": 0, \"speaker_confidence\": 0.50997114, \"punc
        tuated_word\": \"you?\"}, {\"word\": \"hi\", \"start\": 5
        .6, \"end\": 6.3199997, \"confidence\": 0.9995427, \"spea
        ker\": 0, \"speaker_confidence\": 0.57726574, \"punctuate
        d_word\": \"Hi.\"}, {\"word\": \"i'd\", \"start\": 6.3199
        997, \"end\": 6.72, \"confidence\": 0.995689, \"speaker\"
        : 0, \"speaker_confidence\": 0.57726574, \"punctuated_wor
        d\": \"I'd\"}, {\"word\": \"like\", \"start\": 6.72, \"en
        d\": 6.8799996, \"confidence\": 0.99973685, \"speaker\": 
        0, \"speaker_confidence\": 0.57726574, \"punctuated_word\
        ": \"like\"}, {\"word\": \"to\", \"start\": 6.8799996, \"
        end\": 6.96, \"confidence\": 0.9985936, \"speaker\": 0, \
        "speaker_confidence\": 0.57726574, \"punctuated_word\": \
        "to\"}, {\"word\": \"add\", \"start\": 6.96, \"end\": 7.2
        799997, \"confidence\": 0.98127615, \"speaker\": 0, \"spe
        aker_confidence\": 0.57726574, \"punctuated_word\": \"add
        \"}, {\"word\": \"fu\", \"start\": 7.2799997, \"end\": 7.
        68, \"confidence\": 0.37009612, \"speaker\": 0, \"speaker
        _confidence\": 0.57726574, \"punctuated_word\": \"Fu\"}, 
        {\"word\": \"to\", \"start\": 7.68, \"end\": 8, \"confide
        nce\": 0.9966299, \"speaker\": 0, \"speaker_confidence\":
         0.57726574, \"punctuated_word\": \"to\"}, {\"word\": \"m
        y\", \"start\": 8, \"end\": 8.16, \"confidence\": 0.99920
        99, \"speaker\": 0, \"speaker_confidence\": 0.57726574, \
        "punctuated_word\": \"my\"}, {\"word\": \"service\", \"st
        art\": 8.16, \"end\": 8.799999, \"confidence\": 0.9892741
        , \"speaker\": 0, \"speaker_confidence\": 0.57726574, \"p
        unctuated_word\": \"service.\"}, {\"word\": \"okay\", \"s
        tart\": 9.2, \"end\": 9.839999, \"confidence\": 0.9997375
        , \"speaker\": 0, \"speaker_confidence\": 0.57726574, \"p
        unctuated_word\": \"Okay.\"}, {\"word\": \"can\", \"start
        \": 10.16, \"end\": 10.4, \"confidence\": 0.9997745, \"sp
        eaker\": 0, \"speaker_confidence\": 0.57726574, \"punctua
        ted_word\": \"Can\"}, {\"word\": \"you\", \"start\": 10.4
        , \"end\": 10.559999, \"confidence\": 0.9999038, \"speake
        r\": 0, \"speaker_confidence\": 0.57726574, \"punctuated_
        word\": \"you\"}, {\"word\": \"give\", \"start\": 10.5599
        99, \"end\": 10.719999, \"confidence\": 0.9992379, \"spea
        ker\": 0, \"speaker_confidence\": 0.57726574, \"punctuate
        d_word\": \"give\"}, {\"word\": \"me\", \"start\": 10.719
        999, \"end\": 10.88, \"confidence\": 0.99977034, \"speake
        r\": 0, \"speaker_confidence\": 0.57726574, \"punctuated_
        word\": \"me\"}, {\"word\": \"your\", \"start\": 10.88, \
        "end\": 11.04, \"confidence\": 0.99950397, \"speaker\": 0
        , \"speaker_confidence\": 0.2667445, \"punctuated_word\":
         \"your\"}, {\"word\": \"name\", \"start\": 11.04, \"end\
        ": 11.2, \"confidence\": 0.9999646, \"speaker\": 0, \"spe
        aker_confidence\": 0.2667445, \"punctuated_word\": \"name
        \"}, {\"word\": \"and\", \"start\": 11.2, \"end\": 11.44,
         \"confidence\": 0.9985328, \"speaker\": 0, \"speaker_con
        fidence\": 0.2667445, \"punctuated_word\": \"and\"}, {\"w
        ord\": \"phone\", \"start\": 11.44, \"end\": 11.599999, \
        "confidence\": 0.9995678, \"speaker\": 0, \"speaker_confi
        dence\": 0.2667445, \"punctuated_word\": \"phone\"}, {\"w
        ord\": \"number\", \"start\": 11.599999, \"end\": 11.84, 
        \"confidence\": 0.9994261, \"speaker\": 0, \"speaker_conf
        idence\": 0.2667445, \"punctuated_word\": \"number\"}, {\
        "word\": \"so\", \"start\": 11.84, \"end\": 12.08, \"conf
        idence\": 0.89335036, \"speaker\": 0, \"speaker_confidenc
        e\": 0.2667445, \"punctuated_word\": \"so\"}, {\"word\": 
        \"i\", \"start\": 12.08, \"end\": 12.16, \"confidence\": 
        0.999236, \"speaker\": 0, \"speaker_confidence\": 0.26674
        45, \"punctuated_word\": \"I\"}, {\"word\": \"can\", \"st
        art\": 12.16, \"end\": 12.32, \"confidence\": 0.99919015,
         \"speaker\": 0, \"speaker_confidence\": 0.6548568, \"pun
        ctuated_word\": \"can\"}, {\"word\": \"look\", \"start\":
         12.32, \"end\": 12.48, \"confidence\": 0.9993882, \"spea
        ker\": 0, \"speaker_confidence\": 0.6548568, \"punctuated
        _word\": \"look\"}, {\"word\": \"up\", \"start\": 12.48, 
        \"end\": 12.639999, \"confidence\": 0.99802244, \"speaker
        \": 0, \"speaker_confidence\": 0.6548568, \"punctuated_wo
        rd\": \"up\"}, {\"word\": \"your\", \"start\": 12.639999,
         \"end\": 12.799999, \"confidence\": 0.99812704, \"speake
        r\": 0, \"speaker_confidence\": 0.6548568, \"punctuated_w
        ord\": \"your\"}, {\"word\": \"account\", \"start\": 12.7
        99999, \"end\": 13.12, \"confidence\": 0.9978804, \"speak
        er\": 0, \"speaker_confidence\": 0.6548568, \"punctuated_
        word\": \"account?\"}, {\"word\": \"my\", \"start\": 13.7
        35, \"end\": 14.135, \"confidence\": 0.9996507, \"speaker
        \": 0, \"speaker_confidence\": 0.6548568, \"punctuated_wo
        rd\": \"My\"}, {\"word\": \"name\", \"start\": 14.135, \"
        end\": 14.295, \"confidence\": 0.9998702, \"speaker\": 0,
         \"speaker_confidence\": 0.6548568, \"punctuated_word\": 
        \"name\"}, {\"word\": \"is\", \"start\": 14.295, \"end\":
         14.455, \"confidence\": 0.99962306, \"speaker\": 0, \"sp
        eaker_confidence\": 0.6548568, \"punctuated_word\": \"is\
        "}, {\"word\": \"alice\", \"start\": 14.455, \"end\": 15.
        174999, \"confidence\": 0.93576753, \"speaker\": 0, \"spe
        aker_confidence\": 0.6548568, \"punctuated_word\": \"Alic
        e,\"}, {\"word\": \"and\", \"start\": 15.174999, \"end\":
         15.335, \"confidence\": 0.9998963, \"speaker\": 0, \"spe
        aker_confidence\": 0.6548568, \"punctuated_word\": \"and\
        "}, {\"word\": \"my\", \"start\": 15.335, \"end\": 15.575
        , \"confidence\": 0.9999398, \"speaker\": 0, \"speaker_co
        nfidence\": 0.6548568, \"punctuated_word\": \"my\"}, {\"w
        ord\": \"number\", \"start\": 15.575, \"end\": 15.8949995
        , \"confidence\": 0.9999269, \"speaker\": 0, \"speaker_co
        nfidence\": 0.6548568, \"punctuated_word\": \"number\"}, 
        {\"word\": \"is\", \"start\": 15.8949995, \"end\": 16.455
        , \"confidence\": 0.9997197, \"speaker\": 0, \"speaker_co
        nfidence\": 0.6548568, \"punctuated_word\": \"is\"}, {\"w
        ord\": \"+1\", \"start\": 16.455, \"end\": 16.775, \"conf
        idence\": 0.99967515, \"speaker\": 0, \"speaker_confidenc
        e\": 0.6548568, \"punctuated_word\": \"+1\"}, {\"word\": 
        \"234567890\", \"start\": 16.775, \"end\": 20.615, \"conf
        idence\": 0.99982315, \"speaker\": 0, \"speaker_confidenc
        e\": 0.65485674, \"punctuated_word\": \"234567890.\"}, {\
        "word\": \"thank\", \"start\": 20.775, \"end\": 21.095, \
        "confidence\": 0.9998648, \"speaker\": 0, \"speaker_confi
        dence\": 0.6548568, \"punctuated_word\": \"Thank\"}, {\"w
        ord\": \"you\", \"start\": 21.095, \"end\": 21.654999, \"
        confidence\": 0.999934, \"speaker\": 0, \"speaker_confide
        nce\": 0.6548568, \"punctuated_word\": \"you.\"}, {\"word
        \": \"okay\", \"start\": 22.935, \"end\": 23.335, \"confi
        dence\": 0.9996748, \"speaker\": 0, \"speaker_confidence\
        ": 0.6548568, \"punctuated_word\": \"Okay.\"}, {\"word\":
         \"i've\", \"start\": 24.134874, \"end\": 24.534874, \"co
        nfidence\": 0.995402, \"speaker\": 0, \"speaker_confidenc
        e\": 0.6548568, \"punctuated_word\": \"I've\"}, {\"word\"
        : \"added\", \"start\": 24.534874, \"end\": 24.854876, \"
        confidence\": 0.9885041, \"speaker\": 0, \"speaker_confid
        ence\": 0.6548568, \"punctuated_word\": \"added\"}, {\"wo
        rd\": \"two\", \"start\": 24.854876, \"end\": 25.094875, 
        \"confidence\": 0.80214345, \"speaker\": 0, \"speaker_con
        fidence\": 0.6548568, \"punctuated_word\": \"two\"}, {\"w
        ord\": \"to\", \"start\": 25.094875, \"end\": 25.254875, 
        \"confidence\": 0.8400144, \"speaker\": 0, \"speaker_conf
        idence\": 0.6548568, \"punctuated_word\": \"to\"}, {\"wor
        d\": \"your\", \"start\": 25.254875, \"end\": 25.414875, 
        \"confidence\": 0.9990602, \"speaker\": 0, \"speaker_conf
        idence\": 0.6548568, \"punctuated_word\": \"your\"}, {\"w
        ord\": \"service\", \"start\": 25.414875, \"end\": 25.734
        875, \"confidence\": 0.9951705, \"speaker\": 0, \"speaker
        _confidence\": 0.6548568, \"punctuated_word\": \"service.
        \"}, {\"word\": \"is\", \"start\": 25.734875, \"end\": 25
        .894875, \"confidence\": 0.9998394, \"speaker\": 0, \"spe
        aker_confidence\": 0.4939385, \"punctuated_word\": \"Is\"
        }, {\"word\": \"there\", \"start\": 25.894875, \"end\": 2
        6.054874, \"confidence\": 0.9998031, \"speaker\": 0, \"sp
        eaker_confidence\": 0.4939385, \"punctuated_word\": \"the
        re\"}, {\"word\": \"anything\", \"start\": 26.054874, \"e
        nd\": 26.294874, \"confidence\": 0.9997297, \"speaker\": 
        0, \"speaker_confidence\": 0.4939385, \"punctuated_word\"
        : \"anything\"}, {\"word\": \"else\", \"start\": 26.29487
        4, \"end\": 26.534874, \"confidence\": 0.999869, \"speake
        r\": 0, \"speaker_confidence\": 0.4939385, \"punctuated_w
        ord\": \"else\"}, {\"word\": \"that\", \"start\": 26.5348
        74, \"end\": 26.694874, \"confidence\": 0.6311746, \"spea
        ker\": 0, \"speaker_confidence\": 0.4939385, \"punctuated
        _word\": \"that\"}, {\"word\": \"i\", \"start\": 26.69487
        4, \"end\": 26.774876, \"confidence\": 0.9994104, \"speak
        er\": 0, \"speaker_confidence\": 0.4939385, \"punctuated_
        word\": \"I\"}, {\"word\": \"can\", \"start\": 26.774876,
         \"end\": 26.934875, \"confidence\": 0.9998919, \"speaker
        \": 0, \"speaker_confidence\": 0.4939385, \"punctuated_wo
        rd\": \"can\"}, {\"word\": \"help\", \"start\": 26.934875
        , \"end\": 27.094875, \"confidence\": 0.9998467, \"speake
        r\": 0, \"speaker_confidence\": 0.4939385, \"punctuated_w
        ord\": \"help\"}, {\"word\": \"you\", \"start\": 27.09487
        5, \"end\": 27.174875, \"confidence\": 0.9998344, \"speak
        er\": 0, \"speaker_confidence\": 0.4939385, \"punctuated_
        word\": \"you\"}, {\"word\": \"with\", \"start\": 27.1748
        75, \"end\": 27.734875, \"confidence\": 0.9998601, \"spea
        ker\": 0, \"speaker_confidence\": 0.4939385, \"punctuated
        _word\": \"with?\"}, {\"word\": \"no\", \"start\": 28.054
        874, \"end\": 28.534874, \"confidence\": 0.99971354, \"sp
        eaker\": 0, \"speaker_confidence\": 0.4939385, \"punctuat
        ed_word\": \"No.\"}, {\"word\": \"thank\", \"start\": 28.
        534874, \"end\": 28.774876, \"confidence\": 0.99988055, \
        "speaker\": 0, \"speaker_confidence\": 0.5919341, \"punct
        uated_word\": \"Thank\"}, {\"word\": \"you\", \"start\": 
        28.774876, \"end\": 29.334873, \"confidence\": 0.99990463
        , \"speaker\": 0, \"speaker_confidence\": 0.5919341, \"pu
        nctuated_word\": \"you.\"}, {\"word\": \"goodbye\", \"sta
        rt\": 29.334875, \"end\": 29.974874, \"confidence\": 0.99
        884653, \"speaker\": 0, \"speaker_confidence\": 0.5919341
        , \"punctuated_word\": \"Goodbye.\"}, {\"word\": \"goodby
        e\", \"start\": 30.374874, \"end\": 31.014874, \"confiden
        ce\": 0.9991617, \"speaker\": 0, \"speaker_confidence\": 
        0.5919341, \"punctuated_word\": \"Goodbye.\"}, {\"word\":
         \"have\", \"start\": 31.014874, \"end\": 31.334875, \"co
        nfidence\": 0.9997665, \"speaker\": 0, \"speaker_confiden
        ce\": 0.5919341, \"punctuated_word\": \"Have\"}, {\"word\
        ": \"a\", \"start\": 31.334875, \"end\": 31.494875, \"con
        fidence\": 0.9997255, \"speaker\": 0, \"speaker_confidenc
        e\": 0.5919341, \"punctuated_word\": \"a\"}, {\"word\": \
        "nice\", \"start\": 31.494875, \"end\": 31.654875, \"conf
        idence\": 0.99926084, \"speaker\": 0, \"speaker_confidenc
        e\": 0.5919341, \"punctuated_word\": \"nice\"}, {\"word\"
        : \"day\", \"start\": 31.654875, \"end\": 31.974874, \"co
        nfidence\": 0.9997565, \"speaker\": 0, \"speaker_confiden
        ce\": 0.007671833, \"punctuated_word\": \"day.\"}], \"par
        agraphs\": {\"transcript\": \"\\nSpeaker 0: Hello. This i
        s example.com. My name is Bob. How can I help you? Hi.\\n
        \\nI'd like to add Fu to my service. Okay. Can you give m
        e your name and phone number so I can look up your accoun
        t? My name is Alice, and my number is +1 234567890. Thank
         you.\\n\\nOkay. I've added two to your service. Is there
         anything else that I can help you with? No. Thank you.\\
        n\\nGoodbye. Goodbye. Have a nice day.\", \"paragraphs\":
         [{\"sentences\": [{\"text\": \"Hello.\", \"start\": 1.19
        99999, \"end\": 1.76}, {\"text\": \"This is example.com.\
        ", \"start\": 1.76, \"end\": 3.4399998}, {\"text\": \"My 
        name is Bob.\", \"start\": 3.4399998, \"end\": 4.3199997}
        , {\"text\": \"How can I help you?\", \"start\": 4.319999
        7, \"end\": 5.52}, {\"text\": \"Hi.\", \"start\": 5.6, \"
        end\": 6.3199997}], \"speaker\": 0, \"num_words\": 14, \"
        start\": 1.1999999, \"end\": 6.3199997}, {\"sentences\": 
        [{\"text\": \"I'd like to add Fu to my service.\", \"star
        t\": 6.3199997, \"end\": 8.799999}, {\"text\": \"Okay.\",
         \"start\": 9.2, \"end\": 9.839999}, {\"text\": \"Can you
         give me your name and phone number so I can look up your
         account?\", \"start\": 10.16, \"end\": 13.12}, {\"text\"
        : \"My name is Alice, and my number is +1 234567890.\", \
        "start\": 13.735, \"end\": 20.615}, {\"text\": \"Thank yo
        u.\", \"start\": 20.775, \"end\": 21.654999}], \"speaker\
        ": 0, \"num_words\": 37, \"start\": 6.3199997, \"end\": 2
        1.654999}, {\"sentences\": [{\"text\": \"Okay.\", \"start
        \": 22.935, \"end\": 23.335}, {\"text\": \"I've added two
         to your service.\", \"start\": 24.134874, \"end\": 25.73
        4875}, {\"text\": \"Is there anything else that I can hel
        p you with?\", \"start\": 25.734875, \"end\": 27.734875},
         {\"text\": \"No.\", \"start\": 28.054874, \"end\": 28.53
        4874}, {\"text\": \"Thank you.\", \"start\": 28.534874, \
        "end\": 29.334873}], \"speaker\": 0, \"num_words\": 20, \
        "start\": 22.935, \"end\": 29.334873}, {\"sentences\": [{
        \"text\": \"Goodbye.\", \"start\": 29.334875, \"end\": 29
        .974874}, {\"text\": \"Goodbye.\", \"start\": 30.374874, 
        \"end\": 31.014874}, {\"text\": \"Have a nice day.\", \"s
        tart\": 31.014874, \"end\": 31.974874}], \"speaker\": 0, 
        \"num_words\": 6, \"start\": 29.334875, \"end\": 31.97487
        4}]}}]}]}}",
      "encoding": "json",
      "vendor": "deepgram",
      "schema": "deepgram_prerecorded",
      "product": "transcription"
    },
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
