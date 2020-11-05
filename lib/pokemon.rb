class Pokemon
  
  attr_accessor :name, :type, :db
  attr_reader :id 
  
  def initialize(id: nil, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end 
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end 

<<<<<<< HEAD
  def self.find(id_num, db)
    pokemon_info = db.execute("SELECT * FROM pokemon WHERE id=?", id_num).flatten
    Pokemon.new(id: pokemon_info[0], name: pokemon_info[1], type: pokemon_info[2], db: db)
=======
  def self.find(id, db)
    result = db.execute("SELECT * FROM db WHERE id = ?", id)[0]
    Pokemon.new(result[0], result[1], result[2])
>>>>>>> ebfdd2483a50cd6ebd83865adf9d7dfe4deec13e
  end 
  
  
  
  
end
