class CreateDonors < ActiveRecord::Migration[5.1]
  def change
    create_table :donors do |t|
      t.boolean :situation
      t.string :social_name
      t.string :fantasy_name
      t.string :type_doner
      t.string :cnpj_namber
      t.string :cpf
      t.string :legal_responsible
      t.string :rg_responsible
      t.string :cpf_responsible
      t.date :registration_date
      t.string :address
      t.string :district
      t.string :city
      t.string :complement
      t.string :email
      t.string :activity
      t.string :phone
      t.string :withdrawal_day
      t.text :obs

      t.timestamps
    end
  end
end
