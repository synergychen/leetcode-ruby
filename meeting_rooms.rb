# Definition for an interval.
# # class Interval
# #     attr_accessor :start, :end
# #     def initialize(s=0, e=0)
# #         @start = s
# #         @end = e
# #     end
# # end

# @param {Interval[]} intervals
# @return {Boolean}
def can_attend_meetings(intervals)
  sorted_intervals = intervals.sort_by!(&:start)

  (0..sorted_intervals.length - 2).each do |i|
    return false if sorted_intervals[i + 1].start < sorted_intervals[i].end
  end

  true
end
