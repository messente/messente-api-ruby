# MessenteApi::WhatsappPagingCursors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **before** | **String** | The template before the first template in the current list | [optional] |
| **after** | **String** | The template after the last template in the current list | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsappPagingCursors.new(
  before: null,
  after: null
)
```

