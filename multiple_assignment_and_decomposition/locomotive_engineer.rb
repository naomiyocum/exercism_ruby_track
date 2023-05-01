class LocomotiveEngineer
  def self.generate_list_of_wagons(*arguments)
    arguments
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    (a, b, c, *rest) = each_wagons_id
    [c, missing_wagons, rest, a, b].flatten
  end

  def self.add_missing_stops(*arguments)
    a, b = arguments
    b.nil? ? a[:stops] = [] : a[:stops] = b.values.to_a
    return a
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
