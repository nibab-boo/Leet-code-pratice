def checker(nums, original)
  return nil if nums.empty?
  return original if original > nums[-1]

  mid = (nums.length / 2).floor();
  p nums
  ans = original <=> nums[mid]
  if ans < 0
    arr = nums.take(mid)
    checker(arr, original)   
  elsif ans > 0
    arr = nums.drop(mid)
    checker(arr, original);
  else
    return (original * 2)
  end
end


def find_final_value(nums, original)
  nums = nums.sort{|a, b| a <=> b}
  dup = original
  while original < (nums[-1] * 2)
    dup = checker(nums, original)
    if (dup.nil? || dup == original) 
      break
    else
      original = dup
    end
  end
  original
end
find_final_value([5,3,10, 6, 1,12], 6)
