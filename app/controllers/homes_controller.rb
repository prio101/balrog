class HomesController < ApplicationController
  def index
    @personal_data = PersonalDatum.all
  end

  def new
    @personal_datum = PersonalDatum.new
  end

  def create
    @personal_datum = PersonalDatum.new
    @personal_datum.first_name = homes_params[:first_name]
    @personal_datum.last_name = params[:last_name]
    @personal_datum.nickname = params[:nickname]
    @personal_datum.email_address = params[:email_address]
    @personal_datum.phone_number = params[:phone_number]

    if @personal_datum.save
      respond_to do |format|
        format.html { redirect_to homes_path, notice: "Personal Data was successfully created." }
        format.turbo_stream { flash.now[:notice] = "Personal Data was successfully created." }
      end
    else
      redirect_to homes_path, notice: "Could not be saved"
    end
  end

  private

  def homes_params
    params.permit(:first_name, :last_name, :nickname, :email_address, :phone_number)
  end
end
