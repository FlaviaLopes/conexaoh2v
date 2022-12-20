from django.db import models
from django.utils import timezone


class HeadTag(models.Model):
    name = models.CharField(max_length=50)
    title = models.CharField(max_length=20)
    og_url = models.CharField(max_length=200, default='https://flavialopes.dev')
    og_type = models.CharField(max_length=200, default='website')
    og_title = models.CharField(max_length=200)
    og_description = models.CharField(max_length=200)
    og_image = models.ImageField(default='icone.ico')
    og_site_name = models.CharField(max_length=20)
    description = models.CharField(max_length=200)
    author = models.CharField(max_length=50)
    keywords = models.CharField(max_length=200)

    created_date = models.DateTimeField(default=timezone.now)

    def create(self):
        self.created_date = timezone.now
        self.save()

    def __str__(self):
        return self.title


class Header(models.Model):
    name = models.CharField(max_length=50)
    logo = models.ImageField(default='logo.png')
    created_date = models.DateTimeField(default=timezone.now)

    def create(self):
        self.created_date = timezone.now
        self.save()

    def __str__(self):
        return self.name


class Slider(models.Model):
    name = models.CharField(max_length=50)
    slider_foto = models.ImageField(default='slider-bg-1-1.jpg')
    slider_title_1 = models.CharField(max_length=50)
    slider_title_2 = models.CharField(max_length=50)
    slider_title_3 = models.CharField(max_length=50)
    slider_link = models.CharField(max_length=200, blank=True)
    slider_link_text = models.CharField(max_length=50, blank=True)
    header = models.ForeignKey(Header, null=True, on_delete=models.CASCADE, related_name='slides')

    created_date = models.DateTimeField(default=timezone.now)

    def create(self):
        self.created_date = timezone.now
        self.save()

    def __str__(self):
        return self.name


class Social(models.Model):
    social_network_name = models.CharField(max_length=30)
    social_network_link = models.CharField(max_length=200)
    created_date = models.DateTimeField(default=timezone.now)

    def create(self):
        self.created_date = timezone.now
        self.save()

    def __str__(self):
        return self.social_network_name


class NMVV(models.Model):
    business_title_1 = models.CharField(default='O futuro é verde', max_length=50)
    business_title_2 = models.CharField(default='Nosso Propósito', max_length=50)
    business_text = models.TextField()

    mission_title = models.CharField(default='Missão', max_length=50)
    mission_text = models.TextField()
    mission_link = models.CharField(max_length=200, blank=True)
    mission_text_link = models.CharField(max_length=50, blank=True)

    vision_title = models.CharField(default='Visão', max_length=50)
    vision_text = models.TextField()
    vision_link = models.CharField(max_length=200, blank=True)
    vision_text_link = models.CharField(max_length=50, blank=True)

    values_title = models.CharField(default='Valores', max_length=50)
    values_text = models.TextField()
    values_link = models.CharField(max_length=200, blank=True)
    values_text_link = models.CharField(max_length=50, blank=True)

    created_date = models.DateTimeField(default=timezone.now)

    def create(self):
        self.created_date = timezone.now
        self.save()

    def __str__(self):
        return self.business_title_2


# TODO: formatar campos numéricos  para imprimir corretamente na view
# não tá imprimindo a vírgula.
class Statistic(models.Model):
    title = models.CharField(max_length=50)
    value = models.FloatField()
    unit = models.CharField(max_length=2, default='', blank=True)

    created_date = models.DateTimeField(default=timezone.now)

    def create(self):
        self.created_date = timezone.now
        self.save()

    def __str__(self):
        return self.title


class Service(models.Model):
    title_1 = models.CharField(default='Serviços', max_length=50)
    title_2 = models.CharField(default='Onde Atuamos', max_length=50)
    text = models.TextField()

    created_date = models.DateTimeField(default=timezone.now)

    def create(self):
        self.created_date = timezone.now
        self.save()

    def __str__(self):
        return self.title_2


class ItemService(models.Model):
    title = models.CharField(default='serviço', max_length=50)
    text = models.TextField()
    link = models.CharField(max_length=200, blank=True)
    text_link = models.CharField(max_length=50, blank=True)
    class_icon = models.CharField(default='flaticon-connection', max_length=50)
    service = models.ForeignKey(Service, null=True, on_delete=models.CASCADE, related_name='services')

    created_date = models.DateTimeField(default=timezone.now)

    def create(self):
        self.created_date = timezone.now
        self.save()

    def __str__(self):
        return self.title


class FacaParte(models.Model):
    title_1 = models.CharField(default='O Futuro É Verde', max_length=50)
    title_2 = models.CharField(default='Faça Parte Conosco', max_length=50)
    text = models.TextField()
    link_1 = models.CharField(max_length=200, blank=True)
    text_link_1 = models.CharField(max_length=50, blank=True)
    link_2 = models.CharField(max_length=200, blank=True)
    text_link_2 = models.CharField(max_length=50, blank=True)
    background_image = models.ImageField(default='team-text-bg-1.jpg')

    created_date = models.DateTimeField(default=timezone.now)

    def create(self):
        self.created_date = timezone.now
        self.save()

    def __str__(self):
        return self.title_2


class Team(models.Model):
    title = models.CharField(default='Equipe', max_length=100)
    text = models.TextField(default='text')

    created_date = models.DateTimeField(default=timezone.now)

    def create(self):
        self.created_date = timezone.now
        self.save()

    def __str__(self):
        return self.title


class ItemTeam(models.Model):
    name = models.CharField(max_length=50)
    position = models.CharField(max_length=70)
    instagram_link = models.CharField(max_length=50, default='https://instagram.com/', blank=True)
    linkedin_link = models.CharField(max_length=50, default='https://linkedin.com/in/', blank=True)
    photo = models.ImageField(default='team-img-2.jpg')
    team = models.ForeignKey(Team, null=True, on_delete=models.CASCADE, related_name='team')

    created_date = models.DateTimeField(default=timezone.now)

    def create(self):
        self.created_date = timezone.now
        self.save()

    def __str__(self):
        return self.name


class Partner(models.Model):
    title = models.CharField(default='Parceiros', max_length=50)
    text = models.TextField(default='text')

    created_date = models.DateTimeField(default=timezone.now)

    def create(self):
        self.created_date = timezone.now
        self.save()

    def __str__(self):
        return self.title


class ItemPartner(models.Model):
    name = models.CharField(default='Parceiro', max_length=50)
    logo = models.ImageField(default='client-img-3.png')

    partner = models.ForeignKey(Partner, null=True, on_delete=models.CASCADE, related_name='partners')
    created_date = models.DateTimeField(default=timezone.now)

    def create(self):
        self.created_date = timezone.now
        self.save()

    def __str__(self):
        return self.name


class Footer(models.Model):
    postal_address = models.CharField(default='Endereço', max_length=100)
    email = models.CharField(default='email@email.com', max_length=100)
    phone = models.CharField(max_length=20)
    logo = models.ImageField(default='footer-logo.png')

    created_date = models.DateTimeField(default=timezone.now)

    def create(self):
        self.created_date = timezone.now
        self.save()

    def __str__(self):
        return self.postal_address
