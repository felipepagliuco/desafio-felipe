
class Peixe
  include HTTParty
  require_relative '../hooks/pesca_hook'
  base_uri "https://6008f7120a54690017fc2796.mockapi.io/pesca"

  def initialize(body)
    @options = {:body => body}
    @options2 = {}
  end

  def postPeixe
    self.class.post("/peixes", @options)
  end

  def getPeixe(id)
    self.class.get("/peixes/#{id}",@options2)
  end

  def putPeixe(id)
    self.class.put("/peixes/#{id}",@options2)
  end

  def deletePeixe(id)
    self.class.delete("/peixes/#{id}",@options2)
  end

end