require 'rails_helper'

RSpec.describe FavoriteThing, type: :model do
  before do
    @favorite_thing = FactoryBot.build(:favorite_thing)
  end

  describe '好きなことの投稿' do
    context '好きなことの投稿ができる場合' do
      it '全ての項目が存在すれば投稿できる' do
        expect(@favorite_thing).to be_valid
      end

      it 'episodeが空でも投稿できる' do
        @favorite_thing.episode = nil
        expect(@favorite_thing).to be_valid
      end
    end

    context '好きなことの投稿ができない場合' do
      it 'titleが空では投稿できない' do
        @favorite_thing.title = nil
        @favorite_thing.valid?
        expect(@favorite_thing.errors.full_messages).to include('好きなことのタイトルを入力してください')
      end

      it 'reason1が空では投稿できない' do
        @favorite_thing.reason1 = nil
        @favorite_thing.valid?
        expect(@favorite_thing.errors.full_messages).to include('好きな理由1を入力してください')
      end

      it 'reason2が空では投稿できない' do
        @favorite_thing.reason2 = nil
        @favorite_thing.valid?
        expect(@favorite_thing.errors.full_messages).to include('好きな理由2を入力してください')
      end

      it 'reason3が空では投稿できない' do
        @favorite_thing.reason3 = nil
        @favorite_thing.valid?
        expect(@favorite_thing.errors.full_messages).to include('好きな理由3を入力してください')
      end

      it 'imageがないと出品できない' do
        @favorite_thing.image = nil
        @favorite_thing.valid?
        expect(@favorite_thing.errors.full_messages).to include('イメージ画像を入力してください')
      end

      it 'ユーザーが紐付いていないと商品の出品できない' do
        @favorite_thing.user = nil
        @favorite_thing.valid?
        expect(@favorite_thing.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end

# bundle exec rspec spec/models/favorite_thing_spec.rb
