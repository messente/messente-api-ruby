# MessenteApi::PriceInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **part_price** | **String** | price per message part - relevant mostly for SMS |  |
| **parts_count** | **Integer** | the number of parts the message consists of |  |
| **total_price** | **String** | total price for the message |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::PriceInfo.new(
  part_price: null,
  parts_count: null,
  total_price: null
)
```

