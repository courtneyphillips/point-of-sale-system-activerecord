class Purchase < ActiveRecord::Base
  serialize :items_sold
  has_many(:product)

  scope(:not_done, -> do
   where({:done => false})
 end)

 scope :created_between, lambda { |start_date, end_date| where(:created_at => (start_date...end_date)) }
 end


 #   scope :created_between, -> {|start_date, end_date| where("created_at >= ? AND created_at <= ?", start_date, end_date )}
 # end

  #  scope(:created_between, -> do |start_date, end_date|
  #    where({:created_at >= start_date AND :created_at <= end_date})
  #  end)
