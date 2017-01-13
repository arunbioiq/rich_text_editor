class Drawing < ApplicationRecord
	before_create :create_safe_html
	 

	private

	def create_safe_html
	  self.santized_html = Sanitize.fragment(html, Sanitize::Config::RELAXED)
	  self.santized_html = ERB::Util.html_escape(santized_html)
	end 
end
