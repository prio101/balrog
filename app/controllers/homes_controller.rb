class HomesController < ApplicationController
  def index
    @personal_data = PersonalDatum.all
  end
end
