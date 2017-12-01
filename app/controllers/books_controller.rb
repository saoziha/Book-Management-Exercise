class BooksController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
  def create
  	@book = current_user.books.build(book_params)
    if @book.save
      flash[:success] = "Book uploaded!"
      redirect_to root_url
    else
      render 'general_pages/home'
    end
  end

  def destroy
  end

  private

    def book_params
      params.require(:book).permit(:title, :description, :author, :year, :review)

    end
end
