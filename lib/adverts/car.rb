class Car < Struct.new(:id, :model)
  def self.from_api(data)
    new(data['id'], data['description'])
  end
end
