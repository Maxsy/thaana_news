module ThaanaNews
	def self.aafathis
		items = []
		# start scraping aafathis
		haveeru = open('http://www.aafathis.net/feed')

	    doc, posts = Hpricot::XML(haveeru), []
	    (doc/:item).each do |p|
	    	items << { :feed => "aafathis",  :title => (p/:title).inner_html.to_s, :url => (p/:link).inner_html.to_s, :date => DateTime.parse((p/"pubDate").inner_html.to_s)  }
	    end
	    items
	end
end