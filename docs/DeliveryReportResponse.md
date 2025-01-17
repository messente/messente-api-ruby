# MessenteApi::DeliveryReportResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **statuses** | [**Array&lt;DeliveryResult&gt;**](DeliveryResult.md) | Contains the delivery reports for each channel, ordered by send order |  |
| **to** | **String** | Phone number in e.164 format |  |
| **omnimessage_id** | **String** | Unique identifier for the omnimessage |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::DeliveryReportResponse.new(
  statuses: null,
  to: null,
  omnimessage_id: null
)
```

