require 'oauth'

module Xing
  class << self
    attr_accessor :token, :secret, :default_profile_fields

    def configure
      yield self
      true
    end
  end
  
  module Models
    autoload :Post,             "xing/models/post"
    autoload :User,             "xing/models/user"
    autoload :Event,            "xing/models/event"
    autoload :Group,            "xing/models/group"
    autoload :Comment,          "xing/models/comment"
    autoload :CommpanyProfile,  "xing/models/company_profile"
    autoload :Activity,         "xing/models/activity"
    autoload :Base,             "xing/models/base"
  end

  autoload :Client,           "xing/client"
  autoload :Errors,           "xing/errors"
  autoload :Mash,             "xing/mash"
end
