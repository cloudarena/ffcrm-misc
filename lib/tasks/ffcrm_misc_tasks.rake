# desc "Explaining what the task does"
# task :ffcrm-misc do
#   # Task goes here
# end

namespace :ffcrm-misc do
  desc "ffcrm-misc's rspec test, run this under fatfreecrm app root. not plugin root"
  task :rspec do
    spec = File.expand_path('../../../spec', __FILE__)
    command = "rspec -Ispec:lib #{spec}"
    puts command if verbose
    system(command)
  end
end
