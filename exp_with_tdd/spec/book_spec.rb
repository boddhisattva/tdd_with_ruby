require 'spec_helper'

describe Book do
  
  before :each do 
    @book = Book.new "How to Code for the better","Jeff Roz","BPB Publication","20 March 2010"
    #puts "\n@book.title; = #{@book.title}\n" - Sample way of debugging..
  end 

  describe "Book responds to" do
    it "responds to different messages wrt the book class" do
      Book.new("How to Code for the better","Jeff Roz","BPB Publication","20 March 2010").should respond_to :title
      # order needn be the same wrt which it has to respond to..
      Book.new("How to Code for the better","Jeff Roz","BPB Publication","20 March 2010").should respond_to :title, :publisher, :author,:release_date
    end
    it "responds to an array of authors - for more than one author for a book" do
      Book.new("How to Code for the better","Jeff Roz","BPB Publication","20 March 2010").author.should be_kind_of String
    end
  end 

  
  describe "#new" do
    it 'takes 4 params and returns a book obj' do 
      @book.should be_instance_of Book
    end
  end

  describe "#title" do #NEVER FORGET THE "it block with the describe block or else your matcheers wont work.."
    #@book = Book.new "How to Code for the better","Jeff Roz","BPB Publication","20 March 2010"
    it "should return the title" do 
      puts "Inspecting book - #{@book.inspect}"
      @book.title.should == "How to Code for the better"
      @book.title.should eql "How to Code for the better"
    end
  end


  describe "#author" do
    it "return the correct author" do 
      #@book = Book.new "How to Code for the better","Jeff Roz","BPB Publication","20 March 2010"
      @book.author.should eql "Jeff Roz"
    end  
  end

  describe "#publication" do
    it "should return the correct publication" do 
      @book.publisher.should eql "BPB Publication"
    end
  end

  describe "#release date" do
    it "should return the correct release date" do
      @book.release_date.should eql "20 March 2010"
    end
  end 

end 