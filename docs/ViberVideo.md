# MessenteApi::ViberVideo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL pointing to the video resource. |  |
| **thumbnail** | **String** | URL pointing to the video thumbnail resource. |  |
| **file_size** | **Integer** | Size of the video file in bytes. Cannot be larger than 200MB. |  |
| **duration** | **Integer** | Duration of the video in seconds. Cannot be longer than 600 seconds. |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::ViberVideo.new(
  url: null,
  thumbnail: null,
  file_size: null,
  duration: null
)
```

