# MessenteApi::WhatsAppComponent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of the component |  |
| **sub_type** | **String** | Sub-type of the component | [optional] |
| **index** | **Integer** | index used to position buttons | [optional] |
| **parameters** | [**Array&lt;WhatsAppParameter&gt;**](WhatsAppParameter.md) | List of parameters for the component | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsAppComponent.new(
  type: null,
  sub_type: null,
  index: null,
  parameters: null
)
```

