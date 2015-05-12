class Product < ActiveRecord::Base
  belongs_to(:purchase)

  scope(:in_stock, -> do
    where({:in_stock => true})
  end)



end
