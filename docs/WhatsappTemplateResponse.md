# MessenteApi::WhatsappTemplateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Template ID |  |
| **components** | [**Array&lt;WhatsappTemplateComponent&gt;**](WhatsappTemplateComponent.md) | List of template components |  |
| **language** | **String** | Language of the template |  |
| **name** | **String** | Name of the template |  |
| **category** | [**WhatsappTemplateCategory**](WhatsappTemplateCategory.md) |  |  |
| **status** | [**WhatsappTemplateStatus**](WhatsappTemplateStatus.md) |  |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsappTemplateResponse.new(
  id: null,
  components: null,
  language: null,
  name: null,
  category: null,
  status: null
)
```

