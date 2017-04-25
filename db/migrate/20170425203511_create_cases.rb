class CreateCases < ActiveRecord::Migration[5.0]
  def change
    create_table :cases do |t|
      t.text :original_id
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :released
      t.string :disposition
      t.string :cooperator
      t.string :race
      t.string :gender
      t.string :release_date
      t.string :institution_name_display
      t.string :institution_state
      t.string :institution_security_level
      t.boolean :case_informant
      t.string :case_charge_date
      t.string :case_conviction_date
      t.string :case_sentence_date
      t.string :case_district
      t.string :case_imprisonment
      t.float :case_restitution
      t.string :case_supervised_release
      t.string :case_state
      t.boolean :case_sting
      t.string :case_charge_1
      t.string :case_charge_2
      t.string :case_charge_3
      t.string :case_charge_4
      t.string :case_charge_5
      t.string :case_charge_6
      t.string :case_charge_7
      t.string :case_charge_8
      t.string :case_charge_9
      t.text :case_additional_sentence_details_1
      t.text :case_additional_sentence_details_2
      t.text :case_additional_sentence_details_3
      t.text :case_terror_org_1
      t.text :case_terror_org_2
      t.text :case_text_org_3

      t.timestamps
    end
  end
end
