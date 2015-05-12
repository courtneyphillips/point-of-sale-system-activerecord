class AddTables < ActiveRecord::Migration
  def change

    create_table(:products) do |t|
      t.column(:description, :string)
      t.column(:price, :float)
    end

    create_table(:purchases) do |t|
      t.column(:product_id, :integer)
      t.column(:cost, :float)

      t.timestamps
    end

  end
end
