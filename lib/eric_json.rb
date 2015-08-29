require 'json'

class EricJson
  def initialize(jsonString)
    return if jsonString.nil?
    @data = JSON.parse jsonString
    @data.each {|key, val|
      self.define_singleton_method(key) { return val }
    }
  end
end
