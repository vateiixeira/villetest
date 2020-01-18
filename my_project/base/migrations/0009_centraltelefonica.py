# Generated by Django 2.2.7 on 2020-01-14 21:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
        ('base', '0008_auto_20200114_1751'),
    ]

    operations = [
        migrations.CreateModel(
            name='CentralTelefonica',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('modelo', models.CharField(max_length=50)),
                ('end_ip', models.CharField(max_length=20)),
                ('qtd_ramais', models.IntegerField()),
                ('qtd_ramais_utilizados', models.IntegerField()),
                ('dt_ult_preventiva', models.DateField()),
                ('obs', models.CharField(max_length=400, null=True)),
                ('filial', models.ForeignKey(on_delete='CASCADE', to='core.Lojas')),
            ],
        ),
    ]