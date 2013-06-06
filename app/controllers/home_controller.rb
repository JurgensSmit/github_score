class HomeController < ApplicationController
  def index
  end

	def preview
		render :partial => 'preview', :content_type => 'text/html'
	end
end