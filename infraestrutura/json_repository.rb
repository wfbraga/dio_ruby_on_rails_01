require 'json'
class JsonRepository
  def self.ler(arquivo)
    unless File.exist?(arquivo)
      puts "Arquivo não encontrado: #{arquivo}"
      nil
    end
    begin
      json_data = File.read(arquivo)
      data = JSON.parse(json_data)
      return data
    rescue JSON::ParserError => e
      puts "Erro ao ler o arquivo JSON: #{e.message}"
      nil
    end
  end

  def self.gravar(arquivo, array)
    File.open(arquivo, 'w') do |f|
      f.puts JSON.pretty_generate(array)
    end
  end

  def self.adicionar(arquivo, obj)
    data = ler(arquivo) || []
    data << obj
    File.open(arquivo, 'w') do |f|
      f.puts JSON.pretty_generate(data)
    end
  end
end
