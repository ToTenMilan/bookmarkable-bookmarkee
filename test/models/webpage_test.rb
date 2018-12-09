require 'test_helper'

class WebpageTest < ActiveSupport::TestCase
	paths = %w[
		https://api.rubyonrails.org/v5.2.1/classes/ActiveModel/Validations/ClassMethods.html#method-i-validates
		http://api.rubyonrails.org/v5.2.1/classes/ActiveModel/Validations/ClassMethods.html#method-i-validates
		api.rubyonrails.org/v5.2.1/classes/ActiveModel/Validations/ClassMethods.html#method-i-validates

		https://api.rubyonrails.org/v5.2.1/
		http://api.rubyonrails.org/v5.2.1/
		api.rubyonrails.org/v5.2.1/

		https://api.rubyonrails.org/
		http://api.rubyonrails.org/
		api.rubyonrails.org/

		https://api.rubyonrails.org
		http://api.rubyonrails.org
		api.rubyonrails.org

		https://rubyonrails.org
		http://rubyonrails.org
		rubyonrails.org

		https://www.rubyonrails.org/
		http://www.rubyonrails.org/
		www.rubyonrails.org/
	]
	test 'it should return first set of absolute paths properly parsed' do
		expect ['api.rubyonrails.org/', 'v5.2.1/classes/ActiveModel/Validations/ClassMethods.html#method-i-validates'], Webpage.extract_domain_and_path(paths[0])
		expect ['api.rubyonrails.org/', 'v5.2.1/classes/ActiveModel/Validations/ClassMethods.html#method-i-validates'], Webpage.extract_domain_and_path(paths[1])
		expect ['api.rubyonrails.org/', 'v5.2.1/classes/ActiveModel/Validations/ClassMethods.html#method-i-validates'], Webpage.extract_domain_and_path(paths[2])
	end

	test 'it should return second set of absolute paths properly parsed' do
		expect ['api.rubyonrails.org/', 'v5.2.1/'], Webpage.extract_domain_and_path(paths[3])
		expect ['api.rubyonrails.org/', 'v5.2.1/'], Webpage.extract_domain_and_path(paths[4])
		expect ['api.rubyonrails.org/', 'v5.2.1/'], Webpage.extract_domain_and_path(paths[5])
	end

	test 'it should return third set of absolute paths properly parsed' do
		expect ['api.rubyonrails.org/', ''], Webpage.extract_domain_and_path(paths[6])
		expect ['api.rubyonrails.org/', ''], Webpage.extract_domain_and_path(paths[7])
		expect ['api.rubyonrails.org/', ''], Webpage.extract_domain_and_path(paths[8])
	end

	test 'it should return fourth set of absolute paths properly parsed' do
		expect ['api.rubyonrails.org/', ''], Webpage.extract_domain_and_path(paths[9])
		expect ['api.rubyonrails.org/', ''], Webpage.extract_domain_and_path(paths[10])
		expect ['api.rubyonrails.org/', ''], Webpage.extract_domain_and_path(paths[11])
	end

	test 'it should return fifth set of absolute paths properly parsed' do
		expect ['api.rubyonrails.org/', ''], Webpage.extract_domain_and_path(paths[12])
		expect ['api.rubyonrails.org/', ''], Webpage.extract_domain_and_path(paths[13])
		expect ['api.rubyonrails.org/', ''], Webpage.extract_domain_and_path(paths[14])
	end
end
