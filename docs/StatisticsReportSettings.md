# MessenteApi::StatisticsReportSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Date** | Start date for the report |  |
| **end_date** | **Date** | End date for the report |  |
| **message_types** | **Array&lt;String&gt;** | Optional list of message types (sms, viber, whatsapp, hlr, telegram) | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::StatisticsReportSettings.new(
  start_date: null,
  end_date: null,
  message_types: null
)
```

