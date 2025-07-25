# MessenteApi::WhatsAppVideo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the video file. | [optional] |
| **caption** | **String** | Caption for the video. | [optional] |
| **mime_type** | **String** | MIME type of the video file. | [optional] |
| **link** | **String** | URL link to the video file. | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsAppVideo.new(
  id: 67890,
  caption: Check out this video!,
  mime_type: video/mp4,
  link: https://example.com/video.mp4
)
```

