class Lunch

  @@attrs = [:name, :meat, :vegatable, :main]
  attr_accessor *@@attrs

  def initialize(json)
    @@attrs.each { |attr| send("#{attr}=", json[attr]) }
  end

  def to_s
    "\n您订了：\n\t#{meat}\n\t#{vegatable}\n\t#{main}"
  end

end
