class BookCommentsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    comment = current_user.book_comments.new(book_comment_params)
    comment.book_id = book.id
    comment.save
    redirect_to request.referer
    # referer = 保存等が完了後に、遷移元へリダイレクトさせるための処理
  end

  def destroy
    BookComment.find(params[:id]).destroy
    # BookComment.destroy
    redirect_to request.referer
  end


  private
   def book_comment_params
     params.require(:book_comment).permit(:comment)
   end
end
