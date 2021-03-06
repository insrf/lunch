class Menu < ApplicationRecord
  include ActiveModel::Validations
  include WorkWithDate

  has_and_belongs_to_many :items

  validate :only_one_menu_in_day

  def start_time
    self.created_at
  end

  private

  def only_one_menu_in_day
    errors.add(:created_at, "isn't available on this date") if Menu.today.exists?
  end
end
