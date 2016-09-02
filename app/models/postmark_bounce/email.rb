module PostmarkBounce
  class Email < ApplicationRecord

    scope :shown, -> { where(hidden: false) }

  end
end
