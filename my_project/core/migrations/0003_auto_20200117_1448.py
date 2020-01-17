# Generated by Django 2.2.7 on 2020-01-17 14:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0002_profile_grupo'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='profile',
            options={'verbose_name': 'Profile', 'verbose_name_plural': 'Profiles'},
        ),
        migrations.AlterField(
            model_name='profile',
            name='grupo',
            field=models.CharField(choices=[('MONTES CLAROS', 'MONTES CLAROS'), ('BH', 'BH'), ('GERAL', 'GERAL')], default='BH', max_length=20, verbose_name='Area de atuacao'),
        ),
    ]
