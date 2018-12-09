class Webpage
	class AbsPathParser
		attr_accessor :abs_path, :protocol, :domain, :path

		def initialize(abs_path)
			@abs_path = abs_path
			@protocol = ''
			@domain = ''
			@path = ''
		end

		def extract_protocol
			valid_protocols = ['https://', 'http://']
			@protocol = @abs_path.split('//').first + '//' if valid_protocols.any? { |pr| (@abs_path.include?(pr)) }
			@domain = @abs_path.gsub(/https:\/\/|http:\/\//, '')
		end

		def split_domain_and_path
			was_slash_ended = @domain.last.eql?('/')
			checker = @domain.split('/')
			if checker.length > 1
				@domain = checker[0]
				@domain += '/' if @domain.exclude?('/')
				@path = checker[1..-1].join('/')
				@path += '/' if was_slash_ended
			end
		end
	end
end
