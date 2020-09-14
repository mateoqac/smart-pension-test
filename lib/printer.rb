module Printer
  module_function
  def print_visits(list)
    return "Nothing to print" if list.empty?
    list.sort_by {|k, v| -v.count}.each do |e|
      puts "#{e[0]} #{e[1].count} visits"
    end
  end

  def print_uniques(list)
    return "Nothing to print" if list.empty?
    list.sort_by {|k, v| -v.uniq.count}.each do |e|
      puts "#{e[0]} #{e[1].uniq.count} unique views"
    end
  end
end
