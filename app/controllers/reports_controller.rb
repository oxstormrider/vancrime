class ReportsController < ApplicationController
  def index
    @crimes = Crime.all.order(:year, :month, :day, :hour, :minute).paginate(page: params[:page], per_page: 100)
  end

  def year
    #@crimes = Crime.select("count(id) as id, offense_id as offense_id, year as year").group(:year, :offense_id).order(:year, :offense_id).paginate(page: params[:page], per_page: 8)
  end

  def month
    #@crimes = Crime.select("count(id) as id, offense_id as offense_id, month as month").group(:month, :offense_id).order(:month, :offense_id).paginate(page: params[:page], per_page: 8)
  end

  def year_month
    #@crimes = Crime.select("count(id) as id, offense_id as offense_id, month as month, year as year").group(:year, :month, :offense_id).order(:year, :month, :offense_id).paginate(page: params[:page], per_page: 96)
  end
end
