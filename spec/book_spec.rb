require 'minitest/autorun'
require_relative '../book'
require 'yaml'

describe '#new' do
  before :each do
    @book = Book.new('title', 'author')
  end

  it 'title' do
    @book.title.eql? 'title'
  end

  it 'Author' do
    @book.author.eql? 'author'
  end
end
