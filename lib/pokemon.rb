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

  def self.find(id, db)
    result = db.execute("SELECT * FROM db WHERE id = ?", id).flatten
    # result = @db[:conn].execute(sql, id)[0]
    Pokemon.new(result[0], result[1], result[2])
  end 
  
  
  
  
end
