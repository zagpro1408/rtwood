class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :company
      t.string :name
      t.string :email
      t.string :number
      t.text :text

      t.timestamps
    end
  end
end
