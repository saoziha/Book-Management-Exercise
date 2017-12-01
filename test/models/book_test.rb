require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def setup
    @user = users(:mic)
    # This code is not idiomatically correct.
    @book = @user.books.build(title:"Dore", description: "Lorem ipsum", author:"GG", year:"2012", review:"good")
  end

  test "should be valid" do
    assert @book.valid?
  end

  test "user id should be present" do
    @book.user_id = nil
    assert_not @book.valid?
  end

  test "title should be present" do
    @book.title = "   "
    assert_not @book.valid?
  end

  test "title should be at most 140 characters" do
    @book.title = "a" * 101
    assert_not @book.valid?
  end

  test "description should be present" do
    @book.description = "   "
    assert_not @book.valid?
  end

  test "description should be at most 140 characters" do
    @book.description = "a" * 501
    assert_not @book.valid?
  end

  test "author should be present" do
    @book.author = "   "
    assert_not @book.valid?
  end

  test "author should be at most 140 characters" do
    @book.author = "a" * 141
    assert_not @book.valid?
  end

  test "year should be present" do
    @book.year = "   "
    assert_not @book.valid?
  end

  test "year should be at most 140 characters" do
    @book.year = "a" * 5
    assert_not @book.valid?
  end

  test "review should be present" do
    @book.review = "   "
    assert_not @book.valid?
  end

  test "review should be at most 140 characters" do
    @book.review = "a" * 501
    assert_not @book.valid?
  end

  test "order should be most recent first" do
    assert_equal books(:most_recent), Book.first
  end

end
