class OneMoreTime < ActiveRecord::Migration
  def change

    create_table(:products) do |t|
    t.column(:description, :string)
    t.column(:in_stock, :boolean)
    t.column(:cost, :integer)
  end

    create_table(:purchases) do |t|
    t.column(:items_sold, :text)

    t.timestamps()
  end

  end
end
