class SnippetsController < ApplicationController
  def new
    @snippet = Snippet.new
  end

  def create
    # render text: params
    @snippet  = Snippet.new(snippet_params)

    # @language = Language.find(params[:language_id])
    if @snippet.save
      
      # redirect_to language_path(id: params[:snippet][:language_id]), notice: "saved";
      redirect_to language_path(@snippet.language), notice: "saved";
    else
      render 'new'
    end
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  private
  def snippet_params
    params.require(:snippet).permit(:language_id, :title, :body, :category)
  end
end
