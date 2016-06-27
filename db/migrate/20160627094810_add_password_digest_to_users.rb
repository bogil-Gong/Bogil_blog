class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_colum :users, :password_digest, :string
  end
end
