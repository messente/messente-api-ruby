# MessenteApi::WhatsAppCurrency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fallback_value** | **String** | Default text if localization fails. |  |
| **code** | **String** | Currency code as defined in ISO 4217. |  |
| **amount_1000** | **String** | Amount multiplied by 1000. |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsAppCurrency.new(
  fallback_value: null,
  code: null,
  amount_1000: null
)
```

