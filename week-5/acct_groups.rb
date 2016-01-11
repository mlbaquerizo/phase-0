# In this challenge, you will make your own method to automatically create
# accountability groups from a list of names. You'll want to make of the People
# in your cohort. Try to get everyone into an accountability group of 4 or 5. Be
# sure everyone is in a group of at least 3 -- It's no fun if someone is in a
# group by themself or with one other person.

fiddlers = ["Dong Wook Seo (John)", "Aaron Hu", "Adam Pinsky", "Akeem Street", "Alex Forger", "Andrew Kim", "Baron Kwan", "Brian Bier", "Byron Gage", "Carl Conroy", "Charlie Bliss", "Christopher Bunkers", "Cody Kendall", "Coline Forde", "David Valencia", "Emily Claire Bosakowski", "Everett Golden", "Hagai Zwick", "Heather Conkin", "Ian Wudarski", "Ieronim Oltean", "Jake Hamilton", "James Boyd", "Jasmeet Chatrath", "Jenna El-Amin", "Jerrie Evans", "Joe Case", "Jonathan Case", "Jonathan Schwartz", "Jonathan Silvestri", "Kathryn Garbacz", "Ian Kinner", "Kyle Cierzan", "Kyle Zelman", "Linda Oanh Ho", "Yiorgos Makridakis", "Matt Harris", "Matthew Baquerizo", "Menuka Samaranayake", "Michael Pintar", "Mollie Stein", "Lydia Nash", "Aaron Opsahl", "Peter Leong", "Peter Stratoudakis", "Prince Sadie", "Ryan F. Salerno", "Sanderfer Chau", "Sarah Finken", "EMMET SUSSLIN", "Sydney Rossman-Reich", "Eric Tenza", "Thomas Yancey", "Tim Kelly", "Timothy Beck", "Tyler Doerschuk"]

# input: List of names, n = number in each group
# output: Group #: name 1,..., name n for each group on a new line

#   groups = new Hash
#   IF length of list is divisible by number you want in each group (n)
#     Add (length/n) keys to hash
#   ELSE
#     Add (length/n) + 1 keys to hash
#   name those keys "Group 1",...,"Group x"
#
#   Pick/delete one name from the given list at random and add it to each
#   consecutive value in the hash, until there is a list of at most n people for
#   each value.
#
#   For each group and list in the hash, print "Group #: List"

def group(list, n)
  groups = Hash.new
  (list.length % n == 0) ? m = (list.length/n) : m = (list.length/n) + 1
  m.times { |x| groups["Group #{x+1}"] = [] }
  n.times do
    groups.each_key do |k|
      sample = Array.new << list.sample
      list.delete_if { |name| sample.include? name}
      groups[k] << sample
    end
  end
  groups.each do |k,v|
    v.flatten!.compact!
    puts "#{k}: #{v}"
  end
end

my_grouping = group(fiddlers, 5)
p my_grouping
puts my_grouping

# What was the most interesting and most difficult part of this challenge?
# The most interesting part about this challenge was the depth of which I could
# have added. I took a few different approaches, some that failed, some that
# passed but didn't satisfy me, and ultimately what I ended up with, which I
# think covers all the bases but could STILL be improved. That was also the most
# difficult part; knowing when to stop and what approach I should take.

# Do you feel you are improving in your ability to write pseudocode and break
# the problem down?
# I do feel that way, however because this challenge was a bit more open ended
# than previous ones, I definitely felt challenged in regards to breaking the
# problem down.

# Was your approach for automating this task a good solution? What could have
# made it even better?
# My approach is good enough for me. It makes it so that there will never be a
# group with less than one less person than specified. In the case of making
# groups of 5, there will never be a group with less than 4 people regardless of
# how many people there are. It also adjusts the number of groups based on how
# many people there are and the desired number of people in the group.

# What data structure did you decide to store the accountability groups in and
# why?
# Originally I tried out using just an Array to store the groups into. This
# worked but I felt that using a Hash of Arrays made it less complicated. I
# think if I went back and tried using an Array, with the knowledge I gained
# during this challenge, I could probably make a better program.

# What did you learn in the process of refactoring your initial solution? Did
# you learn any new Ruby methods?
# Some ruby methods that were new to me were Array#flatten, Array#compact,
# Array#sample, and Array#delete_if. These methods were pretty intuitive to use
# after I played around with them. In general ruby methods so far have been more
# or less intuitive to use. I am starting to get a better feel of how Ruby works
# so it is easier to find methods.