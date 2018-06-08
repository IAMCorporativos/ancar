class ErrorsController < ApplicationController
  before_action :get_information


  def error_404
    render :status => 404, :formats => [:html]
  end

  def error_422
    render :status => 422, :formats => [:html], :layout => "white", :sub_layout => "left"
  end

  def error_500
    render :status => 500, :formats => [:html], :layout => "white", :sub_layout => "left"
  end

  private

  def get_information
    @request_uri = self.request.env['REQUEST_URI']
    @request_path = self.request.env['REQUEST_PATH']
  end

end
