
def part_1
  # locations = [[3, 4], [4, 3], [2, 5], [1, 3], [3, 9], [3, 3]]
  locations = File.read("/Users/shaun.katona/Desktop/advent_of_code_locations.txt").lines.map { |line| line.split.map(&:to_i) }
  locations_by_list = locations.transpose
  sorted_list_1 = locations_by_list[0].sort
  sorted_list_2 = locations_by_list[1].sort
  sorted_combined_locations = sorted_list_1.zip(sorted_list_2)
  distances_between_locations = sorted_combined_locations.map { |a, b| (a - b).abs }

  puts distances_between_locations.sum
end

def part_2
  # locations = [[3, 4], [4, 3], [2, 5], [1, 3], [3, 9], [3, 3]]
  locations = File.read("/Users/shaun.katona/Desktop/advent_of_code_locations.txt").lines.map { |line| line.split.map(&:to_i) }
  locations_by_list = locations.transpose
  list_1 = locations_by_list[0]
  list_2 = locations_by_list[1]
  counts_by_value_in_list_2 = list_2.tally

  puts list_1.map { |a| counts_by_value_in_list_2[a].to_i * a }.sum
end
