module UserSeeds
  def self.import
    Chef.create(name: "Mauricio Garcia", email: "mauricio@mail.com")
  end
end
