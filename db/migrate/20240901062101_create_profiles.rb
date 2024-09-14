class CreateProfiles < ActiveRecord::Migration[7.2]
  def up
    create_table :profiles do |t|
      # personal
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email
      t.string :contact_no
      t.datetime :birth_date
      t.integer :gender
      t.string :country
      t.string :city
      t.text :address
      t.integer :blood_group
      t.string :mother_name
      t.string :father_name

      # work
      t.string :profession
      t.text :profession_details
      t.string :current_work_country
      t.string :current_work_city
      t.text :current_work_address

      # relation with user and user's opinion
      t.integer :relation
      t.text :first_meet_details
      t.text :last_meet_details
      t.text :qualities
      t.text :religion
      t.text :assistance_details
      t.text :education_details
      t.text :activity_report
      t.text :personal_traits
      t.integer :connection_score
      t.string :interest_areas_list, array: true, default: []

      t.timestamps
    end
  end

  def down
    drop_table :profiles
  end
end
