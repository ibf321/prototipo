json.extract! donor, :id, :situation, :social_name, :fantasy_name, :type_doner, :cnpj_namber, :cpf, :legal_responsible, :rg_responsible, :cpf_responsible, :registration_date, :address, :district, :city, :complement, :email, :activity, :phone, :withdrawal_day, :obs, :created_at, :updated_at
json.url donor_url(donor, format: :json)
