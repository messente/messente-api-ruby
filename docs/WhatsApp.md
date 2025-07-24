# MessenteApi::WhatsApp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | **String** | Phone number or alphanumeric sender name | [optional] |
| **validity** | **Integer** | After how many minutes this channel is   considered as failed and the next channel is attempted | [optional] |
| **ttl** | **Integer** | After how many seconds this channel is considered as failed and the next channel is attempted.       Only one of \&quot;ttl\&quot; and \&quot;validity\&quot; can be used. | [optional] |
| **template** | [**WhatsAppTemplate**](WhatsAppTemplate.md) |  | [optional] |
| **channel** | **String** | The channel used to deliver the message | [optional][default to &#39;whatsapp&#39;] |
| **text** | [**WhatsAppText**](WhatsAppText.md) |  | [optional] |
| **image** | [**WhatsAppImage**](WhatsAppImage.md) |  | [optional] |
| **video** | [**WhatsAppVideo**](WhatsAppVideo.md) |  | [optional] |
| **audio** | [**WhatsAppAudio**](WhatsAppAudio.md) |  | [optional] |
| **document** | [**WhatsAppDocument**](WhatsAppDocument.md) |  | [optional] |
| **sticker** | [**WhatsAppSticker**](WhatsAppSticker.md) |  | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsApp.new(
  sender: null,
  validity: 360,
  ttl: 21600,
  template: null,
  channel: null,
  text: null,
  image: null,
  video: null,
  audio: null,
  document: null,
  sticker: null
)
```

