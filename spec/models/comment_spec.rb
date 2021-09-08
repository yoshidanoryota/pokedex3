require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe '新規コメント' do
    context 'コメントできる場合' do
      it 'コメントが入力されていれば登録できる' do
        expect(@comment).to be_valid
      end
    end

    context 'コメントできない場合' do
      it 'タイトルが空だと投稿できない' do
        @comment.comment_text = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Comment text can't be blank")
      end

      it 'ユーザーが紐付いていなければ投稿できない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('User must exist')
      end
    end
  end
end

# bundle exec rspec spec/models/comment_spec.rb
