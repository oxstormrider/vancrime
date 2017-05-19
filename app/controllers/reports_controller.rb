class ReportsController < ApplicationController
  def index
    @crimes = Crime.all.order(:year, :month, :day, :hour, :minute).paginate(page: params[:page], per_page: 100)
  end

  def year
    @crimes = Crime.select("count(id) as id, offence_id as offence_id, year as year").group(:year, :offence_id).order(:year, :offence_id).paginate(page: params[:page], per_page: 11)
  end

  def month
    @crimes = Crime.select("count(id) as id, offence_id as offence_id, month as month").group(:month, :offence_id).order(:month, :offence_id).paginate(page: params[:page], per_page: 11)
  end

  def year_month
    @crimes = Crime.select("count(id) as id, offence_id as offence_id, month as month, year as year").group(:year, :month, :offence_id).order(:year, :month, :offence_id).paginate(page: params[:page], per_page: 132)
  end
end
