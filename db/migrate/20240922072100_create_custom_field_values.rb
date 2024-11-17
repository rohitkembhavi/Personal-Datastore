class CreateCustomFieldValues < ActiveRecord::Migration[7.2]
  def up
    create_table :custom_field_values do |t|
      t.string :value
      t.references :custom_field, foreign_key: true
      t.references :profile, foreign_key: true
      t.index [ :custom_field_id, :profile_id ], unique: true

      t.timestamps
    end
  end

  def down
    drop_table :custom_field_values
  end
end
