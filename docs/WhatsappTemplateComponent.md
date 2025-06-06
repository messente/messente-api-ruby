# MessenteApi::WhatsappTemplateComponent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**WhatsappComponentType**](WhatsappComponentType.md) |  | [optional] |
| **format** | [**WhatsappHeaderFormat**](WhatsappHeaderFormat.md) |  | [optional] |
| **text** | **String** | Text content of the component | [optional] |
| **example** | [**WhatsappTemplateExample**](WhatsappTemplateExample.md) |  | [optional] |
| **buttons** | [**Array&lt;WhatsappTemplateButton&gt;**](WhatsappTemplateButton.md) | List of buttons for the component | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsappTemplateComponent.new(
  type: null,
  format: null,
  text: null,
  example: null,
  buttons: null
)
```

