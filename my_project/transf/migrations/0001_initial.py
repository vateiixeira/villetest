# Generated by Django 2.2.7 on 2020-01-14 04:04

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.db.models.manager


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('core', '0001_initial'),
        ('estoque', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Transferencia',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('obs', models.CharField(max_length=300, verbose_name='Observações')),
                ('qtd', models.IntegerField(verbose_name='Quantidade')),
                ('create_at', models.DateTimeField(auto_now_add=True, verbose_name='Criado em')),
                ('updated_at', models.DateTimeField(auto_now=True, verbose_name='Atualizado em')),
                ('destino', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='transf_destino', to='core.Lojas')),
                ('equipamento', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='estoque.Equipamento')),
                ('user', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Transferência',
                'verbose_name_plural': 'Transferências',
                'ordering': ['-create_at'],
            },
            managers=[
                ('object', django.db.models.manager.Manager()),
            ],
        ),
    ]
