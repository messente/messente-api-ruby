# MessenteApi::WhatsApp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | **String** | Phone number or alphanumeric sender name | [optional] |
| **validity** | **Integer** | After how many minutes this channel is   considered as failed and the next channel is attempted | [optional] |
| **text** | [**WhatsAppText**](WhatsAppText.md) |  | [optional] |
| **image** | [**WhatsAppImage**](WhatsAppImage.md) |  | [optional] |
| **document** | [**WhatsAppDocument**](WhatsAppDocument.md) |  | [optional] |
| **audio** | [**WhatsAppAudio**](WhatsAppAudio.md) |  | [optional] |
| **channel** | **String** | The channel used to deliver the message | [optional][default to &#39;whatsapp&#39;] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsApp.new(
  sender: null,
  validity: 360,
  text: null,
  image: null,
  document: null,
  audio: null,
  channel: null
)
```

