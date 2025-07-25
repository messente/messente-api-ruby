# MessenteApi::WhatsAppSticker

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the sticker file. | [optional] |
| **mime_type** | **String** | MIME type of the sticker file. | [optional] |
| **animated** | **Boolean** | Indicates whether the sticker is animated. | [optional] |
| **link** | **String** | URL link to the sticker file. | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsAppSticker.new(
  id: 54321,
  mime_type: image/webp,
  animated: true,
  link: https://example.com/sticker.webp
)
```

