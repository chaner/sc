require 'json'

class EricJson
  def initialize(jsonString)
    @data = JSON.parse jsonString
    @data.each {|key, val|
      self.define_singleton_method(key) { return val }
    }
  end
end
