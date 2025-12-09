# MessenteApi::RcsOpenUrlAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The URL to open. |  |
| **description** | **String** | A description of the URL being opened. |  |
| **application** | [**RcsOpenUrlApplication**](RcsOpenUrlApplication.md) |  |  |
| **webview_view_mode** | [**RcsWebviewViewMode**](RcsWebviewViewMode.md) |  |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::RcsOpenUrlAction.new(
  url: null,
  description: null,
  application: null,
  webview_view_mode: null
)
```

