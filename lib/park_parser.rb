class ParkParser

  def initialize(input)
    @input = input
  end

  def group_by(*grouping_methods)
    output_hash = {}
    @input.each do |park|
      key = grouping_methods.map { |group| park[group] }.join(", ")
      if output_hash.has_key? key
        output_hash[key] << park
      end
      output_hash[key] ||= [park]
    end
    output_hash
  end

  def by_id
    output_hash = {}
    @input.map do |park|
      output_hash[park[:id]] = park
    end
    output_hash
  end

end