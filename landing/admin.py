from django.contrib import admin
from .models import *


class HeadTagAdmin(admin.ModelAdmin):
    list_display = (
        'name', 'og_url', 'og_type', 'og_title', 'og_description',
        'og_image', 'og_site_name', 'description', 'author',
        'keywords', 'title', 'created_date'
    )
    list_display_links = ['name']
    list_per_page = 20
    ordering = ['created_date']


class SliderInline(admin.StackedInline):
    model = Slider


class SliderAdmin(admin.ModelAdmin):
    list_display = (
        'name', 'slider_foto', 'slider_title_1', 'slider_title_2', 'slider_title_3', 'slider_link', 'slider_link_text',
        'header',
        'created_date')
    fields = ('name', 'slider_foto', ('slider_title_1', 'slider_title_2', 'slider_title_3'),
              ('slider_link', 'slider_link_text'), 'header', 'created_date')
    list_display_links = ['name']
    list_per_page = 20
    ordering = ['created_date']


class HeaderAdmin(admin.ModelAdmin):
    list_display = ('name', 'logo', 'created_date')
    fields = (('name', 'logo'), 'created_date')
    list_display_links = ['name']
    list_per_page = 20
    ordering = ['created_date']
    inlines = [
        SliderInline,
    ]


class SocialAdmin(admin.ModelAdmin):
    list_display = ('social_network_name', 'social_network_link', 'created_date')
    list_display_links = ['social_network_name']
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


class ItemServiceInline(admin.StackedInline):
    model = ItemService


class ItemServiceAdmin(admin.ModelAdmin):
    list_display = ('title', 'text', 'link', 'text_link', 'class_icon', 'service', 'created_date')
    fields = (('title', 'class_icon'), 'text', ('link', 'text_link'), 'created_date', 'service')
    list_display_links = ['title']
    list_per_page = 20
    ordering = ['created_date']


class ServiceAdmin(admin.ModelAdmin):
    list_display = ('title_1', 'title_2', 'text', 'created_date')
    list_display_links = ['title_1']
    list_per_page = 20
    ordering = ['created_date']
    inlines = [
        ItemServiceInline,
    ]


class FacaParteAdmin(admin.ModelAdmin):
    list_display = (
        'title_1', 'title_2', 'text', 'link_1', 'text_link_1', 'link_2', 'text_link_2', 'background_image',
        'created_date')
    list_display_links = ['title_1']
    list_per_page = 20
    ordering = ['created_date']


class ItemTeamInline(admin.StackedInline):
    model = ItemTeam


class ItemTeamAdmin(admin.ModelAdmin):
    list_display = ('name', 'position', 'instagram_link', 'linkedin_link', 'photo', 'team', 'created_date')
    fields = (('name', 'photo'), 'position', 'instagram_link', 'linkedin_link', 'team', 'created_date')
    list_display_links = ['name']
    list_per_page = 20
    ordering = ['created_date']


class TeamAdmin(admin.ModelAdmin):
    list_display = ('title', 'text', 'created_date')
    list_display_links = ['title']
    list_per_page = 20
    ordering = ['created_date']
    inlines = [
        ItemTeamInline,
    ]


class ItemPartnerInline(admin.StackedInline):
    model = ItemPartner


class ItemPartnerAdmin(admin.ModelAdmin):
    list_display = ('name', 'logo', 'partner', 'created_date')
    list_display_links = ['name']
    list_per_page = 20
    ordering = ['created_date']


class PartnerAdmin(admin.ModelAdmin):
    list_display = ('title', 'text', 'created_date')
    list_display_links = ['title']
    list_per_page = 20
    ordering = ['created_date']
    inlines = [
        ItemPartnerInline,
    ]


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
admin.site.register(ItemService, ItemServiceAdmin)
admin.site.register(Service, ServiceAdmin)
admin.site.register(FacaParte, FacaParteAdmin)
admin.site.register(Team, TeamAdmin)
admin.site.register(ItemTeam, ItemTeamAdmin)
admin.site.register(Partner, PartnerAdmin)
admin.site.register(ItemPartner, ItemPartnerAdmin)
admin.site.register(Footer, FooterAdmin)
