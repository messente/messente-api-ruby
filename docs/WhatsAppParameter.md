# MessenteApi::WhatsAppParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of the parameter |  |
| **text** | **String** | A text | [optional] |
| **currency** | **Object** | A currency object | [optional] |
| **date_time** | **Object** | A date_time object | [optional] |
| **image** | **Object** | A media object of type image | [optional] |
| **document** | **Object** | A media object of type document | [optional] |
| **video** | **Object** | A media object of type video | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsAppParameter.new(
  type: null,
  text: null,
  currency: null,
  date_time: null,
  image: null,
  document: null,
  video: null
)
```

