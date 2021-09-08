class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :article_find, only: [:update, :show, :edit]

  def index
    @articles = Article.all.order(created_at: 'DESC').limit(20)
    @rank = Article.order(impressions_count: 'DESC').limit(5)

    @pokerank1 = @rank.sample
    @pokerank2 = @rank.sample
    @pokerank3 = @rank.sample
    @pokerank4 = @rank.sample
    @pokerank5 = @rank.sample
    @pokerank6 = @rank.sample
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to success_articles_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to article_path(@article.id)
    else
      render :edit
    end
  end

  def success
  end

  def search
    @articles = Article.search(params[:keyword]).order(created_at: 'DESC').page(params[:page]).per(10)
  end

  def show
    @comment = Comment.new
    @comments = @article.comments.all
    impressionist(@article, nil, unique: [:ip_address])
  end

  def all
    @articles = Article.all.order(created_at: 'DESC').page(params[:page]).per(10)
  end

  private

  def article_find
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title,
                                    :first_pokemon, :first_pokemon_special, :first_pokemon_item, :first_pokemon_temper_id, :first_pokemon_hp,
                                    :first_pokemon_attack, :first_pokemon_defence, :first_pokemon_spattack, :first_pokemon_spdefence, :first_pokemon_speed,
                                    :first_pokemon_first_weapon, :first_pokemon_second_weapon, :first_pokemon_third_weapon, :first_pokemon_force_weapon,
                                    :second_pokemon, :second_pokemon_special, :second_pokemon_item, :second_pokemon_temper_id, :second_pokemon_hp,
                                    :second_pokemon_attack, :second_pokemon_defence, :second_pokemon_spattack, :second_pokemon_spdefence, :second_pokemon_speed,
                                    :second_pokemon_first_weapon, :second_pokemon_second_weapon, :second_pokemon_third_weapon, :second_pokemon_force_weapon,
                                    :third_pokemon, :third_pokemon_special, :third_pokemon_item, :third_pokemon_temper_id, :third_pokemon_hp,
                                    :third_pokemon_attack, :third_pokemon_defence, :third_pokemon_spattack, :third_pokemon_spdefence, :third_pokemon_speed,
                                    :third_pokemon_first_weapon, :third_pokemon_second_weapon, :third_pokemon_third_weapon, :third_pokemon_force_weapon,
                                    :force_pokemon, :force_pokemon_special, :force_pokemon_item, :force_pokemon_temper_id, :force_pokemon_hp,
                                    :force_pokemon_attack, :force_pokemon_defence, :force_pokemon_spattack, :force_pokemon_spdefence, :force_pokemon_speed,
                                    :force_pokemon_first_weapon, :force_pokemon_second_weapon, :force_pokemon_third_weapon, :force_pokemon_force_weapon,
                                    :fifth_pokemon, :fifth_pokemon_special, :fifth_pokemon_item, :fifth_pokemon_temper_id, :fifth_pokemon_hp,
                                    :fifth_pokemon_attack, :fifth_pokemon_defence, :fifth_pokemon_spattack, :fifth_pokemon_spdefence, :fifth_pokemon_speed,
                                    :fifth_pokemon_first_weapon, :fifth_pokemon_second_weapon, :fifth_pokemon_third_weapon, :fifth_pokemon_force_weapon,
                                    :sixth_pokemon, :sixth_pokemon_special, :sixth_pokemon_item, :sixth_pokemon_temper_id, :sixth_pokemon_hp,
                                    :sixth_pokemon_attack, :sixth_pokemon_defence, :sixth_pokemon_spattack, :sixth_pokemon_spdefence, :sixth_pokemon_speed,
                                    :sixth_pokemon_first_weapon, :sixth_pokemon_second_weapon, :sixth_pokemon_third_weapon, :sixth_pokemon_force_weapon,
                                    :article_text).merge(user_id: current_user.id)
  end
end
