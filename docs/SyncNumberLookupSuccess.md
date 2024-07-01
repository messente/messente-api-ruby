# MessenteApi::SyncNumberLookupSuccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** | ID of the request |  |
| **result** | [**Array&lt;SyncNumberLookupResult&gt;**](SyncNumberLookupResult.md) | A container for phone number info objects |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::SyncNumberLookupSuccess.new(
  request_id: null,
  result: null
)
```

