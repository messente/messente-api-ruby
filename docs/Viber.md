# MessenteApi::Viber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | **String** | Phone number or alphanumeric sender name | [optional] |
| **validity** | **Integer** | After how many minutes this channel is considered as failed and the next channel is attempted | [optional] |
| **text** | **String** | Plaintext content for Viber | [optional] |
| **image_url** | **String** | URL for the embedded image    Valid combinations:    1) image_url,    2) text, image_url, button_url, button_text | [optional] |
| **button_url** | **String** | URL of the button, must be specified along with &#39;&#39;text&#39;&#39;, &#39;&#39;button_text&#39;&#39; and &#39;&#39;image_url&#39;&#39; (optional) | [optional] |
| **button_text** | **String** | Must be specified along with &#39;&#39;text&#39;&#39;, &#39;&#39;button_url&#39;&#39;, &#39;&#39;button_text&#39;&#39;, &#39;&#39;image_url&#39;&#39; (optional) | [optional] |
| **channel** | **String** | The channel used to deliver the message | [optional][default to &#39;viber&#39;] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::Viber.new(
  sender: null,
  validity: 360,
  text: null,
  image_url: null,
  button_url: null,
  button_text: null,
  channel: null
)
```

