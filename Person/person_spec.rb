require 'rubygems'
require 'rspec'
require_relative 'person'

describe Person do
  context "when a name is provided" do
    let("person") { Person.new "Matt", "Buck" }

    describe ".initialize" do
      it "creates a new person with a first and last name" do
        # person = Person.new "Matt", "Buck"
        expect(person.first_name).to eq("Matt")
        expect(person.last_name).to eq("Buck")
      end
    end  

    describe "#full_name" do
      it "returns the full name of the person" do
      # person = Person.new "Matt", "Buck"
        expect(person.full_name).to eq("Matt Buck")
      end
    end

    describe "reverse_name" do 
      it "returns the reverse name of a person" do 
        expect(person.reverse_name).to eq("kcuB ttaM")
      end

     # describe "add_middle" do 
     #   it returns full_name with middle name do 
     #    expect(person.add_middle(middle_name)).to eq("Matt middle_name Buck")
     #   end
     # end
      
    end
  end   

 context "when a name is not provided" do
    let("person") { Person.new}

    describe ".initialize" do
      it "creates a person without a first or last name" do
        expect(person.first_name).to be_nil
        expect(person.last_name).to be_nil
      end
    end
    
    describe "#full_name" do 
      it "returns nil" do
        expect(person.full_name).to be_nil
      end
    end
  end 

  context "when only a first or last name is provided" do
    let ("person") { Person.new "Matt"}

    describe "#full_name" do 
      it "returns the provided name of the person" do 
        expect(person.full_name).to eq("Matt")
      end
    end
  end
end



# bundle exec rspec -f d -c person_spec.rb
# red green refactor (testing)
# this is called a spec doc
