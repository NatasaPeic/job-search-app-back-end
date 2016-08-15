class JobSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :position_name, :company_url, :requirements, :salary, :application_url, :notes
end
