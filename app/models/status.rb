class Status < ActiveHash::Base
  self.data = [
    { id: 1, number: '---' },
    { id: 2, number: '先生' },
    { id: 3, number: '生徒' }
  ]
  include ActiveHash::Associations
  
end