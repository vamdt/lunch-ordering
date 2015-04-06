require 'bundler/setup'
require "weixin_api"
require 'dotenv'
require 'yaml'
require 'erb'


class Notify
  def initialize()
    Dotenv.load
  end
  
  def deliver
    template = YAML.load( ERB.new(IO.read('./template.yml')).result )    
    p template
    wa = Kehutong::WeixinApi.new(app_id: ENV['APP_ID'], app_secret: ENV['APP_SECRET'])
    wa.send_template_message(template)
  end
  
end
