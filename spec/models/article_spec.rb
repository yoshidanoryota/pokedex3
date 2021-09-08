require 'rails_helper'

RSpec.describe Article, type: :model do
  before do
    @article = FactoryBot.build(:article)
  end

  describe '構築記事投稿' do
    context '投稿できる場合' do
      it '情報が全て存在すれば投稿できる' do
        expect(@article).to be_valid
      end
    end

    context '投稿できない場合' do
      it 'タイトルが空だと投稿できない' do
        @article.title = ''
        @article.valid?
        expect(@article.errors.full_messages).to include("Title can't be blank")
      end

      it 'ポケモン名が空だと投稿できない' do
        @article.first_pokemon = ''
        @article.valid?
        expect(@article.errors.full_messages).to include("First pokemon can't be blank")
      end

      it 'ポケモン名が半角だと投稿できない' do
        @article.first_pokemon = 'pokemon'
        @article.valid?
        expect(@article.errors.full_messages).to include('First pokemon is invalid')
      end

      it '特性が空だと投稿できない' do
        @article.first_pokemon_special = ''
        @article.valid?
        expect(@article.errors.full_messages).to include("First pokemon special can't be blank")
      end

      it '特性が半角だと投稿できない' do
        @article.first_pokemon_special = 'pokemon'
        @article.valid?
        expect(@article.errors.full_messages).to include('First pokemon special is invalid')
      end

      it '持ち物が空だと投稿できない' do
        @article.first_pokemon_item = ''
        @article.valid?
        expect(@article.errors.full_messages).to include("First pokemon item can't be blank")
      end

      it '持ち物が半角だと投稿できない' do
        @article.first_pokemon_item = 'pokemon'
        @article.valid?
        expect(@article.errors.full_messages).to include('First pokemon item is invalid')
      end

      it '性格が空だと投稿できない' do
        @article.first_pokemon_temper_id = ''
        @article.valid?
        expect(@article.errors.full_messages).to include("First pokemon temper can't be blank")
      end

      it '性格が半角だと投稿できない' do
        @article.first_pokemon_temper_id = 'pokemon'
        @article.valid?
        expect(@article.errors.full_messages).to include('First pokemon temper is invalid')
      end

      it '能力の数値が空だと投稿できない' do
        @article.first_pokemon_hp = ''
        @article.valid?
        expect(@article.errors.full_messages).to include("First pokemon hp can't be blank")
      end

      it '紹介文が空だと投稿できない' do
        @article.article_text = ''
        @article.valid?
        expect(@article.errors.full_messages).to include("Article text can't be blank")
      end

      it 'ユーザーが紐付いていなければ投稿できない' do
        @article.user = nil
        @article.valid?
        expect(@article.errors.full_messages).to include('User must exist')
      end
    end
  end
end
