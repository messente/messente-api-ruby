# MessenteApi::WhatsAppParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of the parameter. |  |
| **text** | **String** | A text. | [optional] |
| **currency** | [**WhatsAppCurrency**](WhatsAppCurrency.md) |  | [optional] |
| **date_time** | [**WhatsAppDatetime**](WhatsAppDatetime.md) |  | [optional] |
| **image** | [**WhatsAppMedia**](WhatsAppMedia.md) |  | [optional] |
| **document** | [**WhatsAppMedia**](WhatsAppMedia.md) |  | [optional] |
| **video** | [**WhatsAppMedia**](WhatsAppMedia.md) |  | [optional] |
| **coupon_code** | **String** | A coupon code. | [optional] |
| **payload** | **String** | A payload. | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsAppParameter.new(
  type: null,
  text: null,
  currency: null,
  date_time: null,
  image: null,
  document: null,
  video: null,
  coupon_code: null,
  payload: null
)
```

