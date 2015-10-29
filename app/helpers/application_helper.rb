module ApplicationHelper
	def nav_link(link_text, link_path, http_method=nil)
	    class_name = current_page?(link_path) ? 'active' : ''

	    content_tag(:li, class: class_name) do
	      if http_method
	        link_to(link_text, link_path, method: http_method)
	      else
	        link_to(link_text, link_path)
	      end
	    end
	end
	
	def path_active?(path)
	  case
	  when path == root_path && action_name == 'index' && controller_name == 'homes'
	    return "active"
	  when path == technology_path && action_name == 'technology' && controller_name == 'homes'
	    return "active"
	  when path == about_us_path && action_name == 'about_us' && controller_name == 'homes'
	    return "active"
	  else
	    return ""
	  
	  end
	  
	end
end
