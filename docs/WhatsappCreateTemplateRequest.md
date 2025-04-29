# MessenteApi::WhatsappCreateTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the template |  |
| **category** | [**WhatsappTemplateCategory**](WhatsappTemplateCategory.md) |  |  |
| **language** | **String** | Language of the template |  |
| **components** | [**Array&lt;WhatsappTemplateComponent&gt;**](WhatsappTemplateComponent.md) | List of template components |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsappCreateTemplateRequest.new(
  name: null,
  category: null,
  language: null,
  components: null
)
```

