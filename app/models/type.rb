class Type < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'T（Thinking）:問題を解く、計算をするなど' },
    { id: 3, name: 'C（Communication）:人と会う、人と話すなど' },
    { id: 4, name: 'L（Leadership）:自分で物事を決める、人の世話をするなど' }
  ]

  include ActiveHash::Associations
  has_many :favorite_things

  end