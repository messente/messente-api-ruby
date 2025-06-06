# MessenteApi::WhatsappListTemplatesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **templates** | [**Array&lt;WhatsappTemplateResponse&gt;**](WhatsappTemplateResponse.md) | List of templates |  |
| **paging** | [**WhatsappPagination**](WhatsappPagination.md) |  |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsappListTemplatesResponse.new(
  templates: null,
  paging: null
)
```

