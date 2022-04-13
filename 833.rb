def find_replace_string(s, indices, sources, targets)
  return s if indices.empty?
  s = s.chars # "abcdef" => ["a", "b", "c", "d", "e", "f"]
  indices.each_with_index do |index, i| # [0, 2, 4] ["a", "cd", "e"] ["eee", "ffff", "gggg"]
    source = sources[i]
    if s[index..(index - 1 + source.length)].join("") == source
      count = index
      while count <= (index -1 + source.length)
        count == index ? s[count] = targets[i] : s[count] = ""
        count += 1
      end
    end
  end
  p s.join("")
end
find_replace_string("abcdef",[0, 2, 4],["a", "cd", "e"],["eee", "ffff", "gggg"]);

find_replace_string("vmokgggqzp",[3,5,1],["kg","ggq","mo"],["s","so","bfr"])

find_replace_string("cizokxcijwbyspcfcqws", [17,1,14,3,9,11], ["qw","iz","cf","okxc","wb","ysp"], ["m","rq","hc","ymfy","mt","drn"])

find_replace_string("abcd",[0, 2],["ab","ec"],["eee","ffff"])
# "eeecd"
# eee, b, , d