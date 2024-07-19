# MessenteApi::BulkOmniMessageCreateSuccessResponseMessagesInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'messente_api'

MessenteApi::BulkOmniMessageCreateSuccessResponseMessagesInner.openapi_one_of
# =>
# [
#   :'ErrorOmnichannel',
#   :'OmniMessageCreateSuccessResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'messente_api'

MessenteApi::BulkOmniMessageCreateSuccessResponseMessagesInner.build(data)
# => #<ErrorOmnichannel:0x00007fdd4aab02a0>

MessenteApi::BulkOmniMessageCreateSuccessResponseMessagesInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ErrorOmnichannel`
- `OmniMessageCreateSuccessResponse`
- `nil` (if no type matches)

