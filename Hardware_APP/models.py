from django.db import models
from RoutePlot_APP.models import RouteInfo, StationInfo

# Create your models here.
 
class DeviceID(models.Model):
    route_id = models.ForeignKey(RouteInfo, on_delete=models.CASCADE, related_name='device_id')
    device_id = models.IntegerField()
    device_name = models.CharField(max_length=255)

    def __str__(self):
        return f"Device Name: {self.device_name} --> DeviceID {self.device_id} --> RouteID: {self.route_id}"
    
# class DeviceRouteStationInfo(models.Model):
#     route_information = models.ForeignKey(RouteInfo, on_delete=models.CASCADE, related_name='route_ko_id')
#     station_information = models.ForeignKey(StationInfo, on_delete=models.CASCADE, related_name='station_ko_id')
#     device_information = models.ForeignKey(DeviceID, on_delete=models.CASCADE, related_name='device_ko_id')
    
#     def __str__(self):
#         return f'''RouteID: {self.route_information.route_id} --> 
#                    StationID: {self.station_information.station_id} --> 
#                    DeviceID: {self.device_information.device_id}-->
#                    DeviceName: {self.device_information.device_name}-->
#                    '''

class RealTimeUpdate(models.Model):
    current_device_id = models.ForeignKey(DeviceID, on_delete =models.CASCADE, related_name="current_location")
    current_latitude = models.FloatField()
    current_longitude = models.FloatField()
    current_timestamp = models.DateTimeField(auto_now = True)
    

    def __str__(self):
        return f"DeviceID: {self.current_device_id} --> Latitude: {self.current_latitude} --> Longitude: {self.current_longitude} --> Timestamp: {self.current_timestamp}"
    


class BackupGPSData(models.Model):
    backup_device_id = models.ForeignKey(DeviceID, on_delete =models.CASCADE, related_name="backup_location")
    backup_latitude = models.FloatField()
    backup_longitude = models.FloatField()
    backup_timestamp = models.DateTimeField(auto_now_add = True)

    def __str__(self):
        return f"DeviceID: {self.backup_device_id} --> Latitude: {self.backup_latitude} --> Longitude: {self.backup_longitude} --> Timestamp: {self.backup_timestamp}"
    




















