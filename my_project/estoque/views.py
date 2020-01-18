from django.shortcuts import render,redirect
from my_project.estoque.models import Equipamento
from my_project.estoque.forms import EquipamentoForm
from django.views.generic import CreateView, UpdateView, DeleteView, ListView
from django.contrib.auth.decorators import login_required
from django.urls import reverse_lazy
from . import import_produtos
import os
from my_project.core.utils import is_staff
from django.contrib.auth.models import User
from .forms import *
from my_project.core.utils import render_to_pdf, Render
from datetime import datetime
from django.contrib import messages
from django.views.generic import View
from .models import *
from my_project.core.utils import is_staff


@login_required
def cadastro(request):
    template= 'equipamento.html' 
    usuario = request.user
    form = EquipamentoForm(request.POST or None)
    if form.is_valid() and request.method =='POST':
        form.user_id = usuario
        form.save()
        return redirect('core:homepage')
    else:
        print('FUDEUS')
    context = {
        'form': form
    }
    return render(request,template,context)


def lista_estoque(request):
    template='lista_estoque.html'
    estoque = Equipamento.object.all()
    user = request.user
    staff = is_staff(user)
    context = {
        'estoque':estoque,
        'staff': staff,
    }
    return render(request,template,context)


def lista_backup(request):
    template='lista_estoque_backup.html'
    estoque = Equipamento.object.filter(backup=True)
    user = request.user
    staff = is_staff(user)
    context = {
        'estoque':estoque,
        'staff': staff,
    }
    return render(request,template,context)


class ListaEstoqueQtd(ListView):
    template_name='lista_estoque_qtd.html'
    model = Equipamento
    context_object_name = 'estoque'


class UpdateEstoque(UpdateView):
    template_name ='update_estoque.html'
    model = Equipamento
    fields = ['name', 'modelo', 'serial', 'patrimonio', 'backup', 'setor', 'loja']
    context_object_name = 'estoque'
    success_url = reverse_lazy('estoque:lista_estoque')

class DeleteEstoque(DeleteView):
    template_name = 'delete_estoque.html'
    model = Equipamento
    success_url = reverse_lazy('estoque:lista_estoque')


def importar(request):
    template = 'importar.html'
    data = import_produtos.csv_to_list(os.path.join(os.path.dirname(os.path.dirname(__file__)),'temp/equip_moc.csv'))    
    return render(request,template)

#INICIO PDFS

#RELATORIO CHAMADO POR FILIAL

def estoque_por_filial(request):
    template = 'view_filial.html'
    dtinicial = dtfinal = 0
    if request.method == 'POST':
        form = ViewFilialForm(request.POST or None) 
        if form.is_valid():
            idorigem = request.POST.get('filial')
            return redirect('estoque:pdffilial',idorigem=idorigem) 
        else: 
            messages.error(request, "Formulário invalido!")  
            form = ViewFilialForm() 
    else: 
        form = ViewFilialForm()
    context = {
        'staff': is_staff(request.user),
        'form': form
    }    
    return render(request,template, context)

class PdfPorFilial(View):
    def get(self, request, idorigem):
        titulo = 'Lista de estoque completo'
        dtgeracao = datetime.now()
        origem = Lojas.object.get(id=idorigem)
        estoque = Equipamento.object.filter(loja=idorigem) 
        loja = Lojas.object.get(id=idorigem)

        if not estoque.exists():
            return redirect('core:erro_relatorio')
        params = {
            'staff': is_staff(request.user),
            'estoque': estoque,
            'dtgeracao': dtgeracao,
            'loja': loja,
            'origem': origem,
            'titulo': titulo,
        }

        return Render.render('pdf_filial.html', params)

# pdf modelo

def estoque_por_modelo(request):
    template = 'view_modelo.html'
    if request.method == 'POST':
        form = ViewModeloForm(request.POST or None) 
        if form.is_valid():
            idorigem = request.POST.get('filial')
            modelo = request.POST.get('modelo')
            return redirect('estoque:pdfmodelofilial',modelo=modelo,idorigem=idorigem) 
        else: 
            messages.error(request, "Formulário invalido!")  
            form = ViewModeloForm() 
    else: 
        form = ViewModeloForm()
    context = {
        'staff': is_staff(request.user),
        'form': form
    }    
    return render(request,template, context)

class PdfPorModelo(View):
    def get(self, request, modelo, idorigem):
        titulo = 'Estoque por modelo e filial'
        dtgeracao = datetime.now()
        origem = Lojas.object.get(id=idorigem)
        estoque = Equipamento.object.filter(modelo=modelo, loja=idorigem)
        params = {
            'staff': is_staff(request.user),
            'titulo': titulo,
            'estoque': estoque,
            'dtgeracao': dtgeracao,
            'origem': origem,
        }
        return Render.render('pdf_modelo_filial.html', params)