require 'test_helper'

class DonorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donor = donors(:one)
  end

  test "should get index" do
    get donors_url
    assert_response :success
  end

  test "should get new" do
    get new_donor_url
    assert_response :success
  end

  test "should create donor" do
    assert_difference('Donor.count') do
      post donors_url, params: { donor: { activity: @donor.activity, address: @donor.address, city: @donor.city, cnpj_namber: @donor.cnpj_namber, complement: @donor.complement, cpf: @donor.cpf, cpf_responsible: @donor.cpf_responsible, district: @donor.district, email: @donor.email, fantasy_name: @donor.fantasy_name, legal_responsible: @donor.legal_responsible, obs: @donor.obs, phone: @donor.phone, registration_date: @donor.registration_date, rg_responsible: @donor.rg_responsible, situation: @donor.situation, social_name: @donor.social_name, type_doner: @donor.type_doner, withdrawal_day: @donor.withdrawal_day } }
    end

    assert_redirected_to donor_url(Donor.last)
  end

  test "should show donor" do
    get donor_url(@donor)
    assert_response :success
  end

  test "should get edit" do
    get edit_donor_url(@donor)
    assert_response :success
  end

  test "should update donor" do
    patch donor_url(@donor), params: { donor: { activity: @donor.activity, address: @donor.address, city: @donor.city, cnpj_namber: @donor.cnpj_namber, complement: @donor.complement, cpf: @donor.cpf, cpf_responsible: @donor.cpf_responsible, district: @donor.district, email: @donor.email, fantasy_name: @donor.fantasy_name, legal_responsible: @donor.legal_responsible, obs: @donor.obs, phone: @donor.phone, registration_date: @donor.registration_date, rg_responsible: @donor.rg_responsible, situation: @donor.situation, social_name: @donor.social_name, type_doner: @donor.type_doner, withdrawal_day: @donor.withdrawal_day } }
    assert_redirected_to donor_url(@donor)
  end

  test "should destroy donor" do
    assert_difference('Donor.count', -1) do
      delete donor_url(@donor)
    end

    assert_redirected_to donors_url
  end
end
