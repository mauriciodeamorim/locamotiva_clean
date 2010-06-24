# Runner.create( :name => "Joao da Silva",
#							 :sex => "M",
#  						 :birthday => "2009-09-18",
#  						 :cpf => "00011100099",
#							 :phone => "12345678",
#      				 :cel => "87654321",
#	 						 :nick => "um",
#							 :email => "atleta@um.com")
#						
# Race.create(:name => "Corpore Classic",
# 						 :stage => "Primavera", 
# 						 :date => "2009-07-09 22:29:38", 
# 						 :place => "Ibirapuera", 
# 						 :distance => "10Km",
# 						 :url => "http://corpore.org.br")
#						 
# Race.create(
#  :name => "Fila Night Run",
#  :stage => "São Paulo	",
#  :date => "2009-02-03 22:29:38",
#  :place => "USP",
#  :distance => "5Km",
#  :url => "http://filarunning.com")
#  
#Race.create(
#  :name => "Corrida Internacional de São Silvestre",
#  :stage => "São Paulo",
#  :date => "2009-12-31",
#  :place => "Paulista",
#  :distance => "15Km",
#  :url => "http://saosilvestre.com.br")

#namespace :db do
#   desc "Load seed fixtures (from db/seed) into the current environment's database."
#   task :seed => :environment do
#      require 'active_record/fixtures'
#      Dir.glob(RAILS_ROOT + '/db/seed/*.{yml,csv}').each do |file|
#         Fixtures.create_fixtures('db/seed', File.basename(file, '.*'))
#         puts "Running data fixture #{file}"
#      end
#   end
#end

namespace :db do
   desc "Load seed fixtures (from spec/fixtures) into the current environment's database."
   task :seed => :environment do
      require 'active_record/fixtures'
      Dir.glob(RAILS_ROOT + '/spec/fixtures/*.{yml,csv}').each do |file|
         Fixtures.create_fixtures('spec/fixtures', File.basename(file, '.*'))
         puts "Running data fixture #{file}"
      end
   end
end
  
#  namespace :db do
#    desc "Load seed fixtures (from db/fixtures) into the current environment's database."
#    task :seed => :environment do
#      require 'active_record/fixtures'
#    
#      # Attempt to load the base.rb file first. This overrides ActiveRecord::Base
#      #require RAILS_ROOT + '/lib/db/fixtures/base'
#      Dir.glob(RAILS_ROOT + '/spec/fixtures/*.{yml,csv}').each do |file|
#        # If a yml file then create fixtures from yml else if an rb file
#        # then execute the ruby file instead
##        if file =~ /.*\.yml$/
#          puts "Running yml data fixture #{file}"
#          Fixtures.create_fixtures('spec/fixtures', File.basename(file, '.*'))
##        else
##          puts "Running ruby data fixture #{file}"
##          load file
##        end
#      end
#    end
#  end

