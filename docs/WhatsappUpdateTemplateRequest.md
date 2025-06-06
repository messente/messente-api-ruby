# MessenteApi::WhatsappUpdateTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | [**WhatsappTemplateCategory**](WhatsappTemplateCategory.md) |  | [optional] |
| **components** | [**Array&lt;WhatsappTemplateComponent&gt;**](WhatsappTemplateComponent.md) | List of template components | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsappUpdateTemplateRequest.new(
  category: null,
  components: null
)
```

