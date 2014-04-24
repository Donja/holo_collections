class EditContactsController < ApplicationController
  before_action :set_edit_contact, only: [:show, :edit, :update, :destroy]
  before_action :admin_login
  
  # GET /edit_contacts
  # GET /edit_contacts.json
  def index
    @edit_contacts = EditContact.all
  end

  # GET /edit_contacts/1
  # GET /edit_contacts/1.json
  def show
  end

  # GET /edit_contacts/new
  def new
    @edit_contact = EditContact.new
  end

  # GET /edit_contacts/1/edit
  def edit
  end

  # POST /edit_contacts
  # POST /edit_contacts.json
  def create
    @edit_contact = EditContact.new(edit_contact_params)

    respond_to do |format|
      if @edit_contact.save
        format.html { redirect_to @edit_contact, notice: 'Edit contact was successfully created.' }
        format.json { render action: 'show', status: :created, location: @edit_contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @edit_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /edit_contacts/1
  # PATCH/PUT /edit_contacts/1.json
  def update
    respond_to do |format|
      if @edit_contact.update(edit_contact_params)
        format.html { redirect_to @edit_contact, notice: 'Edit contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @edit_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edit_contacts/1
  # DELETE /edit_contacts/1.json
  def destroy
    @edit_contact.destroy
    respond_to do |format|
      format.html { redirect_to edit_contacts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edit_contact
      @edit_contact = EditContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def edit_contact_params
      params.require(:edit_contact).permit(:name, :contact_num, :email)
    end
end
