# MessenteApi::WhatsAppDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the document file. | [optional] |
| **caption** | **String** | Caption for the document. | [optional] |
| **mime_type** | **String** | MIME type of the document file. | [optional] |
| **file_name** | **String** | Name of the document file. | [optional] |
| **link** | **String** | URL link to the document file. | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsAppDocument.new(
  id: 98765,
  caption: Please review this document.,
  mime_type: application/pdf,
  file_name: example.pdf,
  link: https://example.com/document.pdf
)
```

