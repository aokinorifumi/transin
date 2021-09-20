class Beside < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'A' },
    { id: 3, name: 'B' },
    { id: 4, name: 'C' },
    { id: 5, name: 'D' },
    { id: 6, name: 'E' },
    { id: 7, name: 'F' },
    { id: 8, name: 'G' },
    { id: 9, name: 'H' }
  ]

  include ActiveHash::Associations
  has_many :rooms
end