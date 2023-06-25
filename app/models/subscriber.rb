class Subscriber < ApplicationRecord
  enum status: { active: 0, inactive: 1 }
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: { case_sensitive: false },
            format: { with: URI::MailTo::EMAIL_REGEXP, message: 'is not a valid email address' }
  validate :email_does_not_contain_whitespace

  private

  def email_does_not_contain_whitespace
    return unless email.present?

    if email.match?(/\s/)
      errors.add(:email, 'cannot contain whitespace')
    end
  end
end
