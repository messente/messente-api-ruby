# MessenteApi::WhatsAppAudio

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the audio file. | [optional] |
| **mime_type** | **String** | MIME type of the audio file. | [optional] |
| **link** | **String** | URL link to the audio file. | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsAppAudio.new(
  id: 12345,
  mime_type: audio/mpeg,
  link: https://example.com/audio.mp3
)
```

