# MessenteApi::ViberCarouselItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Carousel item title. |  |
| **image_url** | **String** | URL of the carousel item image. |  |
| **primary_button** | [**ViberCarouselButton**](ViberCarouselButton.md) |  |  |
| **secondary_button** | [**ViberCarouselButton**](ViberCarouselButton.md) |  | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::ViberCarouselItem.new(
  title: null,
  image_url: null,
  primary_button: null,
  secondary_button: null
)
```

