# Generated by Django 2.2.7 on 2020-01-14 19:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0004_auto_20200114_1640'),
    ]

    operations = [
        migrations.AlterField(
            model_name='circuitodados',
            name='cod_filial',
            field=models.IntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='circuitodados',
            name='faixa_ip',
            field=models.IntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='circuitodados',
            name='roteador',
            field=models.CharField(max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='circuitodados',
            name='velocidade',
            field=models.CharField(max_length=10, null=True),
        ),
    ]
