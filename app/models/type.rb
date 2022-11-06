class Type < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'T（Thinking）:問題を解く、計算をするなど' },
    { id: 2, name: 'C（Communication）:人と会う、人と話すなど' },
    { id: 3, name: 'L（Leadership）:自分で物事を決める、人の世話をするなど' }
  ]

  include ActiveHash::Associations
  has_many :favorite_things

  end