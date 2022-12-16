from django.shortcuts import render
from .models import *
from datetime import date


def index(request):
    tags = HeadTag.objects.first()
    header = Header.objects.first()
    sliders = Slider.objects.all()
    socials = Social.objects.all()
    nmvv = NMVV.objects.first()
    stats = Statistic.objects.all()
    services = Service.objects.all()
    about_services = AboutService.objects.first()
    faca_parte = FacaParte.objects.first()
    about_team = AboutTeam.objects.first()
    team = Team.objects.all()
    about_partner = AboutPartner.objects.first()
    partners = Partner.objects.all()
    footer = Footer.objects.first()
    # social_networks = {}
    # for it in socials:
    #     social_networks.update({it.social_network_name: it.social_network_link})
    # del socials

    # socials = ShareOn.objects.all()
    # share_on = {}
    # for it in socials:
    #     share_on.update({it.social_network_name: it.social_network_link})
    # del socials
    #
    # about = About.objects.order_by('created_date')[0]
    #
    # projects = Project.objects.order_by('created_date')
    #
    current_year = date.today().year

    return render(request, 'landing/base.html', locals())
