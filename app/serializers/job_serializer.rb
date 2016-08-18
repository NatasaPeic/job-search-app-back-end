class JobSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :position_name, :company_url, :requirements,
             :salary, :application_url, :notes, :applied, :contact, :user_id
  belongs_to :user
end

 # curl --include --request GET http://localhost:3000/jobs

# curl --include --request GET http://localhost:3000/jobs/2


# curl --include --request POST http://localhost:3000/jobs --header "Content-Type: application/json" --data '{
#     "job": {
#       "company_name": "Another company ADDED",
#       "position_name": "Using CURL",
#       "company_url": "www.somecompany.com",
#       "requirements": "JavaScript",
#       "salary": "70",
#       "application_url": "www.indeed.com",
#       "notes": "permit in controller is changed now",
#       "applied": "NO",
#       "contact": "Somebody"
#     }
#   }'



# curl --include --request PATCH http://localhost:3000/jobs/6 --header "Content-Type: application/json" --data '{
#     "job": {
#       "company_name": "Company updated",
#       "position_name": "Using CURL after permit change",
#       "company_url": "www.somecompany.com",
#       "requirements": "JavaScript",
#       "salary": "70",
#       "application_url": "www.indeed.com",
#       "notes": "I applied it",
#       "applied": "YES",
#       "contact": "Somebody"
#     }
#   }'


# curl --include --request DELETE http://localhost:3000/jobs/3
