# Using web request and extra parameters
Invoke-WebRequest -Method Get -URI http://trainingxyz.com/api/posts/all | Select-Object -ExpandProperty Content | ConvertFrom-Json | Format-Table









# Using rest method (simpler)
Invoke-RestMethod -Method Get -URI http://trainingxyz.com/api/posts/all | Format-Table
Invoke-RestMethod -Method Get -URI http://trainingxyz.com/api/users/all | Format-Table






# Pull posts from an individual user
Invoke-RestMethod -Method Get -URI http://trainingxyz.com/api/posts/all?user_id=2 | Format-Table





<# These are not cmdlets, but alternate URI's that you can test in the 
Invoke-WestMethod cmdlets above #>
USERS
http://trainingxyz.com/api/users/all
http://trainingxyz.com/api/users/all/qty/30/order/title
http://trainingxyz.com/api/users/2
http://trainingxyz.com/api/users/search_term 

POSTS
http://trainingxyz.com/api/posts/all
http://trainingxyz.com/api/posts/all/qty/30/order/title
http://trainingxyz.com/api/posts/3
http://trainingxyz.com/api/posts/search_term

ALBUMS/PHOTOS
http://trainingxyz.com/api/albums/all
http://trainingxyz.com/api/albums/all/qty/30/order/title
http://trainingxyz.com/api/albums/3
http://trainingxyz.com/api/albums/search_term
