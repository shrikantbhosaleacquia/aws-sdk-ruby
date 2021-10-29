require 'uri'

module URI
  class << self
    def encode(arg)
      CGI.escape(arg.to_s)
    end

    def escape(arg)
      CGI.escape(arg.to_s)
    end

    def decode(arg)
      CGI.unescape(arg.to_s)
    end

    def unescape(arg)
      CGI.unescape(arg.to_s)
    end
  end
end
