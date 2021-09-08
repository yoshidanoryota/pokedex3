require 'rails_helper'

RSpec.describe Infomation, type: :model do
  before do
    @info = FactoryBot.build(:infomation)
  end

  context 'お知らせを追加できる場合' do
    it 'テキストが入力されていれば登録できる' do
      expect(@info).to be_valid
    end
  end

  context '追加できない場合' do
    it 'テキストが空だと投稿できない' do
      @info.text = ''
      @info.valid?
      expect(@info.errors.full_messages).to include("Text can't be blank")
    end

    it 'ユーザーが紐付いていなければ投稿できない' do
      @info.user = nil
      @info.valid?
      expect(@info.errors.full_messages).to include('User must exist')
    end
  end
end
