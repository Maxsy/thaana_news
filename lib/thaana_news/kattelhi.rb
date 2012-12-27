module ThaanaNews
	def self.kattelhi
		items = []
		# start scraping kattelhi
		haveeru = open('http://www.kattelhi.com/rss.php?category=news')

	  	doc, posts = Hpricot::XML(haveeru), []
	  		(doc/:item).each do |p|
	    	items << { :feed => "kattelhi",  :title => (p/:title).inner_html.to_s, :url => (p/:link).inner_html.to_s, :date => DateTime.parse((p/"dc:date").inner_html.to_s)  }
	 	end

	 	items
	end
end