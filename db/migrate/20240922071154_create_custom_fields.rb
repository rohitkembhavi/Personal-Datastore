class CreateCustomFields < ActiveRecord::Migration[7.2]
  def up
    create_table :custom_fields do |t|
      t.string :name
      t.integer :value_type

      t.timestamps
    end
  end

  def down
    drop_table :custom_fields
  end
end
