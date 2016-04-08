class ResourceElemenetsFactory

  #Rubyは数値の最大値が存在しないため、通常考えられる数値を入れている
  def initialize(file_number: 10000000)

    @resource_path = "#{Dir::pwd}/resource"
    @file_number = file_number

  end

  def create

    eleemnts = []
    Dir::glob("#{@resource_path}/*.html").each_with_index do |file_path, index|

      break if index + 1 > @file_number

      file = File.open(file_path)
      eleemnts << Nokogiri::HTML(file)

    end

    eleemnts
  end

end
