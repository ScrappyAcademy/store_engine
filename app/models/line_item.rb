class LineItem
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :product_id

  def initialize(attributes={})
    @product_id = attributes.fetch(:product_id) {
      attributes.fetch(:product).id
    }
  end

  def product
    Product.find @product_id
  end

  def persisted?
    false
  end
end
