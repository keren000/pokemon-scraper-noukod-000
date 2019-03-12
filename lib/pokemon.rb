class Pokemon
<<<<<<< HEAD
  attr_accessor :name, :type, :db, :id, :hp

  def initialize(keywords)
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(num, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", [num])
    new_pokemon = self.new(pokemon)
    new_pokemon.id = pokemon[0][0]
    new_pokemon.name = pokemon[0][1]
    new_pokemon.type = pokemon[0][2]
    new_pokemon.hp = pokemon[0][3]
    return new_pokemon
  end

  def alter_hp(num, db)
    db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", [num], [self.id])
    self.hp = num
=======
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db: )
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO Pokemon (name, type) VALUES (?, ?)", name, type )
  end

  def sel.find(id, db)
    pokemon=db.execute("SELECT * FROM Pokemon WHERE id=id")
    Pokemon.new(id: id, name: pokemon[0][1], type: pokemon[0][2], db: db)
>>>>>>> a97cae911f4bc7a9e856d57aa2e301a35759ca4e
  end
end
