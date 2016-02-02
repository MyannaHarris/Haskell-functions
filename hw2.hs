--Myanna Harris
--hw2.hs

--Checks if numbers are in ascending order
ascending3 x y z = if x < y && y < z then True else False

--Checks if numbers are in descending order
descending3 x y z = if x > y && y > z then True else False

--Checks if numbers are unordered
unordered3 x y z = if not(ascending3 x y z) && not(descending3 x y z) then True else False

--Returns the distance
distance (x,y) (x2,y2) = sqrt((x2-x)^2 + (y2-y)^2)

--Returns midpoint
midpoint (x,y) (x2,y2) = ((x+x2)/2,(y+y2)/2)

--Add element to a list
addElemToList x ys = ys ++ [x]

--Moves first element to end of list
addFirstToLast xs = drop 1(addElemToList (head xs) xs)

--Move second value to last
addSecondToLast xs = head xs : drop 2(addElemToList (xs !! 1) xs)

--Returns largest of 3 values
max3 x y z = if (x >= y && x >= z) then x else if (y >= z) then y else z

--Returns middle value
median3 x y z = if ((x>= y && x <= z) || (x >= z && x <= y)) then x
                else if ((y >= x && y <= z) || (y <= x && y >= z)) then y
                else z
