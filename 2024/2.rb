def part_1
  # reports = [[7, 6, 4, 2, 1], [1, 2, 7, 8, 9], [9, 7, 6, 2, 1], [1, 3, 2, 4, 5], [8, 6, 4, 4, 1], [1, 3, 6, 7, 9]]
  reports = File.read("/Users/shaun.katona/Desktop/advent_of_code_reports.txt").lines.map { |line| line.split.map(&:to_i) }

  puts reports.count { |report| safe?(report) }
end

def safe?(report)
  always_one_direction?(report) && levels_move_legally?(report)
end

def always_one_direction?(report)
  report == report.sort || report == report.sort.reverse
end

def levels_move_legally?(report)
  report.each_cons(2).all? do |a, b|
    (a - b).abs.between?(1, 3)
  end
end

def part_2
  # reports = [[7, 6, 4, 2, 1], [1, 2, 7, 8, 9], [9, 7, 6, 2, 1], [1, 3, 2, 4, 5], [8, 6, 4, 4, 1], [1, 3, 6, 7, 9]]
  reports = File.read("/Users/shaun.katona/Desktop/advent_of_code_reports.txt").lines.map { |line| line.split.map(&:to_i) }

  puts reports.count { |report| report.combination(report.length - 1).any? { |r| safe?(r) } }
end

part_1
part_2
