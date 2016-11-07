class MoodysEstimate < ActiveRecord::Base
  CATEGORY = { 1 => 'current law', 2 => 'Trump Policies Implemented', 3 => 'Trump Policies Resisted' }

  def category_name
    CATEGORY[self.category]
  end

  def self.load_data
    index_data = {1 => '1966.5 1992.5 2000.2', 2 => '1966.5	1695.1 1472.4', 3 => '1966.5 1824.3 1784.2'}
    per_data = {1 => '-4.60	1.30	4.00', 2 => '-4.60	-13.80	-13.10', 3 => '-4.60	-7.20	-2.20'}

    index_data = index_data.keys.map {|k| index_data[k].split(' ').map{|k| (k.to_f*100).round} }
    per_data = per_data.keys.map {|k|  per_data[k].split(' ').map{|a| a.to_f}}

    [2016, 2017, 2018].each do |y|
      1.upto(3).each do |i|
        puts "now adding year #{y} and category #{CATEGORY[i]}"
        # puts index_data[i].split(' ').map(&:to_f)
        m = MoodysEstimate.new
        m.category = i
        m.year = y
        m.impact = per_data[i-1][y - 2016]
        m.sp_index = index_data[i-1][y - 2016]
        m.save!
      end
    end
  end
end
