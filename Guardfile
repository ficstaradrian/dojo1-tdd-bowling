guard :rspec, cmd: 'bundle exec rspec' do
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^lib/(.+)\.rb$})       { |m| "spec/lib/#{m[1]}_spec.rb" }
    watch('spec/spec_helper.rb')    { "spec" }
  
    # Rails example
    watch(%r{^lib/(.+)\.rb$})       { |m| "spec/classes/#{m[1]}_spec.rb" }
end
