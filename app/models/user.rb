class User < ApplicationRecord
  has_secure_password
  after_destroy :ensure_an_admin_remains

  class AdminDeletionError < StandardError
  end

  private

  def ensure_an_admin_remains
    if User.count.zero?
      raise AdminDeletionError.new "Can't delete the only user"
    end
  end
end
