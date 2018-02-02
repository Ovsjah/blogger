module ArticlesHelper

  def article_params
    params.require(:article).permit(:title, :body, :tag_list, :image, :delete_image)
  end
end
