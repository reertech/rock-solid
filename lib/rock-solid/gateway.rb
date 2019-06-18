module RockSolid
  class Gateway
    def get_all_lists(options)
      post('GetAllCompanyLists', options)
    end

    def get_list_items(options)
      post('GetListItemsByListNameV4', options)
    end

    def get_product_details(options)
      post('GetProduct', options)
    end

    def get_product_images(options)
      post('GetProductImages', options)
    end

    private

    def post(action, options)
      url = ['http://webservices.solidcommerce.com/ws.asmx', action].join('/')

      ::RestClient.post(url, options)
    end
  end
end
