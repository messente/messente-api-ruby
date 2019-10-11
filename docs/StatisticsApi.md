# MessenteApi::StatisticsApi

All URIs are relative to *https://api.messente.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_statistics_report**](StatisticsApi.md#create_statistics_report) | **POST** /statistics/reports | Requests statistcs reports for each country



## create_statistics_report

> StatisticsReportSuccess create_statistics_report(statistics_report_settings)

Requests statistcs reports for each country

### Example

```ruby
# load the gem
require 'messente_api'
# setup authorization
MessenteApi.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = MessenteApi::StatisticsApi.new
statistics_report_settings = {"start_date":"2017-01-01","end_date":"2019-06-20","message_types":["sms"]} # StatisticsReportSettings | Settings for statistics report

begin
  #Requests statistcs reports for each country
  result = api_instance.create_statistics_report(statistics_report_settings)
  p result
rescue MessenteApi::ApiError => e
  puts "Exception when calling StatisticsApi->create_statistics_report: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **statistics_report_settings** | [**StatisticsReportSettings**](StatisticsReportSettings.md)| Settings for statistics report | 

### Return type

[**StatisticsReportSuccess**](StatisticsReportSuccess.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

