# Generated by Django 2.2.7 on 2020-01-14 04:04

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('core', '0001_initial'),
        ('estoque', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Compras',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('num_pedido', models.IntegerField(blank=True, null=True, verbose_name='Numero pedido')),
                ('dt_vencimento', models.DateField(blank=True, null=True, verbose_name='Data Vencimento')),
                ('obs', models.CharField(blank=True, max_length=455, null=True, verbose_name='Observações')),
                ('create_at', models.DateTimeField(auto_now_add=True, verbose_name='Criado em')),
                ('updated_at', models.DateTimeField(auto_now=True, verbose_name='Atualizado em')),
                ('equipamento', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='estoque.Equipamento')),
                ('filial', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.Lojas')),
                ('fornecedor', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.Fornecedor')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
