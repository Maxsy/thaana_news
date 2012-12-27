module ThaanaNews
	def self.minivan
		items = []

		# start scraping minivan
		haveeru = open('http://minivannews.com/dhivehi/?feed=rss2')

		doc, posts = Hpricot::XML(haveeru), []
		(doc/:item).each do |p|
			items << { :feed => "minivan news",  :title => (p/:title).inner_html.to_s, :url => (p/:link).inner_html.to_s, :date => DateTime.parse((p/"pubDate").inner_html.to_s)  }
		end

		items
	end
end