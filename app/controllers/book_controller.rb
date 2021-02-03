class BookController < ApplicationController

  def new
     @book=Book.new
  end

  def add
    @book=Book.new(book_params)
    if @book.save
      redirect_to(action:'list')
    else
      flash[:notice]= "Error:Record is not created"
      render(action:'new')
    end
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
    @book=Book.find(params[:id])

    if @book.update_attributes(book_params)
      redirect_to(action: 'list')
    else
      render('edit')
    end
  end

  
  def delete
    @book=Book.find(params[:id])
  end

  def destroy
    book=Book.find(params[:id])
    book.destroy

    redirect_to(action: 'list')
  end


  def list
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end


  def book_params
    params.require(:books).permit(:name, :author, :price)
  end


  def search
  end

  def save
  end



end

