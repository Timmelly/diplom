class RoleUser < ApplicationRecord
  belongs_to :role
  belongs_to :user
Role::ROLE_FOR_METHODS.each do |rname|
    define_method "is_#{rname}?" do
      self.role.role_name_eng == rname
    end
  end
end
