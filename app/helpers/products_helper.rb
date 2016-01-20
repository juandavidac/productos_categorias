module ProductsHelper
  def form_title
    @product.new_record? ? "Create Product" : "Update Product"
  end
end
