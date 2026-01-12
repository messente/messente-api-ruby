# MessenteApi::RcsSuggestedAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text of the suggested action. Exactly one of the action fields (types) must be provided. |  |
| **postback_data** | **String** | The postback data associated with the suggested action. This is sent back to the sender when the user selects the suggested action. |  |
| **fallback_url** | **String** | The fallback URL to open if the suggested action is not supported. | [optional] |
| **dial_action** | [**RcsDialAction**](RcsDialAction.md) |  | [optional] |
| **view_location_action** | [**RcsViewLocationAction**](RcsViewLocationAction.md) |  | [optional] |
| **create_calendar_event_action** | [**RcsCreateCalendarEventAction**](RcsCreateCalendarEventAction.md) |  | [optional] |
| **open_url_action** | [**RcsOpenUrlAction**](RcsOpenUrlAction.md) |  | [optional] |
| **share_location_action** | **Object** | This action does not have any properties. It simply triggers the share location action. | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::RcsSuggestedAction.new(
  text: null,
  postback_data: null,
  fallback_url: null,
  dial_action: null,
  view_location_action: null,
  create_calendar_event_action: null,
  open_url_action: null,
  share_location_action: null
)
```

