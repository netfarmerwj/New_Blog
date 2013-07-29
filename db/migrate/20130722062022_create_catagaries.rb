class CreateCatagaries < ActiveRecord::Migration
  def change
    create_table :catagaries do |t|
      t.string :name

      t.timestamps
    end
  end
end
