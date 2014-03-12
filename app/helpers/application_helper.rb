module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = CONFIG[:app_name] + I18n.t("title") + CONFIG[:town_name] 
    base_title += "ς" if I18n.locale == :gr

    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
  def shop_category(category)
  	base_category=category  
  end

end
