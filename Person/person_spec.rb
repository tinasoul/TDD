require 'rubygems'
require 'rspec'
require_relative 'person'

describe Person do
  describe ".initialize" do
    it "creates a new person with a first and last name" do
      person = Person.new "Matt", "Buck"
      expect(person.first_name).to eq("Matt")
      expect(person.last_name).to eq("Buck")
    end
  end  
end

# bundle exec rspec -f d -c person_spec.rb
