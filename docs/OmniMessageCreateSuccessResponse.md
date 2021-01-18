# MessenteApi::OmniMessageCreateSuccessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messages** | [**Array&lt;MessageResult&gt;**](MessageResult.md) | List of messages that compose the omnimessage |  |
| **to** | **String** | Phone number in e.164 format |  |
| **omnimessage_id** | **String** | Unique identifier for the omnimessage |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::OmniMessageCreateSuccessResponse.new(
  messages: null,
  to: null,
  omnimessage_id: null
)
```

