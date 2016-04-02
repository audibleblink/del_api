class ReportsController < ApplicationController

  def index
    reports = Rails.cache.fetch("reports", expires_in: 2.hours) { APApi.new.reports }

    respond_to do |format|
      format.json { render json: reports.to_json }
      format.xml  { render  xml: reports.to_xml  }
    end
  end

end
