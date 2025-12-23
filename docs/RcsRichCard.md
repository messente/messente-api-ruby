# MessenteApi::RcsRichCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **standalone_card** | [**RcsStandaloneCard**](RcsStandaloneCard.md) |  | [optional] |
| **carousel_card** | [**RcsCarouselCard**](RcsCarouselCard.md) |  | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::RcsRichCard.new(
  standalone_card: null,
  carousel_card: null
)
```

