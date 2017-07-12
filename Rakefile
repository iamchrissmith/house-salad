# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

dir = File.expand_path(File.dirname(__FILE__))
namespace :vcr do
  desc 'Run the full test suite from scratch'
  task :spec => [:wipe]

  desc 'Wipe the old VCR cassettes and Run Specs'
  task :fresh do
    begin
      FileUtils.remove_dir("#{dir}/spec/fixtures/vcr_cassettes", true)
      Rake::Task["spec"].invoke
    rescue
      # nothing
    end
  end
end
