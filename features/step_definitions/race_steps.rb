Given /^I have races (.+)$/ do |races|
  races.split(', ').each do |race|
    Race.create!(:name => race, :date => '1-1-2009', :distance => '10Km')
    end 
end
