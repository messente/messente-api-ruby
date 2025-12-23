# MessenteApi::RcsContentInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_url** | **String** | Required file URL |  |
| **thumbnail_url** | **String** | Optional thumbnail URL | [optional] |
| **force_refresh** | **Boolean** | Force refresh the content |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::RcsContentInfo.new(
  file_url: null,
  thumbnail_url: null,
  force_refresh: null
)
```

