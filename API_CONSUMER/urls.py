from django.urls import path
from .views import  Post_GPS_Location, Get_Routes

urlpatterns = [
    path('', Get_Routes, name="map"),
    path('post/<int:deviceid>/<str:latitude>/<str:longitude>/', Post_GPS_Location, name="gpsdata")
    # path('home/', home, name="home")
    
]


 

 
