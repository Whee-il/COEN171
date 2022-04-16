datatype 'a tree = Empty | Node of 'a tree * 'a * 'a tree

fun insert h Empty = Node(Empty,h,Empty)
  | insert h (Node(l,x,r)) = 
    if h < x then (Node(insert h l,x,r))
    else 
        if h > x then (Node(l,x,insert h r))
        else Node(l,x,r)

fun member h Empty = false
  | member h (Node(l,x,r)) = 
    if h = x then true
    else
        if h < x then 
            member h l
        else if x > h then 
            member h r
        else false;