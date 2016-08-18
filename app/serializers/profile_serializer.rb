class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :jobs
end
