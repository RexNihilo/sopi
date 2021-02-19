json.extract! student, :id, :Name, :CWID, :Concentration, :Advisor, :created_at, :updated_at
json.url student_url(student, format: :json)
