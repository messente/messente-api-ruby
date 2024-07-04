# MessenteApi::BulkOmniMessageCreateSuccessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messages** | [**Array&lt;BulkOmniMessageCreateSuccessResponseMessagesInner&gt;**](BulkOmniMessageCreateSuccessResponseMessagesInner.md) | List of responses for each Omnimessage in the bulk. These can be errors or successful responses |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::BulkOmniMessageCreateSuccessResponse.new(
  messages: null
)
```

