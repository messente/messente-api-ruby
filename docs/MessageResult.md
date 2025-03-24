# MessenteApi::MessageResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | Unique identifier for the message |  |
| **channel** | [**Channel**](Channel.md) |  |  |
| **sender** | **String** | Sender that was used for the message |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::MessageResult.new(
  message_id: null,
  channel: null,
  sender: null
)
```

