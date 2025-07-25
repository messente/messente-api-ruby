# MessenteApi::WhatsappPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **previous** | **String** | A URL to ge the previous paginated page. | [optional] |
| **_next** | **String** | A URL to ge the next paginated page. | [optional] |
| **cursors** | [**WhatsappPagingCursors**](WhatsappPagingCursors.md) |  |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsappPagination.new(
  previous: null,
  _next: null,
  cursors: null
)
```

