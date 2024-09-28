class CreateCustomFieldValues < ActiveRecord::Migration[7.2]
  def up
    create_table :custom_field_values do |t|
      t.string :value
      t.references :custom_fields, foreign_key: true
      t.references :profiles, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :custom_field_values
  end
end
