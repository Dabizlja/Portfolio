module Session
  extend ActiveSupport::Concern
  
  included do
    before_action :set_session
  end

  def set_session
    session[:source] = params[:q] if params[:q]
  end
end
