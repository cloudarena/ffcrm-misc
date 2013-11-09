require 'spec_helper'

describe Product do

  describe "attributes name and price" do
    it " should set attribute properly with intialize" do
      p = Product.new(:name => "Skirt", :price => 23.3)
      p.name.should eq("Skirt")
      p.price.should eq(23.3)
    end

    it "set & read attribute" do
      p = Product.new(:name => "Skirt", :price => 23.3)
      p.name = 'Flower'
      p.price = 25.0
      p.name.should eq("Flower")
      p.price.should eq(25)
    end
    
    it "load products from yml file" do
      products = Product.load_from_yaml(File.expand_path("../product.yml", __FILE__))
      products.size.should be > 0
    end
  end
end
      
