class Dog
  
  def initialize(id = nil, name, breed)
    @id = id
    @name = name
    @breed = breed
  end
  
  def self.create_table
   sql = <<-SQL
   CREATE TABLE IF NOT EXISTS dogs (
   id INTEGER PRIMARY KEY,
   name TEXT,
   breed TEXT
   );
   SQL
   
   DB[:conn].execute(sql)
  end
  
  def self.drop_table
    sql = "DROP TABLE IF EXISTS dogs"
    DB[:conn].execute(sql)
  end
  
  def new_from_db
    
  end
end