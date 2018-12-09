class Webpage
	class AbsPathParser
		attr_accessor :abs_path, :domain, :path

		def initialize(abs_path)
			@abs_path = abs_path
			@domain = ''
			@path = ''
		end

		def remove_protocol
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
