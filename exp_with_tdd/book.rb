class Book
    attr_accessor :title, :author, :publisher, :release_date
	
	  def initialize title, author, publisher, release_date
	    @title = title
	    @author = author
	    @publisher = publisher
	    @release_date = release_date
	  end
end