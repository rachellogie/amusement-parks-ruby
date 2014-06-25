class ParkParser

  def initialize(input)
    @input = input
  end

  def index_the_parks
    output_hash = {}
    @input.each do |park|
      output_hash[park[:id]] = park
    end
    output_hash
  end

  def group_by_country
    output_hash = {}
    @input.each do |park|
      if output_hash.has_key? park[:country]
        output_hash[park[:country]] << park
      end
      output_hash[park[:country]] ||= [park]
    end
    output_hash
  end

  def group_by_country_and_state
    output_hash = {}
    @input.each do |park|
      if output_hash.has_key? "#{park[:state]}, #{park[:country]}"
        output_hash["#{park[:state]}, #{park[:country]}"] << park
      end
      output_hash["#{park[:state]}, #{park[:country]}"] ||= [park]
    end
    output_hash
  end

end