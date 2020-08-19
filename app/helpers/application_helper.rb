module ApplicationHelper

  #Returns the full title on a per page basis
  def full_title(page_title = '')
    base_title = "Organizer Application"
    if page_title.blank?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def flash_class(level)
    level = {
        notice: "alert alert-info",
        success: "alert alert-success",
        error: "alert alert-error",
        alert: "alert alert-error"
      }
  end
end
