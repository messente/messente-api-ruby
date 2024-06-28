# MessenteApi::StatisticsApi

All URIs are relative to *https://api.messente.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_statistics_report**](StatisticsApi.md#create_statistics_report) | **POST** /statistics/reports | Requests statistics reports for each country |


## create_statistics_report

> <StatisticsReportSuccess> create_statistics_report(statistics_report_settings)

Requests statistics reports for each country

### Examples

```ruby
require 'time'
require 'messente_api'
# setup authorization
MessenteApi.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = MessenteApi::StatisticsApi.new
statistics_report_settings = MessenteApi::StatisticsReportSettings.new({start_date: Date.today, end_date: Date.today}) # StatisticsReportSettings | Settings for statistics report

begin
  # Requests statistics reports for each country
  result = api_instance.create_statistics_report(statistics_report_settings)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling StatisticsApi->create_statistics_report: #{e}"
end
```

#### Using the create_statistics_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatisticsReportSuccess>, Integer, Hash)> create_statistics_report_with_http_info(statistics_report_settings)

```ruby
begin
  # Requests statistics reports for each country
  data, status_code, headers = api_instance.create_statistics_report_with_http_info(statistics_report_settings)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatisticsReportSuccess>
rescue MessenteApi::ApiError => e
  puts "Error when calling StatisticsApi->create_statistics_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **statistics_report_settings** | [**StatisticsReportSettings**](StatisticsReportSettings.md) | Settings for statistics report |  |

### Return type

[**StatisticsReportSuccess**](StatisticsReportSuccess.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

