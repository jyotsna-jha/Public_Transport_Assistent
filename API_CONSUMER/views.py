import requests
from django.shortcuts import render
from django.http import JsonResponse
 
 
def Get_Stations(request):
    api_url = "http://localhost:8000/api/get-complete-stationinfo/"
    response = requests.get(api_url) # Make an HTTP request to the API

    if response.status_code == 200:
        json_data = response.json()
        stations_data = []

        for i in range(min(20, len(json_data))): # Extract latitude and longitude from the API response
            latitude = json_data[i]['station_latitude']
            longitude = json_data[i]['station_longitude']
            stations_data.append({'latitude': latitude, 'longitude': longitude})

        context = {
            "stations": stations_data
        }

    else:
        context = {
            "error_message": f"Failed to fetch data from the API. Status code: {response.status_code}"
        }
    return render(request, 'home.html', context)



def Post_GPS_Location(request, deviceid, latitude, longitude):
    latitude = float(latitude)
    longitude = float(longitude)
    api_url1 = "http://localhost:8000/api/post_realtime_gps_data/"
    api_url2 = "http://localhost:8000/api/post_to_backup_gps_data/"

    data1 = {
        'current_latitude': latitude,
        'current_longitude': longitude,
        'current_device_id': deviceid,
    }

    data2 = {
        'backup_latitude': latitude,
        'backup_longitude': longitude,
        'backup_device_id': deviceid,
    }

    try:
        response1 = requests.post(api_url1, json=data1)
        response1.raise_for_status()
        print(response1)

        response2 = requests.post(api_url2, json=data2)
        response2.raise_for_status()
        print(response2)

    except requests.exceptions.HTTPError as err:
        return JsonResponse({'error': f"HTTP error occurred: {err}"}, status=500)

    except requests.exceptions.ConnectionError as e:
        # Handle connection errors
        return JsonResponse({'error': f"Error connecting to the server: {e}"}, status=500)

    except requests.exceptions.Timeout as e:
        # Handle timeouts
        return JsonResponse({'error': f"Request timed out: {e}"}, status=500)

    except requests.exceptions.RequestException as e:
        # Handle other types of request exceptions
        return JsonResponse({'error': f"Error: {e}"}, status=500)

    # If everything is successful, return a JsonResponse
    data = {
        'backup_device_id': deviceid,
        'backup_latitude': latitude,
        'backup_longitude': longitude,
        'current_device_id': deviceid,
        'current_latitude': latitude,
        'current_longitude': longitude
    }

    return JsonResponse(data)



def home(request):
    return render(request, 'base1.html')



'''
{"my_location_name": "hanumanthan", 
"my_location_lat-long": [27.6885029, 85.3160104], 

"nearest_user_station_id": 3529, 
"nearest_user_station_english_name": "Kupandol", 
"nearest_user_station_lat-long": [27.687809242186514, 85.31633835285902], 
"nearest_dest_station_id": 1096, 

"nearest_dest_station_english_name": "Sinamangal Bus Route Point",
"nearest_dest_station_lat-long": [27.6952988, 85.3550202], 

"dest_location_name": "Tribhuvan International Airport", 
"dest_location_lat_long": [27.6939119, 85.3582197389141]
}


'''