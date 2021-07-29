class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  before_action :load_categories, only: %i[edit update new create]
  # TODO: => Indexing not working
  include ActionView::Helpers::TextHelper

  def index
    @articles = Article.all
    @top_article = Article.where(id: most_voted_id)
    @categories = Category.order_by_priority
  end

  def show; end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)

    respond_to do |format|
      if @article.save && @article.valid?
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html do
          redirect_to new_article_url, flash: { alert: "Article could not be saved because:
          #{@article.errors.full_messages[0]}" }
        end
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit!
  end

  def authenticate_user!
    return if current_user

    flash[:alert] = 'You should login first, or register a new user.'
    redirect_to new_user_session_path
  end

  def most_voted_id
    Vote.most_voted.keys.first
  end

  def load_categories
    @categories = Category.pluck('name', 'id')
  end
end
