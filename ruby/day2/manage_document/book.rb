require './document.rb'

class Book < Document
	attr_accessor :author, :pages

	def initialize(id, publisher, copies, unit, author, pages)
		super(id, publisher, copies, unit)
		@author = author
		@pages = pages
	end

	def information
		super + " - #{@author} - #{@pages}"
	end
end
