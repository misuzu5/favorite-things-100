require 'rails_helper'

RSpec.describe FavoriteThing, type: :model do
  before do
    @favorite_thing = FactoryBot.build(:favorite_thing)
  end

  describe '好きなものの投稿' do
    context '好きなものの投稿ができる場合' do
      it '全ての項目が存在すれば投稿できる' do
        expect(@favorite_thing).to be_valid
      end

      it 'emotionが空でも投稿できる' do
        @favorite_thing.emotion = nil
        expect(@favorite_thing).to be_valid
      end

      it 'appeal_pointが空でも投稿できる' do
        @favorite_thing.appeal_point = nil
        expect(@favorite_thing).to be_valid
      end
    end

    context '好きなものの投稿ができない場合' do
      it 'titleが空では投稿できない' do
        @favorite_thing.title = nil
        @favorite_thing.valid?
        expect(@favorite_thing.errors.full_messages).to include("好きなもののタイトルを入力してください")
      end

      it 'reasonが空では投稿できない' do
        @favorite_thing.reason = nil
        @favorite_thing.valid?
        expect(@favorite_thing.errors.full_messages).to include("好きな理由を入力してください")
      end

      it 'episodeが空では投稿できない' do
        @favorite_thing.episode = nil
        @favorite_thing.valid?
        expect(@favorite_thing.errors.full_messages).to include("エピソードを入力してください")
      end

      it 'imageがないと出品できない' do
        @favorite_thing.image = nil
        @favorite_thing.valid?
        expect(@favorite_thing.errors.full_messages).to include("イメージ画像を入力してください")
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