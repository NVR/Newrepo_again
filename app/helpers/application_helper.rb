module ApplicationHelper
def title
	base_title="Task2"
	if @title.nil?
		base_title
	else
		"#{base_title}|#{@title}"
	end
	
end
def logo
image_tag("logo.png", :alt=>"logo", :class=>"round")
end

end
