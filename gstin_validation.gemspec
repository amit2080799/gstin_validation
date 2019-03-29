Gem::Specification.new do |s|
  s.name        	       = 'gstin_validation'
  s.version     	       = '1.0.0'
  s.date        	       = '2019-03-29'
  s.summary     	       = 'Validates Indian Gstin number based on check digit'
  s.description 	       = 'gstin_validation validates Indian gstin numbers based on the check digit. The last character in a gstin number is the checksum digit. Checksum digit is generated based on the first 14 characters of the gstin number.'
  s.author      	       = 'Amit Kumar'
  s.email       	       = 'amitkumar2080799@gmail.com'
  s.files              	       = ['lib/gstin_validation.rb']
  s.add_development_dependency   'rspec', '~> 3.7'
  s.homepage                   = 'https://rubygems.org/gems/gstin_validation'
  s.license         	       = 'MIT'  
end
