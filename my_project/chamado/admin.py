from django.contrib import admin
from .models import *

class ChamadoAdmin(admin.ModelAdmin):
    list_display = ['chamado', 'modelo', 'loja', 'status', 'create_at', 'dt_finalizado']
    list_filter = ['create_at']


admin.site.register(Chamado, ChamadoAdmin)
