require 'bundler/setup'
require "weixin_api"
require 'dotenv'
require 'yaml'
require 'erb'
require './lunch'


class Notify
  def initialize()
    Dotenv.load
  end
  
  def deliver(lunch)
    template = YAML.load( ERB.new(IO.read('./template.yml')).result(binding) )
    p template
    wa = Kehutong::WeixinApi.new(app_id: ENV['APP_ID'], app_secret: ENV['APP_SECRET'])
    wa.send_template_message(template)
  end
  
end

lunch = Lunch.new name: 'vamdt11', meat: '宫爆鸡丁', vegatable: '酸辣土豆丝', main: '米饭'
Notify.new.deliver lunch
