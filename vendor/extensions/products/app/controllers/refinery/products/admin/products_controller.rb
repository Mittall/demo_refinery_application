module Refinery
  module Products
    module Admin
      class ProductsController < ::Refinery::AdminController

        crudify :'refinery/products/product',
                :title_attribute => 'name',
                :order => 'created_at DESC',
                :sortable => false

        private

        # Only allow a trusted parameter "white list" through.
        def product_params
          params.require(:product).permit(:name, :price, :photo_id)
        end
      end
    end
  end
end
