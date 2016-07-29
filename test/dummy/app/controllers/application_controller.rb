class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  prepend_before_action :set_locale

  def set_locale
    if params[:zh].present?
      I18n.locale = :'zh-CN'
    else
      I18n.locale = :'en'
    end
  end
end
