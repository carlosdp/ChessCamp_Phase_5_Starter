module Contexts
  module StudentContexts
    # create your contexts here...
    def create_students
      @ted    = FactoryGirl.create(:student, family: @grubermans, rating: 100)
      @zach   = FactoryGirl.create(:student, family: @skirpans, first_name: "Zach", last_name: "Skirpan", date_of_birth: 10.years.ago.to_date, rating: 1010)
      @max    = FactoryGirl.create(:student, family: @skirpans, first_name: "Max", last_name: "Skirpan", date_of_birth: 7.years.ago.to_date, rating: 535)      
      @sean   = FactoryGirl.create(:student, family: @regans, first_name: "Sean", last_name: "Regan", date_of_birth: 13.years.ago.to_date, rating: 1252)
      @kelsey = FactoryGirl.create(:student, family: @regans, first_name: "Kelsey", last_name: "Regan", date_of_birth: 11.years.ago.to_date, rating: 964)
      @peter  = FactoryGirl.create(:student, family: @regans, first_name: "Peter", last_name: "Regan", date_of_birth: 9.years.ago.to_date, rating: 842)
    end

    def delete_students
      @ted.delete
      @sean.delete
      @kelsey.delete
      @peter.delete
      @zach.delete
      @max.delete
    end

    def create_inactive_students
      # this inactive student is also set up with no rating to test default
      @ellen = FactoryGirl.create(:student, family: @regans, first_name: "Ellen", last_name: "Regan", date_of_birth: 6.years.ago.to_date, active: false)
    end

    def delete_inactive_students
      @ellen
    end
  end
end