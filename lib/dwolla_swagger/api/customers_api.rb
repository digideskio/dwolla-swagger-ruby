require "uri"

module DwollaSwagger
  class CustomersApi
    basePath = "https://localhost/"
    # apiInvoker = APIInvoker
    @auth_names = ['oauth2']
  

    # Get a list of customers.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [int] :limit How many results to return.
    # @option opts [int] :offset How many results to skip.
    # @return [CustomerListResponse]
    def self.list(opts = {})
      

      # resource path
      path = "/customers".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/vnd.dwolla.v1.hal+json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      if :GET == :POST
        response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make.headers
        response['Location']
      else
        response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make.body
        obj = CustomerListResponse.new() and obj.build_from_hash(response)
      end
    end

    # Create a new customer.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCustomer] :body Customer to create.
    # @return [Unit]
    def self.create(opts = {})
      

      # resource path
      path = "/customers".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/vnd.dwolla.v1.hal+json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/vnd.dwolla.v1.hal+json']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(opts[:'body'])
      

      if :POST == :POST
        response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make.headers
        response['Location']
      else
        response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make.body
        obj = Unit.new() and obj.build_from_hash(response)
      end
    end

    # Get a customer by id
    # 
    # @param id Id of customer to get.
    # @param [Hash] opts the optional parameters
    # @return [Customer]
    def self.get_customer(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling get_customer" if id.nil?
      

      # resource path
      path = "/customers/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/vnd.dwolla.v1.hal+json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/vnd.dwolla.v1.hal+json']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      if :GET == :POST
        response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make.headers
        response['Location']
      else
        response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make.body
        obj = Customer.new() and obj.build_from_hash(response)
      end
    end

    # Update customer record. Personal customer records are re-verified upon update.
    # 
    # @param id Id of customer to update.
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateCustomer] :body Customer to update.
    # @return [Customer]
    def self.update_customer(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling update_customer" if id.nil?
      

      # resource path
      path = "/customers/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/vnd.dwolla.v1.hal+json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/vnd.dwolla.v1.hal+json']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(opts[:'body'])
      

      if :POST == :POST
        response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make.headers
        response['Location']
      else
        response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make.body
        obj = Customer.new() and obj.build_from_hash(response)
      end
    end

    # Get documents uploaded for customer.
    # 
    # @param id ID of customer.
    # @param [Hash] opts the optional parameters
    # @return [DocumentListResponse]
    def self.get_customer_documents(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling get_customer_documents" if id.nil?
      

      # resource path
      path = "/customers/{id}/documents".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/vnd.dwolla.v1.hal+json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      if :GET == :POST
        response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make.headers
        response['Location']
      else
        response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make.body
        obj = DocumentListResponse.new() and obj.build_from_hash(response)
      end
    end

    # Upload a verification document.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Unit]
    def self.upload_document(opts = {})
      

      # resource path
      path = "/customers/{id}/documents".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      if :POST == :POST
        response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make.headers
        response['Location']
      else
        response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make.body
        obj = Unit.new() and obj.build_from_hash(response)
      end
    end
  end
end
