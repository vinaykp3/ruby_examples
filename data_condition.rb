a = 34
case a
when String, Fixnum
 p "this is string"
when Fixnum
p "this is integer"
else
p "som numbers"
end
