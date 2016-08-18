#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :jobs
end
