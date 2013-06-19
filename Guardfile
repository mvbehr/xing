# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/spec_helper\.rb$}) { "spec" }
  watch(%r{^lib/xing/(.+)\.rb$}){ |m| "spec/cases/#{m[1]}_spec.rb" }
end

