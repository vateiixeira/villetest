# Generated by Django 2.2.7 on 2020-01-14 19:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0003_testdatainauguracao'),
    ]

    operations = [
        migrations.AlterField(
            model_name='datainauguracao',
            name='inauguracao',
            field=models.CharField(max_length=20),
        ),
        migrations.AlterField(
            model_name='testdatainauguracao',
            name='inauguracao',
            field=models.CharField(max_length=20),
        ),
    ]
