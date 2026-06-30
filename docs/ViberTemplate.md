# MessenteApi::ViberTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Template ID. |  |
| **lang** | **String** | Template language code. |  |
| **params** | **Hash&lt;String, String&gt;** | Optional template parameters as key-value string pairs. | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::ViberTemplate.new(
  id: null,
  lang: en,
  params: {&quot;name&quot;:&quot;John&quot;,&quot;order_number&quot;:&quot;12345&quot;}
)
```

