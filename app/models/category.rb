class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '予定' },
    { id: 3, name: 'furniture' },
    { id: 4, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items
end