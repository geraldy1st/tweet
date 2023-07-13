# email:string
# password_digest:string

# password:string virtual
# password_confirmation: string virtual

class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: { with: /\A\S+@.+\.\S+\z/, message: "invalid format"}
end
  