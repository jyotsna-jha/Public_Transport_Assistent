# Generated by Django 4.0 on 2024-02-02 06:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('RoutePlot_APP', '0001_initial'),
        ('Hardware_APP', '0005_delete_deviceroutestationinfo'),
    ]

    operations = [
        migrations.AlterField(
            model_name='deviceid',
            name='route_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='device_id', to='RoutePlot_APP.routeinfo'),
        ),
    ]