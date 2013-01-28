class Subscriber
  include Mongoid::Document
  include Mongoid::Timestamps

  field :email, type: String
  validates :email, presence: true
end
