# MessenteApi::StatisticsReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_messages** | **Integer** | Sum of all messages |  |
| **total_price** | **String** | Price for all messages |  |
| **country** | **String** | Target country of all messages |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::StatisticsReport.new(
  total_messages: null,
  total_price: null,
  country: null
)
```

