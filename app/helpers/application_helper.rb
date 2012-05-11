module ApplicationHelper

	def menu_principal
		menu = %w(projeto status tipos_projeto)
		menu_principal = "<ul>"
		menu.each do |item|
		menu_principal << "<li>" + link_to(item, :controller => item.pluralize) + "</li>"
	end
		menu_principal << "</ul>"
		raw menu_principal
	end

end
