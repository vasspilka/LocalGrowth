module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "#{CONFIG[:app_name]}, Online Κατάλογος Καταστιμάτων #{CONFIG[:town_name]}ς"
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
