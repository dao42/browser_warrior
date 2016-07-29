class VisitorsController < ApplicationController
  def index
    if params[:zh].present?
      I18n.locale = 'zh-CN'
    end
  end
end
