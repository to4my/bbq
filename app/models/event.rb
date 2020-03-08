class Event < ApplicationRecord
  belongs_to :user

  has_many :comments
  has_many :subscriptions
  has_many :subscribers, through: :subscriptions, source: :user
  has_many :photos

  #scope :desc, order(name: :desc)
  #scope :asc, order(name: :asc)

  scope :sorted, -> { order(datetime: :asc) }
  #scope :sorted_desc, -> { order(datetime: :desc) }
  scope :future, -> { where("datetime >=  ? ", Date.current) }
  scope :past, -> { where("datetime < ?", Date.current) }

  validates :user, presence: true

  validates :title, presence: true, length: {maximum: 255}

  validates :address, presence: true
  validates :datetime, presence: true

  def visitors
    (subscribers + [user]).uniq
  end

  def pincode_valid?(pin2chek)
    pincode == pin2chek
  end
end
