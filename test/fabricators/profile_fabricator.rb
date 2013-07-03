Fabricator(:profile) do
  fname     "Foo"
  lname     "Bar"
  bio       "foobar"
  tel       { sequence(:tel, 000000000) }
  school    { sequence(:uid, 111111111) }
end

Fabricator(:profile_with_user, class_name: "Profile") do
  fname     "Foo"
  lname     "Bar"
  bio       "foobar"
  tel       { sequence(:tel, 000000000) }
  school    { sequence(:uid, 111111111) }
  user      { Fabricate(:user, email: sequence(:email) { |i| "foo#{i}@example.com" }) }
end
