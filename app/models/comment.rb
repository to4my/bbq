class Comment < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true

  validates :body, presence: true
  validates :user_name, presence: true, unless: -> { user.present? }

  validate :name_used?, on: :create, unless: -> { user.present? }

  scope :sorted_comment, -> { order(created_at: :desc) }

  def user_name
    user.present? ? user.name : super
  end

  private

  def name_used?
    errors.add(:user_name, I18n.t('subscriptions.name_used')) if User.where(name: user_name).present?
  end

end
