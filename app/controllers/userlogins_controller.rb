class UserloginsController < ApplicationController
  before_action :set_userlogin, only: [:show, :edit, :update, :destroy]

  # GET /userlogins
  # GET /userlogins.json
  def index
    @userlogins = Userlogin.all
  end

  # GET /userlogins/1
  # GET /userlogins/1.json
  def show
  end

  # GET /userlogins/new
  def new
    @userlogin = Userlogin.new
  end

  # GET /userlogins/1/edit
  def edit
  end

  # POST /userlogins
  # POST /userlogins.json
  def create
    @userlogin = Userlogin.new(userlogin_params)

    respond_to do |format|
      if @userlogin.save
        format.html { redirect_to @userlogin, notice: 'Userlogin was successfully created.' }
        format.json { render :show, status: :created, location: @userlogin }
      else
        format.html { render :new }
        format.json { render json: @userlogin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userlogins/1
  # PATCH/PUT /userlogins/1.json
  def update
    respond_to do |format|
      if @userlogin.update(userlogin_params)
        format.html { redirect_to @userlogin, notice: 'Userlogin was successfully updated.' }
        format.json { render :show, status: :ok, location: @userlogin }
      else
        format.html { render :edit }
        format.json { render json: @userlogin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userlogins/1
  # DELETE /userlogins/1.json
  def destroy
    @userlogin.destroy
    respond_to do |format|
      format.html { redirect_to userlogins_url, notice: 'Userlogin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userlogin
      @userlogin = Userlogin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def userlogin_params
      params.require(:userlogin).permit(:name, :mobile, :email, :password, :password_confirmation, :address)
    end
end
