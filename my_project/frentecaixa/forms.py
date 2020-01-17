from django import forms
from my_project.estoque.models import Equipamento


CEANORTE= (
    ("PEDRO"),
    ("RAISSA"),
    ("JOSUÉ"),
    )

class CeanorteForm(forms.Form):
    pessoa = forms.ChoiceField(choices=CEANORTE, required=True, label="", initial='', widget=forms.Select())


CAIXAS=(
        ("CAIXA-01", "CAIXA-01"),
        ("CAIXA-02", "CAIXA-02"),
        ("CAIXA-03", "CAIXA-03"),
        ("CAIXA-04", "CAIXA-04"),
        ("CAIXA-05", "CAIXA-05"),
        ("CAIXA-06", "CAIXA-06"),
        ("CAIXA-07", "CAIXA-07"),
        ("CAIXA-08", "CAIXA-08"),
        ("CAIXA-09", "CAIXA-09"),
        ("CAIXA-10", "CAIXA-10"),
        ("CAIXA-11", "CAIXA-11"),
        ("CAIXA-12", "CAIXA-12"),
        ("CAIXA-13", "CAIXA-13"),
        ("CAIXA-14", "CAIXA-14"),
        ("CAIXA-15", "CAIXA-15"),
        ("CAIXA-16", "CAIXA-16"),
        ("CAIXA-17", "CAIXA-17"),
        ("CAIXA-18", "CAIXA-18"),
        ("CAIXA-19", "CAIXA-19"),
        ("CAIXA-20", "CAIXA-20"),
        ("CAIXA-21", "CAIXA-21"),
        ("CAIXA-22", "CAIXA-22"),
        ("CAIXA-23", "CAIXA-23"),
        ("CAIXA-24", "CAIXA-24"),
        ("CAIXA-25", "CAIXA-25"),
        ("CAIXA-26", "CAIXA-26"),
        ("CAIXA-27", "CAIXA-27"),
        ("CAIXA-28", "CAIXA-28"),
        ("CAIXA-29", "CAIXA-29"),
        ("CAIXA-30", "CAIXA-30"),
        ("CAIXA-31", "CAIXA-31"),
        ("CAIXA-32", "CAIXA-32"),
        ("CAIXA-33", "CAIXA-33"),
        ("CAIXA-34", "CAIXA-34"),
        ("CAIXA-35", "CAIXA-35"),
        ("CAIXA-36", "CAIXA-36"),
        ("CAIXA-37", "CAIXA-37"),
        ("CAIXA-38", "CAIXA-38"),
        ("CAIXA-39", "CAIXA-39"),
        ("CAIXA-40", "CAIXA-40"),
        ("CAIXA-41", "CAIXA-41"),
        ("CAIXA-42", "CAIXA-42"),
        ("CAIXA-43", "CAIXA-43"),
        ("PITSTOP", "PITSTOP"),
            )


class CaixaForm(forms.Form):
    caixa = forms.ChoiceField(choices=CAIXAS, required=True, label="", initial='---')


    CAIXAS2 = (
    ("CAIXA 01"),
    ("CAIXA 02"),
    ("CAIXA 03"),
    ("CAIXA 04"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("CAIXA 01"),
    ("PITSTOP"),
)