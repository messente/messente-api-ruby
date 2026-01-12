# MessenteApi::Rcs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel** | **String** | The channel used to deliver the message | [optional][default to &#39;rcs&#39;] |
| **sender** | **String** | Phone number or alphanumeric sender name |  |
| **validity** | **Integer** | After how many minutes this channel is considered as failed and the next channel is attempted.Only one of \&quot;ttl\&quot; and \&quot;validity\&quot; can be used. | [optional] |
| **ttl** | **Integer** | After how many seconds this channel is considered as failed and the next channel is attempted. Only one of \&quot;ttl\&quot; and \&quot;validity\&quot; can be used. | [optional] |
| **text** | **String** | Text content of the RCS message | [optional] |
| **suggestions** | [**Array&lt;RcsSuggestion&gt;**](RcsSuggestion.md) | List of suggestions to include with the message | [optional] |
| **rich_card** | [**RcsRichCard**](RcsRichCard.md) |  | [optional] |
| **content_info** | [**RcsContentInfo**](RcsContentInfo.md) |  | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::Rcs.new(
  channel: null,
  sender: null,
  validity: 360,
  ttl: 21600,
  text: null,
  suggestions: null,
  rich_card: null,
  content_info: null
)
```

