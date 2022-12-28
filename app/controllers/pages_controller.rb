class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:logout]

  def home
    if session[:query_id]
      @generated_name = Query.find(session[:query_id]).generated_name
    end 
    
  end

  def logout
    sign_out(current_user)
    redirect_to root_path
  end

  def page
    @page_key = request.path[1..-1]
    render "pages/#{@page_key}"
  end
end
