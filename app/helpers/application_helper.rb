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

  def meta_keywords
    "#{CONFIG[:app_name]},#{CONFIG[:town_name]},#{CONFIG[:app_name]} #{CONFIG[:town_name]}, #{I18n.t :food}, #{I18n.t :entertainment},
     #{I18n.t :food} #{CONFIG[:town_name]}, #{I18n.t :entertainment} #{CONFIG[:town_name]}" 
  end

end
