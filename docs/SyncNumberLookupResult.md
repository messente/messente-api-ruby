# MessenteApi::SyncNumberLookupResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | Phone number in e.164 format |  |
| **roaming** | **Boolean** | Indicates if a number is roaming | [optional] |
| **ported** | **Boolean** | Indicates if a number is ported | [optional] |
| **roaming_network** | [**MobileNetwork**](MobileNetwork.md) |  | [optional] |
| **current_network** | [**MobileNetwork**](MobileNetwork.md) |  | [optional] |
| **original_network** | [**MobileNetwork**](MobileNetwork.md) |  | [optional] |
| **ported_network** | [**MobileNetwork**](MobileNetwork.md) |  | [optional] |
| **status** | **String** | Status of the phone number | [optional] |
| **error** | **Object** | Indicates if any error occurred while handling the request | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::SyncNumberLookupResult.new(
  number: null,
  roaming: null,
  ported: null,
  roaming_network: null,
  current_network: null,
  original_network: null,
  ported_network: null,
  status: null,
  error: null
)
```

