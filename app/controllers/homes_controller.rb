class HomesController < ApplicationController
  def index
    @personal_data = PersonalDatum.all
  end

  def new
    @personal_datum = PersonalDatum.new
  end

  def create
    byebug
    @personal_datum = PersonalDatum.new
    @personal_datum.first_name = homes_params[:first_name]
    @personal_datum.last_name = params[:last_name]
    @personal_datum.nickname = params[:nickname]
    @personal_datum.email_address = params[:email_address]
    @personal_datum.phone_number = params[:phone_number]

    if @personal_datum.save!
      byebug

    end
  end

  private

  def homes_params
    params.permit(:first_name, :last_name, :nickname, :email_address, :phone_number)
  end
end
