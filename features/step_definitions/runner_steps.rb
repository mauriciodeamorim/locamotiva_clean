Given /^the following runners:$/ do |runners|
  Runner.create!(runners.hashes)
end

Given /^I have a list of runners:$/ do |runners|
  Runner.create!(runners.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) runner$/ do |pos|
  visit runners_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following runners:$/ do |expected_runners_table|
  expected_runners_table.diff!(table_at('table').to_a)
end

Then /^I should see the following list:$/ do |expected_runners_table|
  # table is a Cucumber::Ast::Table
  visit runners_url
  # pending
end
