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

			hts://www.rubyonrails.org/
			 ht://www.rubyonrails.org/
			      www.rubyonrails.org/
	]

	test 'it should return zero absolute path properly parsed' do
		assert_equal ['https://', 'api.rubyonrails.org/', 'v5.2.1/classes/ActiveModel/Validations/ClassMethods.html#method-i-validates'], Webpage.extract_domain_and_path(paths[0])
	end

	test 'it should return first absolute path properly parsed' do
		assert_equal ['http://', 'api.rubyonrails.org/', 'v5.2.1/classes/ActiveModel/Validations/ClassMethods.html#method-i-validates'], Webpage.extract_domain_and_path(paths[1])
	end

	test 'it should return second absolute path properly parsed' do
		assert_equal ['', 'api.rubyonrails.org/', 'v5.2.1/classes/ActiveModel/Validations/ClassMethods.html#method-i-validates'], Webpage.extract_domain_and_path(paths[2])
	end



	test 'it should return third absolute path properly parsed' do
		assert_equal ['https://', 'api.rubyonrails.org/', 'v5.2.1/'], Webpage.extract_domain_and_path(paths[3])
	end

	test 'it should return fourth absolute path properly parsed' do
		assert_equal ['http://', 'api.rubyonrails.org/', 'v5.2.1/'], Webpage.extract_domain_and_path(paths[4])
	end

	test 'it should return fifth absolute path properly parsed' do
		assert_equal ['', 'api.rubyonrails.org/', 'v5.2.1/'], Webpage.extract_domain_and_path(paths[5])
	end



	test 'it should return sixth absolute path properly parsed' do
		assert_equal ['https://', 'api.rubyonrails.org/', ''], Webpage.extract_domain_and_path(paths[6])
	end

	test 'it should return seventh absolute path properly parsed' do
		assert_equal ['http://', 'api.rubyonrails.org/', ''], Webpage.extract_domain_and_path(paths[7])
	end

	test 'it should return eighth absolute path properly parsed' do
		assert_equal ['', 'api.rubyonrails.org/', ''], Webpage.extract_domain_and_path(paths[8])
	end



	test 'it should return ninth absolute path properly parsed' do
		assert_equal ['https://', 'api.rubyonrails.org', ''], Webpage.extract_domain_and_path(paths[9])
	end

	test 'it should return tenth absolute path properly parsed' do
		assert_equal ['http://', 'api.rubyonrails.org', ''], Webpage.extract_domain_and_path(paths[10])
	end

	test 'it should return eleventh absolute path properly parsed' do
		assert_equal ['', 'api.rubyonrails.org', ''], Webpage.extract_domain_and_path(paths[11])
	end



	test 'it should return twelfth absolute path properly parsed' do
		assert_equal ['https://', 'rubyonrails.org', ''], Webpage.extract_domain_and_path(paths[12])
	end

	test 'it should return thirteenth absolute path properly parsed' do
		assert_equal ['http://', 'rubyonrails.org', ''], Webpage.extract_domain_and_path(paths[13])
	end

	test 'it should return fourteenth absolute path properly parsed' do
		assert_equal ['', 'rubyonrails.org', ''], Webpage.extract_domain_and_path(paths[14])
	end



	test 'it should return fifteenth absolute path properly parsed' do
		assert_equal ['https://', 'www.rubyonrails.org/', ''], Webpage.extract_domain_and_path(paths[15])
	end

	test 'it should return sixteenth absolute path properly parsed' do
		assert_equal ['http://', 'www.rubyonrails.org/', ''], Webpage.extract_domain_and_path(paths[16])
	end

	test 'it should return seventeenth absolute path properly parsed' do
		assert_equal ['', 'www.rubyonrails.org/', ''], Webpage.extract_domain_and_path(paths[17])
	end
end
