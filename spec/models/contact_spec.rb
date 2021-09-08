require 'rails_helper'

RSpec.describe Contact, type: :model do
  before do
    @contact = FactoryBot.build(:contact)
  end
  describe '新規問い合わせ' do
    context '問い合わせできる場合' do
      it '内容が入力されていれば登録できる' do
        @contact.case = 'テスト'
        expect(@contact).to be_valid
      end
    end

    context '問い合わせできない場合' do
      it '名字が空だと登録できない' do
        @contact.case = 'テスト'
        @contact.last_name = ''
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Last name can't be blank")
      end

      it '名前が空だと登録できない' do
        @contact.case = 'テスト'
        @contact.first_name = ''
        @contact.valid?
        expect(@contact.errors.full_messages).to include("First name can't be blank")
      end

      it 'メールアドレスが空だと登録できない' do
        @contact.case = 'テスト'
        @contact.email = ''
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Email can't be blank")
      end

      it 'メールアドレスが空だと登録できない' do
        @contact.case = 'テスト'
        @contact.email = ''
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Email can't be blank")
      end

      it '概要が空だと登録できない' do
        @contact.case = 'テスト'
        @contact.about = ''
        @contact.valid?
        expect(@contact.errors.full_messages).to include("About can't be blank")
      end

      it '内容が空だと登録できない' do
        @contact.case = ' '
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Case can't be blank")
      end
    end
  end
end
