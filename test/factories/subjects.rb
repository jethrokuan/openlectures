# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subject do
    title "Economics"
    description "This is a rather lengthy description of economics."
    image_url "http://www.google.com/lol.gif"
    subway_map "what is this supposed to be?"
  end
end
