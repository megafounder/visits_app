module VisitHelper

  def flash_message
    if flash[:error]
      flash[:error]
    elsif flash[:alert]
      flash[:alert]
    end
  end
end
