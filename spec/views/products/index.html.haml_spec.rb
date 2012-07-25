require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :title => "Title",
        :description => "MyText",
        :price => "9.99",
        :retired => false
      ),
      stub_model(Product,
        :title => "Title",
        :description => "MyText",
        :price => "9.99",
        :retired => true
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "false".to_s, :count => 1
    assert_select "tr>td", :text => "true".to_s, :count => 1
  end
end
