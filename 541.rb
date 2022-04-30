# Given a string s and an integer k, reverse the first k characters for every 2k characters counting from the start of the string.
# If there are fewer than k characters left, reverse all of them. If there are less than 2k but greater than or equal to k characters, then reverse the first k characters and leave the other as original.


def reverse_str(s, k)
  return s.reverse if s.length <= k
  if s.length < ( 2 * k )
    return (s[...k].reverse << s[k..])
  else
    i = 1
    return_string = ""
    loop do
      if s.length >= k
        return_string += (i % 2 != 0) ? s[...k].reverse : s[...k]
        s = s[k..]
      else
        return_string += (i % 2 != 0) ? s.reverse : s
        s = ""
      end
      i += 1
      p i
      if (s.length <= k) && (i % 2 == 0) || s.empty?
        return_string += s
        break
      end
    end
    return_string
  end
end

# p reverse_str("abcdefg", 2);
# p reverse_str("abcd", 2);
# p reverse_str("abcd", 4);
# p reverse_str("abcde", 2);
p reverse_str("hyzqyljrnigxvdtneasepfahmtyhlohwxmkqcdfehybknvdmfrfvtbsovjbdhevlfxpdaovjgunjqlimjkfnqcqnajmebeddqsgl", 39)

 p "equal or Not"
 p reverse_str("hyzqyljrnigxvdtneasepfahmtyhlohwxmkqcdfehybknvdmfrfvtbsovjbdhevlfxpdaovjgunjqlimjkfnqcqnajmebeddqsgl", 39) == "fdcqkmxwholhytmhafpesaentdvxginrjlyqzyhehybknvdmfrfvtbsovjbdhevlfxpdaovjgunjqllgsqddebemjanqcqnfkjmi"
