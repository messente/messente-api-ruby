# MessenteApi::WhatsAppMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The media object ID. Do not use this field when message type is set to text. | [optional] |
| **link** | **String** | The protocol and URL of the media to be sent. Use only with HTTP/HTTPS URLs.       Do not use this field when message type is set to text. | [optional] |
| **caption** | **String** | Media asset caption. Do not use with audio or sticker media. | [optional] |
| **filename** | **String** | Describes the filename for the specific document. Use only with document media. | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsAppMedia.new(
  id: null,
  link: null,
  caption: null,
  filename: null
)
```

