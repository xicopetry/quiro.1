require 'test_helper'

class AnamnesisControllerTest < ActionController::TestCase
  setup do
    @anamnesi = anamnesis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anamnesis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anamnesi" do
    assert_difference('Anamnesi.count') do
      post :create, anamnesi: { como_aconteceu: @anamnesi.como_aconteceu, data_inicio: @anamnesi.data_inicio, patient_id: @anamnesi.patient_id, queixa_principal: @anamnesi.queixa_principal }
    end

    assert_redirected_to anamnesi_path(assigns(:anamnesi))
  end

  test "should show anamnesi" do
    get :show, id: @anamnesi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anamnesi
    assert_response :success
  end

  test "should update anamnesi" do
    patch :update, id: @anamnesi, anamnesi: { como_aconteceu: @anamnesi.como_aconteceu, data_inicio: @anamnesi.data_inicio, patient_id: @anamnesi.patient_id, queixa_principal: @anamnesi.queixa_principal }
    assert_redirected_to anamnesi_path(assigns(:anamnesi))
  end

  test "should destroy anamnesi" do
    assert_difference('Anamnesi.count', -1) do
      delete :destroy, id: @anamnesi
    end

    assert_redirected_to anamnesis_path
  end
end
