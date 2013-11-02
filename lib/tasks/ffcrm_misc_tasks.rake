# desc "Explaining what the task does"
# task :ffcrm_misc do
#   # Task goes here
# end

namespace :ffcrm_misc do
  desc "ffcrm_misc's rspec test, run this under fatfreecrm app root. not plugin root"
  task :rspec do
    spec = File.expand_path('../../../spec', __FILE__)
    command = "rspec -Ispec:lib #{spec}"
    puts command if verbose
    system(command)
  end
end
