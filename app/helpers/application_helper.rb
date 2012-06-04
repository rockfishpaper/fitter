module ApplicationHelper

    # Return sthe full title on a per-page basis
    def full_title(page_title)
      
      base_title = "Fitter App"
      
      if page_title.empty?
        base_title
      else
        "#{base_title} | #{page_title}"
      end
    end  
end
