
## Contact Center Use case Meta-Data Gap Analysis

The following table maps meta-data requirements defined in draft-rosenberg-vcon-cc-usecases to parameters defined in draft-petrie-vcon:

|draft-rosenberg-vcon-cc-usecases |draft-petrie-vcon ||||
| ------------ | --------- | ------- | -------- | ----- |
| **CC Meta-Data** | **Parameter** | **Section** | **Action** | **I-D** |
|Interaction Type |Dialog Object: type and mimetype?? ||Perhaps more needed?  Currently no differentiation between email, SMS and web chat; or video and screen recording. added interaction_type 4.3.13, added application 4.3.16 | CC |
|Interaction ID | | |Add interaction_id parameter to Dialog Object.  Added 4.3.14 | CC |
|File Type |Dialog Object: type and mimetype |4.3.1 and 4.3.6 || Core |
|Media meta-data |Dialog Object and Dialog Content |4.3 || Core |
|Start Time |Dialog Object: start |4.3.2 || Core |
|Duration |Dialog Object: duration |4.3.3 || Core |
|Direction of call |Dialog Object: originator |4.3.5 || Core |
|Participant UUID| | |Add uuid parameter to Party Object.  Added 4.2.10 | ? |
|First Name |Party Object: name |4.3.4 || Core |
|Last Name |Party Object: name |4.3.4 || Core |
|Participant Type | | |Add role parameter to Party Object.  Added some defined tokens for role types. Added 4.2.11 | CC |
|Participant Info |Party Object: tel, stir, mailto, jCard, etc | 4.3.1, 4.2.2, 4.2.3, 4.2.6 and 4.2.X || Core |
|PII and PCI Information | | |Add type parameter to Redacted Object. Added to 4.1.6 | Core |
|Skill | | |Add skills parameter to dialog Object.  Added to 4.3.14 | CC |
|Campaign | | |Add campaign parameter to Dialog Object. Added 4.3.12 | CC |
|Transfer Bit Flag |Dialog Object: Dialog Transfer |4.3.11 || Core |
|Conference Bit Flag |Dialog Object: parties |4.3.4 || Core |
|Number of Conferences |Dialog Object: parties |4.3.4 || Core |
|Number of Transfers |Dialog Object: Dialog Transfer |4.3.11 || Core |
|Number of holds | | |Add party_history array parameter to Dialog Object.  Added 4.3.10 | Core |
|Hangup Party | | |Add party_history array parameter to Dialog Object.  Added 4.3.10 | Core |
|Disposition |Dialog Object: disposition |4.3.9 || Core |
|Dialing List | | |Add contact_list parameter to Party Object. Added 4.2.12 | CC |

