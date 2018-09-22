Given /^I know how many collaborator I have$/ do
  @number_collaborators = Collaborator.count

end

When /^I create a new collaborator$/ do
  collaborator = Collaborator.new
  collaborator.NAME = 'Pilar'
  collaborator.LASTNAME = 'Romero'
  collaborator.SECOND_LASTNAME = 'Romero'
  collaborator.save

end

Then /^I should have (\d+) additional collaborator$/ do |add_collaborators|
  Collaborator.count.should == @number_collaborators + add_collaborators.to_i

end

Given /^I have a collaborator "([^"]*)"$/ do |original_name|
  collaborator = Collaborator.new
  collaborator.NAME = original_name
  collaborator.LASTNAME = 'Duck'
  collaborator.SECOND_LASTNAME = 'Paw'
  collaborator.save
  @original_name = original_name

end

When /^I read information that collaborator$/ do
  @collaborator = Collaborator.find_by_name(@original_name)

end

Then /^the collaborator should have the name "([^"]*)"$/ do |name|
  @collaborator.name.should == name

end

When /^I update the name to "([^"]*)"$/ do |name|
  collaborator = Collaborator.find_by_name(@original_name)
  collaborator.NAME = name
  collaborator.save

end

Then /^I should have a record for "([^"]*)"$/ do |name|
  collaborator = Collaborator.find_by_name(name)
  collaborator.should_not be_nil

end

And /^I should not have a record for "([^"]*)"$/ do |name|
  collaborator = Collaborator.find_by_name(name)
  collaborator.should be_nil

end

When /^I delete that collaborator$/ do
  collaborator = Collaborator.find_by_name(@original_name)
  collaborator.delete

end
