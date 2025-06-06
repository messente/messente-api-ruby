# MessenteApi::Price

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | The alpha-2 code for the country |  |
| **name** | **String** | The name of the country |  |
| **prefix** | **String** | The country code prefix |  |
| **networks** | [**Array&lt;PriceNetworksInner&gt;**](PriceNetworksInner.md) | A list of networks available in the country |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::Price.new(
  country: EE,
  name: Estonia,
  prefix: 372,
  networks: null
)
```

