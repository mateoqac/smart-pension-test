
module Parse
  module_function

  def call(file)
    lines = File.readlines file
    hash = {}
    lines.each do |line|
      splited = line.split(' ')
      if hash[splited[0]].nil?
        hash[splited[0]] = [splited[1]]
      else
        hash[splited[0]] = hash[splited[0]]<<splited[1]
      end
    end
    hash
  end
end
