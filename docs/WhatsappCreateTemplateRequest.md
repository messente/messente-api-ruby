# MessenteApi::WhatsappCreateTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the template |  |
| **category** | [**WhatsappTemplateCategory**](WhatsappTemplateCategory.md) |  |  |
| **allow_category_change** | **Boolean** | Allow category change | [optional][default to false] |
| **language** | **String** | Language of the template |  |
| **components** | [**Array&lt;WhatsappTemplateComponent&gt;**](WhatsappTemplateComponent.md) | List of template components |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsappCreateTemplateRequest.new(
  name: null,
  category: null,
  allow_category_change: null,
  language: null,
  components: null
)
```

