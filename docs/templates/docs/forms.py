from crispy_forms.bootstrap import FormActions
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Layout, Fieldset, ButtonHolder, Submit, Button, Row, Column, Div, Field
from django import forms
from django.conf import settings

from docs.models import Document


class DateInput(forms.DateInput):
    input_type = 'date'
    input_format = settings.DATE_INPUT_FORMATS[0]


class CreateDocumentForm(forms.ModelForm):
    class Meta:
        model = Document
        fields = '__all__'
        widgets = {
            'doc_date': DateInput()
        }
        success_url = 'index/'

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Hide labels of hidden fields
        self.fields['slug'].label = False
        self.fields['author'].label = False

        self.helper = FormHelper(self)
        self.helper.layout = Layout(
            Fieldset(
                'Create Document...',
                Row(
                    Div(Field('title', css_id="id_title"), css_class='col-md-3'),
                    Div(Field('summary', css_id="id_summary"), css_class='col-md-9'),
                ),
                Row(
                    Div(Field('doc_date', css_id='id_doc_date'), css_class='col-md-2'),
                    Div(Field('category', css_id='id_category'), css_class='col-md-2'),
                    Div(Field('status', css_id='id_status'), css_class='col-md-2'),
                ),
                Row(
                    Column(
                        Field('dutch_text'),
                        # css_class='col-md-2'
                    ),
                    Column(
                        Field('english_text'),
                        # css_class='col-md-5'
                    ),
                ),
                Row(
                    Column(
                        Field('notes'),
                        # css_class='col-md-5'
                    ),
                ),
            ),
            Field('slug', css_id='id_slug'),
            # Field('slug', css_id='id_slug', hidden=True),
            Field('author', css_id='id_author'),
            # Field('author', css_id='id_author', hidden=True),
            FormActions(
                Submit('save', 'Save'),
                Button('cancel', 'Cancel'),
            )
        )
