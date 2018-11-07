class HomeController < ApplicationController
  def index
    @comments = Comment.last(5)


    #raise user.inspect
    #raise current_user.inspect
  end

  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to root_path
    else
      @comment = "Impossible de saisir un champ vide"
      redirect_to root_path
    end


  end

  private

  def comment_params
    params.require(:comment).permit(
        :content,
    ).merge(user_id: current_user.id)
  end

end