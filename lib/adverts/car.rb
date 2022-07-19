class Car < Struct.new(:id, :model, :price, :url)
  def self.from_api(data)
    new(data['id'], data['model'], data['price'], data['url'])
  end
end
