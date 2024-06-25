from django.shortcuts import render
from berita.models import Artikel, Kategori

def Home(request):
    template_name = "halaman/index.html"
    kategori = request.GET.get('kategori')
    if kategori == None:
        print("ALL")
        data_artikel = Artikel.objects.all()
        menu_aktif = "ALL"
    else:
        print("Bukan ALL") 
        try:
            pass
            get_kategori = Kategori.objects.get(nama=kategori)
            data_artikel = Artikel.objects.filter(kategori=get_kategori)
            menu_aktif = kategori
        except:
            pass
            menu_aktif = "ALL"
            data_artikel=[]




    data_kategori = Kategori.objects.all()
    context = {
        'title':'selamat datang di halaman Home',
        'data_artikel':data_artikel,
        'data_kategori':data_kategori,
        'menu_aktif':menu_aktif
    }

    return render(request, template_name, context)

def about(request):
    template_name = "halaman/about.html"
    context = {
        'title':'selamat datang di halaman About',
        'umur':20,
    }

    return render(request, template_name, context)

def contact(request):
    template_name = "halaman/contact.html"
    context = {
        'title':'selamat datang di halaman contact',
        'umur':20,
    }

    return render(request, template_name, context)



def detail_artikel(request, slug):
    template_name= 'halaman/detail_artikel.html'
    artikel = Artikel.objects.get(slug=slug)
    print(artikel)
    context = {
        'title': artikel.judul,
        'artikel':artikel

    }

    return render(request, template_name, context)
