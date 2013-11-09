

ActiveSupport.on_load(:before_initialize) do
  hooks_directory = File.expand_path("../hooks", __FILE__)
  Dir[hooks_directory, "*_hook.rb"].each do|f|
    puts f
  end
  require "ffcrm-misc/hooks/opportunity_top_section_hook"
end

