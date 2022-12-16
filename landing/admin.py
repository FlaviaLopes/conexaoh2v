from django.contrib import admin
from .models import *


class HeadTagAdmin(admin.ModelAdmin):
    list_display = (
        'og_url', 'og_type', 'og_title', 'og_description',
        'og_image', 'og_site_name', 'description', 'author',
        'keywords', 'title', 'created_date'
    )
    list_display_links = ['title']
    list_per_page = 20
    ordering = ['created_date']


class HeaderAdmin(admin.ModelAdmin):
    list_display = ('logo', 'created_date')
    list_display_links = ['logo']
    list_per_page = 20
    ordering = ['created_date']


class SocialAdmin(admin.ModelAdmin):
    list_display = ('social_network_name', 'social_network_link', 'created_date')
    list_display_links = ['social_network_name']
    list_per_page = 20
    ordering = ['created_date']


class SliderAdmin(admin.ModelAdmin):
    list_display = (
        'slider_foto', 'slider_title_1', 'slider_title_2', 'slider_title_3', 'slider_link_text', 'created_date')
    list_display_links = ['slider_foto']
    list_per_page = 20
    ordering = ['created_date']


class NMVVAdmin(admin.ModelAdmin):
    list_display = (
        'business_title_1', 'business_title_2', 'business_text', 'mission_title', 'mission_text', 'mission_link',
        'mission_text_link', 'vision_title', 'vision_text', 'vision_link', 'vision_text_link', 'values_title',
        'values_text', 'values_link', 'values_text_link', 'created_date'
    )
    list_display_links = ['business_title_1']
    list_per_page = 20
    ordering = ['created_date']


class StatisticAdmin(admin.ModelAdmin):
    list_display = ('title', 'value', 'unit', 'created_date')
    list_display_links = ['title']
    list_per_page = 20
    ordering = ['created_date']


class ServiceAdmin(admin.ModelAdmin):
    list_display = ('title', 'class_icon', 'text', 'link', 'text_link', 'created_date')
    list_display_links = ['title']
    list_per_page = 20
    ordering = ['created_date']


class AboutServiceAdmin(admin.ModelAdmin):
    list_display = ('title_1', 'title_2', 'text', 'created_date')
    list_display_links = ['title_1']
    list_per_page = 20
    ordering = ['created_date']


class FacaParteAdmin(admin.ModelAdmin):
    list_display = ('title_1', 'title_2', 'text', 'link_1', 'text_link_1', 'link_2', 'text_link_2', 'created_date')
    list_display_links = ['title_1']
    list_per_page = 20
    ordering = ['created_date']


class AboutTeamAdmin(admin.ModelAdmin):
    list_display = ('title', 'text', 'created_date')
    list_display_links = ['title']
    list_per_page = 20
    ordering = ['created_date']


class TeamAdmin(admin.ModelAdmin):
    list_display = ('name', 'position', 'instagram_link', 'linkedin_link', 'photo', 'created_date')
    list_display_links = ['name']
    list_per_page = 20
    ordering = ['created_date']


class AboutPartnerAdmin(admin.ModelAdmin):
    list_display = ('title', 'text', 'created_date')
    list_display_links = ['title']
    list_per_page = 20
    ordering = ['created_date']


class PartnerAdmin(admin.ModelAdmin):
    list_display = ('name', 'logo', 'created_date')
    list_display_links = ['name']
    list_per_page = 20
    ordering = ['created_date']


class FooterAdmin(admin.ModelAdmin):
    list_display = ('postal_address', 'email', 'phone', 'logo', 'created_date')
    list_display_links = ['postal_address']
    list_per_page = 20
    ordering = ['created_date']


admin.site.register(HeadTag, HeadTagAdmin)
admin.site.register(Header, HeaderAdmin)
admin.site.register(Social, SocialAdmin)
admin.site.register(Slider, SliderAdmin)
admin.site.register(NMVV, NMVVAdmin)
admin.site.register(Statistic, StatisticAdmin)
admin.site.register(Service, ServiceAdmin)
admin.site.register(AboutService, AboutServiceAdmin)
admin.site.register(FacaParte, FacaParteAdmin)
admin.site.register(AboutTeam, AboutTeamAdmin)
admin.site.register(Team, TeamAdmin)
admin.site.register(AboutPartner, AboutPartnerAdmin)
admin.site.register(Partner, PartnerAdmin)
admin.site.register(Footer, FooterAdmin)
