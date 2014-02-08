class HomeController < ApplicationController

	def index
    @photographies = Photography.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photographies }
    end
  end
end
