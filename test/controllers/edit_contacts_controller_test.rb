require 'test_helper'

class EditContactsControllerTest < ActionController::TestCase
  setup do
    @edit_contact = edit_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:edit_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create edit_contact" do
    assert_difference('EditContact.count') do
      post :create, edit_contact: { contact_num: @edit_contact.contact_num, email: @edit_contact.email, name: @edit_contact.name }
    end

    assert_redirected_to edit_contact_path(assigns(:edit_contact))
  end

  test "should show edit_contact" do
    get :show, id: @edit_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @edit_contact
    assert_response :success
  end

  test "should update edit_contact" do
    patch :update, id: @edit_contact, edit_contact: { contact_num: @edit_contact.contact_num, email: @edit_contact.email, name: @edit_contact.name }
    assert_redirected_to edit_contact_path(assigns(:edit_contact))
  end

  test "should destroy edit_contact" do
    assert_difference('EditContact.count', -1) do
      delete :destroy, id: @edit_contact
    end

    assert_redirected_to edit_contacts_path
  end
end
