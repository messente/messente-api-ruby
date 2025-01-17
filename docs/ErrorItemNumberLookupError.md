# MessenteApi::ErrorItemNumberLookupError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Error description |  |
| **code** | **Integer** | Matches the following error title.   This field is a constant  * 101 - Unauthorized * 102 - Invalid arguments or parameters * 103 - Server error * 104 - Crediting error #1 * 105 - Crediting error #2 * 106 - Client error |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::ErrorItemNumberLookupError.new(
  description: null,
  code: null
)
```

