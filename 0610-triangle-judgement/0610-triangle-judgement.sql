# Write your MySQL query statement below
select x, y, z, 
    case when abs(x-y) < z and z < x+y then 'Yes' 
    else 'No' end triangle
from Triangle