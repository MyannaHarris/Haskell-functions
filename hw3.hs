--Myanna Harris
--hw3.hs

--Returns largest of 3 values
max3 x y z = if (x >= y && x >= z) then x else if (y >= z) then y else z

--Returns middle value
median3 x y z = if ((x>= y && x <= z) || (x >= z && x <= y)) then x
                else if ((y >= x && y <= z) || (y <= x && y >= z)) then y
                else z

--takes a point (a pair) and returns the corresponding quadrant  where  the  point  is  located
quadrant (x,y) = if (x >= 0 && y >= 0) then 1
                 else if (x <= 0 && y <= 0) then 3
                 else if (x <= 0 && y >= 0) then 2
                 else 4

--returns the last value of a given list
lastElem xs = head (drop ((length xs)-1) xs)

--returns the second to last value of a given list
sndLastElem xs = head (drop ((length xs)-2) xs)

--Returns true if first date comes before second date
earlierDate (m,d,y) (m2,d2,y2) = if y < y2 then True
                                 else if y == y2
                                      then
                                         if m < m2 then True
                                         else if m == m2
                                              then
                                                 if d < d2 then True
                                                 else False
                                         else False
                                 else False

--returns earliest of three dates
earliestDate (m1,d1,y1) (m2,d2,y2) (m3,d3,y3) = if earlierDate (m1,d1,y1) (m2,d2,y2) 
                                                   && earlierDate (m1,d1,y1) (m3,d3,y3)
                                                   then (m1,d1,y1)
                                                else if earlierDate (m2,d2,y2) (m1,d1,y1)
                                                   && earlierDate (m2,d2,y2) (m3,d3,y3)
                                                   then (m2,d2,y2)
                                                else (m3,d3,y3)

--Return date after a given number of days
addDays n (m,d,y) = if n > 31 then (m,d,y)
                    else
                       if m == 2
                       then
                          if (d+n) > 28
                          then (m+1,d+n-28,y)
                          else (m,d+n,y)
                       else if m == 4 || m == 6 || m == 9 || m == 11
                       then
                          if (d+n) > 30
                          then (m+1,d+n-30,y)
                          else (m,d+n,y)
                       else
                          if (d+n) > 31
                          then
                             if m == 12
                             then (1,d+n-31,y+1)
                             else (m+1,d+n-31,y)
                          else (m,d+n,y)
