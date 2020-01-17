# Generated by Django 2.2.7 on 2020-01-14 04:04

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.db.models.manager


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('core', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Chamado',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('chamado', models.IntegerField(verbose_name='Número chamado')),
                ('modelo', models.CharField(max_length=50, verbose_name='Modelo')),
                ('serial', models.CharField(max_length=100, verbose_name='Serial')),
                ('create_at', models.DateTimeField(auto_now_add=True, verbose_name='Criado em')),
                ('updated_at', models.DateTimeField(auto_now=True, verbose_name='Atualizado em')),
                ('quantidade', models.IntegerField(default=1, verbose_name='Quantidade')),
                ('defeito', models.CharField(max_length=200, verbose_name='Defeito')),
                ('valor', models.DecimalField(blank=True, decimal_places=2, max_digits=7, verbose_name='Valor')),
                ('status', models.CharField(choices=[('p', 'PENDENTE'), ('r', 'RESOLVIDO')], default='p', max_length=1)),
                ('loja', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.Lojas')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Chamado',
                'verbose_name_plural': 'Chamados',
                'ordering': ['-create_at'],
            },
            managers=[
                ('object', django.db.models.manager.Manager()),
            ],
        ),
    ]
