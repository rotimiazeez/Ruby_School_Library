require 'minitest/autorun'
require_relative '../book'

describe Book do
  before :each do
    @book = Book.new('The Game of thrones', 'Martin G.G')
  end

  it 'book is the instance of Book class' do
    expect(@book).to be_instance_of Book
  end

  it 'has a title' do
    title = @book.title
    expect(title).to eql 'The Game of thrones'
  end

  it 'has an author' do
    author = @book.author
    expect(author).to eql 'Martin G.G'
  end

  it 'to string format' do
    book_phrase = @book.to_s
    expect(book_phrase).to eql 'Title: "The Game of thrones", Author: Martin G.G'
  end
end

describe 'run tests so fast' do
  it 'is a fast test', fast: true do
    puts 'This test is fast!'
  end
end
