from django.urls import path
from .views import Get_Stations, Post_GPS_Location, home

urlpatterns = [
    path('', Get_Stations, name="map"),
    path('post/<int:deviceid>/<str:latitude>/<str:longitude>/', Post_GPS_Location, name="gpsdata"),
    path('home/', home, name="home")
]


 

 
