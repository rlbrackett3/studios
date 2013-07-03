json.array!(@courses) do |course|
  json.extract! course, :title, :description, :term, :start_date, :end_date, :course_number, :published, :school
  json.url course_url(course, format: :json)
end
