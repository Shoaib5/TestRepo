class BooksController < ApplicationController
  def list
		@books = Book.all
  end

  def new
    @book = Book.new
  end
  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      redirect_to palin:'Not inserted'
      flash[:alert]= "Not Saved"
    end
  end
  def Show
    @book = Book.find(:id)
  end
  private
    def book_params
      params.require(:book).permit(:title, :price , :description)
    end


end
