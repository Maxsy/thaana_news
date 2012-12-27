module ThaanaNews
	def self.haveeru
		items = []

		# start scraping sun
		haveeru = open('http://sun.mv/feed')

  		doc, posts = Hpricot::XML(haveeru), []
  		(doc/:item).each do |p|
    		items << { :feed => "sun",  :title => (p/:title).inner_html.to_s, :url => (p/:link).inner_html.to_s, :date => DateTime.parse((p/"pubDate").inner_html.to_s)  }
 		end

 		items
	end
end