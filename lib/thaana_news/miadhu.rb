module ThaanaNews
	def self.miadhu
		items = []
		# start scraping miadhu
		haveeru = open('http://www.miadhu.com/dv/?feed=rss2')


	  	doc, posts = Hpricot::XML(haveeru), []
	  	(doc/:item).each do |p|
	    	items << { :feed => "miadhu",  :title => (p/:title).inner_html.to_s, :url => (p/:link).inner_html.to_s, :date => DateTime.parse((p/"pubDate").inner_html.to_s)  }
	  	end

	  	items
  	end
end