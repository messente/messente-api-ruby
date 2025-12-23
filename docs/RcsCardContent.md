# MessenteApi::RcsCardContent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Title of the card content | [optional] |
| **description** | **String** | Description of the card content | [optional] |
| **media** | [**RcsMedia**](RcsMedia.md) |  | [optional] |
| **suggestions** | [**Array&lt;RcsSuggestion&gt;**](RcsSuggestion.md) | List of suggestions that the recipient can use to respond. | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::RcsCardContent.new(
  title: null,
  description: null,
  media: null,
  suggestions: null
)
```

