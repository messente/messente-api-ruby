# MessenteApi::OmnimessageMessagesInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'messente_api'

MessenteApi::OmnimessageMessagesInner.openapi_one_of
# =>
# [
#   :'SMS',
#   :'Telegram',
#   :'Viber',
#   :'WhatsApp'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'messente_api'

MessenteApi::OmnimessageMessagesInner.build(data)
# => #<SMS:0x00007fdd4aab02a0>

MessenteApi::OmnimessageMessagesInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `SMS`
- `Telegram`
- `Viber`
- `WhatsApp`
- `nil` (if no type matches)

