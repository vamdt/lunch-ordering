require 'bundler/setup'
require "weixin_api"

wa = Kehutong::WeixinApi.new(app_id: ENV['APP_ID'],\
                             app_secret: ENV['APP_SECRET'])
wa.send_template_message(
  "touser"=> ENV['TO_USER_OPENID'],
  "template_id"=> ENV['TEMPLATE_ID'],
  # "url"=> link,
  "topcolor"=>"#FFFF00",
  "data"=>{
    "first"=> {
      "value"=>"新订餐消息",
      "color"=>"#ff0000"
    },
    "keyword1"=> {
      "value"=>"vamdt",
      "color"=>"#000000"
    },
    "keyword2"=> {
      "value"=>"\n您订了：\n\t宫爆鸡丁\n\t酸辣土豆丝\n\t米饭",
      "color"=>"#386493"
    },
    "remark"=>{
      "value"=> rand(100),
      "color"=>"#0000ff"
    }
  }
)

puts "over"
