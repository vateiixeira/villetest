# Generated by Django 2.2.7 on 2020-02-27 19:34

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.db.models.manager


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Atendimento',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('problema', models.CharField(max_length=455, verbose_name='Problema')),
                ('solucao', models.CharField(blank=True, max_length=455, verbose_name='Resolução')),
                ('status', models.CharField(choices=[('p', 'PENDENTE'), ('r', 'RESOLVIDO'), ('c', 'COMPRADO'), ('o', 'RECOLHIDO')], default='p', max_length=1)),
                ('setor', models.CharField(choices=[('FRENTE CAIXA', 'Frente de caixa'), ('RECEPCAO', 'Recepção'), ('SALAO', 'Salao'), ('PERECIVEIS', 'Perecíveis'), ('GERENCIA', 'Gerência'), ('TESOURARIA', 'Tesouraria'), ('SEGURANCA', 'Segurança'), ('RM', 'Rm'), ('RM FISCAL', 'Rm Fiscal'), ('CONTABILIDADE', 'Contabilidade'), ('RH', 'Rh'), ('ACOUGUE', 'Açougue'), ('TREINAMENTO', 'Treinamento'), ('SOE', 'Soe'), ('ALMOXARIFADO', 'Almoxarifado'), ('CPD', 'CPD'), ('CALLCENTER', 'Callcenter'), ('COMERCIAL', 'Comercial'), ('PRECIFICACAO', 'Precificação'), ('PADARIA', 'Padaria'), ('MANUTENCAO', 'Manutenção'), ('HORTIFRUTI', 'Hortifruti'), ('CREDITO', 'Crédito'), ('ENCARREGADOS', 'Encarregados'), ('ALMOXARIFADO', 'Almoxarifado'), ('RESTAURANTE', 'Restaurante'), ('SND', 'SND'), ('GERAL', 'Geral'), ('POSTO-PISTA', 'Posto-Pista'), ('POSTO-ADM', 'Posto-Adm'), ('Logistica', 'Logistica')], max_length=50, verbose_name='Setor')),
                ('solicitante', models.CharField(max_length=50, verbose_name='Solicitante')),
                ('create_at', models.DateTimeField(auto_now_add=True, verbose_name='Criado em')),
                ('updated_at', models.DateTimeField(auto_now=True, verbose_name='Atualizado em')),
                ('loja', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.Lojas', verbose_name='Filial')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('user_finaliza', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='finalizado_user', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Atendimento',
                'verbose_name_plural': 'Atendimentos',
            },
            managers=[
                ('object', django.db.models.manager.Manager()),
            ],
        ),
    ]
