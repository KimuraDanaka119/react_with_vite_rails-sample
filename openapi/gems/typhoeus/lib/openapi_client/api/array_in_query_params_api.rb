=begin
#React With Vite Rails API

#react_with_vite_rails リポジトリのAPIスキーマです

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0-SNAPSHOT

=end

require 'cgi'

module OpenapiClient
  class ArrayInQueryParamsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Arrayをクエリ文字列に入れてリクエストするAPI 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :names 果物の名前のリスト 
    # @return [FruitsResponse]
    def fetch_array_in_query_params_fruits(opts = {})
      data, _status_code, _headers = fetch_array_in_query_params_fruits_with_http_info(opts)
      data
    end

    # Arrayをクエリ文字列に入れてリクエストするAPI 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :names 果物の名前のリスト 
    # @return [Array<(FruitsResponse, Integer, Hash)>] FruitsResponse data, response status code and response headers
    def fetch_array_in_query_params_fruits_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArrayInQueryParamsApi.fetch_array_in_query_params_fruits ...'
      end
      # resource path
      local_var_path = '/api/array_in_query_params/fruits'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'names[]'] = @api_client.build_collection_param(opts[:'names'], :multi) if !opts[:'names'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FruitsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ArrayInQueryParamsApi.fetch_array_in_query_params_fruits",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArrayInQueryParamsApi#fetch_array_in_query_params_fruits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end