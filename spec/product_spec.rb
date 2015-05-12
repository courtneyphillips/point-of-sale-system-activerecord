require('spec_helper')

describe(Product) do

  describe(".in_stock") do
    it("returns the in stock items") do
      in_stock_item1 = Product.create({:description => "Ear phones", :in_stock => true})
      in_stock_item2 = Product.create({:description => "Walkman", :in_stock => true})
      in_stock_items = [in_stock_item1, in_stock_item2]
      out_of_stock_item = Product.create({:description => "Cassette", :in_stock => false})
      expect(Product.in_stock()).to(eq(in_stock_items))
    end
  end

end
