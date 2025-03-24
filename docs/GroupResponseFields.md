# MessenteApi::GroupResponseFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id string in UUID format |  |
| **name** | **String** | The name of the group |  |
| **created_on** | **String** | When the group was created | [optional] |
| **contacts_count** | **Integer** | The count of contacts in the group |  |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::GroupResponseFields.new(
  id: null,
  name: null,
  created_on: null,
  contacts_count: null
)
```

