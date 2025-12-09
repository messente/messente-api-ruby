# MessenteApi::OmnimessageMessagesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | **String** | Phone number or alphanumeric sender name |  |
| **validity** | **Integer** | After how many minutes this channel is considered as failed and the next channel is attempted.Only one of \&quot;ttl\&quot; and \&quot;validity\&quot; can be used. | [optional] |
| **ttl** | **Integer** | After how many seconds this channel is considered as failed and the next channel is attempted. Only one of \&quot;ttl\&quot; and \&quot;validity\&quot; can be used. | [optional] |
| **text** | **String** | Text content of the RCS message |  |
| **image_url** | **String** | URL for the embedded image    Valid combinations:    1) image_url,    2) text, image_url, button_url, button_text | [optional] |
| **button_url** | **String** | URL of the button, must be specified along with &#39;&#39;text&#39;&#39;, &#39;&#39;button_text&#39;&#39; and &#39;&#39;image_url&#39;&#39; (optional) | [optional] |
| **button_text** | **String** | Must be specified along with &#39;&#39;text&#39;&#39;, &#39;&#39;button_url&#39;&#39;, &#39;&#39;button_text&#39;&#39;, &#39;&#39;image_url&#39;&#39; (optional) | [optional] |
| **channel** | **String** | The channel used to deliver the message | [optional][default to &#39;rcs&#39;] |
| **video** | [**WhatsAppVideo**](WhatsAppVideo.md) |  | [optional] |
| **autoconvert** | **String** | Defines how non-GSM characters will be treated:    - \&quot;on\&quot; Use replacement settings from the account&#39;s [API Auto Replace settings page](https://dashboard.messente.com/api-settings/auto-replace) (default)   - \&quot;full\&quot; All non GSM 03.38 characters will be replaced with suitable alternatives   - \&quot;off\&quot; Message content is not modified in any way | [optional] |
| **udh** | **String** | hex-encoded string containing SMS UDH | [optional] |
| **template** | [**WhatsAppTemplate**](WhatsAppTemplate.md) |  | [optional] |
| **image** | [**WhatsAppImage**](WhatsAppImage.md) |  | [optional] |
| **audio** | [**WhatsAppAudio**](WhatsAppAudio.md) |  | [optional] |
| **document** | [**WhatsAppDocument**](WhatsAppDocument.md) |  | [optional] |
| **sticker** | [**WhatsAppSticker**](WhatsAppSticker.md) |  | [optional] |
| **suggestions** | [**Array&lt;RcsSuggestion&gt;**](RcsSuggestion.md) | List of suggestions to include with the message | [optional] |
| **rich_card** | [**RcsRichCard**](RcsRichCard.md) |  | [optional] |
| **content_info** | [**RcsContentInfo**](RcsContentInfo.md) |  | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::OmnimessageMessagesInner.new(
  sender: null,
  validity: 360,
  ttl: 21600,
  text: null,
  image_url: null,
  button_url: null,
  button_text: null,
  channel: null,
  video: null,
  autoconvert: null,
  udh: null,
  template: null,
  image: null,
  audio: null,
  document: null,
  sticker: null,
  suggestions: null,
  rich_card: null,
  content_info: null
)
```

