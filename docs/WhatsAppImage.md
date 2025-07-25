# MessenteApi::WhatsAppImage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the image file. | [optional] |
| **caption** | **String** | Caption for the image. | [optional] |
| **mime_type** | **String** | MIME type of the image file. | [optional] |
| **link** | **String** | URL link to the image file. | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsAppImage.new(
  id: 12345,
  caption: Check out this image!,
  mime_type: image/jpeg,
  link: https://example.com/image.jpg
)
```

