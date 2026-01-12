# MessenteApi::RcsSuggestedReply

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text of the suggested reply. |  |
| **postback_data** | **String** | The postback data associated with the suggested reply. This is sent back to the sender when the user selects the suggested reply. |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::RcsSuggestedReply.new(
  text: null,
  postback_data: null
)
```

