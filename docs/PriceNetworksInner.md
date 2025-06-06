# MessenteApi::PriceNetworksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the network |  |
| **price** | **String** | The price for sending a message to this network |  |
| **mccmnc** | **Float** | The MCCMNC code for the network |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::PriceNetworksInner.new(
  name: Tele2,
  price: 0.01,
  mccmnc: 24602
)
```

