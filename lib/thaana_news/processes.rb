module ThaanaNews
	def self.get(source)
	    case source
	      	when :haveeru
	        	self.haveeru
	      	when :aafathis
	        	self.aafathis
	      	when :kattelhi
	        	self.kattelhi
	      	when :miadhu
	        	self.miadhu
	      	when :minivan
	        	self.minivan
	      	when :sun
	        	self.sun
	    	else
	        	"Invalid news source provided!"
	    end
  	end
end