# MessenteApi::WhatsappTemplateExample

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **header_text** | **Array&lt;String&gt;** | Example of the templated text for the header | [optional] |
| **body_text** | **Array&lt;Array&lt;String&gt;&gt;** | Example of the templated text for the body | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsappTemplateExample.new(
  header_text: null,
  body_text: null
)
```

