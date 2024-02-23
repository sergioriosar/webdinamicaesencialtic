@extends('layouts.fronted.categorias')
@section('redes')
<div class="red">
    <div id="facebook">
        <a href="facebook" target="none" class="fab fa-facebook-f "></a>
    </div>
    <div id="instagram">
        <a href="instagram" target="none" class="fab fa-instagram"></a>
    </div>
    <div id="twiter">
        <a href="" target="none" class="fab fa-twitter-square"></a>
    </div>
    <div id="whatsaap">
        <a href="whatsapp" target="none" class="fab fa-whatsapp"></a>
    </div>
    <div id="linkedin">
        <a href="linkedin" target="none" class="fab fa-linkedin"></a>
    </div>
</div>
@endsection
@section('navbar_top')
<div class="header-top">
    <div class="container d-flex justify-content-between">
        <div class="d-inline-flex ml-auto">
            <div class="headcont">
                <i class="fas fa-2x fa-mobile-alt messenge"></i>
                +54 999 99999
            </div>
            <div class="headcont">
                <i class="fas fa-2x fa-envelope messenge"></i>
                info@esencialtic.com.ar
            </div>
        </div>
    </div>
</div>
@endsection
@section('navbar')
    <header>
    <a href="#" class="logo">
        <h2 style="color: white" class="imgtamaño">EsencialTIC</h2>
        <!--<img  class="imgtamaño" src="{{ asset('img/esencialtic.png')}}" alt="esencialtic ! Proyects">-->
    </a>
    <div class="menu-toggle" ></div>
        <nav>
            <ul>
                <li><a href="{{ url('/')}}" >INICIO</a></li>
                <li><a href="{{ url('/contact')}}">CONTÁCTENOS</a></li>
                <li><a class="active" href="{{ url('/productos')}}">PRODUCTOS</a></li>
                <li><a href="{{ url('/nosotros')}}">NOSOTROS</a></li>
            </ul>
        </nav>
        <div class="clearfix"></div>
    </header>
@endsection
@section('banner')
<div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="hero-text">
                        <h4>PAGINA <span>WEB</span></h4>
					    <br><br>
                        <h1 class="tipeo1">VARIEDAD DE PRODUCTOS</h1>
                        <h1 class="tipeo2"><span class="type"></span></h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('products')
<div class="main">
    <h1 class="title_category">Escoja una de nuestras categorías</h1>
    <hr class="style4">
    <ul class="cards">
        @foreach($categorias as $categoria)
      <li class="cards_item">
        <div class="card">
          <div class="card_image"><img  src="{{ asset('img/esencialtic.jpg')}}" height="100"></div>
          <div class="card_content">
            <h1 class="card_title">{{$categoria->name}}</h1>
            <hr>
            <p class="card_text">{{$categoria->descripcion}}</p>
            <a class="btn card_btn" href="{{ route('searchCategory' , $categoria->slug)}}">
                Productos
            </a>
          </div>
        </div>
      </li>
      @endforeach
    </ul>
  </div>
@endsection

@section('footer')
<footer class="footer">
    <div class="l-footer">
        <!--<img  class="footer_img" src="{{asset('img/esencialtic.png')}}" alt="esencialtic | Proyectos">-->
        <h2 style="color: white" class="footer_img">Esencial TIC</h2>
    <p>Esencial TIC - Tecnologias de la informacion y comunicacion
    </p>
    </div>
        <ul class="r-footer">
            <li>
            <h2>Social</h2>
                <ul class="box">
                    <li class="button_social">
                        <i class="fab mr-2 fa-facebook"></i>
                        <a href="https://www.facebook.com" target="_blank">Facebook</a>
                    </li>
                    <li class="button_social">
                        <i class="fab mr-2 fa-twitter"></i>
                        <a href="#">Twitter</a>
                    </li>
                    <li class="button_social">
                        <i class="fab mr-2 fa-instagram"></i>
                        <a href="https://www.instagram.com" target="_blank">Instagram</a>
                    </li>
                    <li class="button_social">
                        <i class="fab mr-2 fa-linkedin-in"></i>
                        <a href="https://www.linkedin.com/" target="_blank">Linkedin</a>
                    </li>
                </ul>
            </li>
            <li class="features">
            <h2>Información</h2>
            <ul class="box">
                <li><a href="#">Políticas de Privacidad</a></li>
                <li><a href="#">Trabaja con nosotros</a></li>
            </ul>
            </li>
            <li class="features">
                <h2>Procedimiento de Pagos</h2>
                <ul class="box">
                    <li><a type="button" href="#">Ver mas</a></li>
                </ul>
                </li>
        </ul>
        <div class="b-footer">
            <p>Todos los Derechos reservados by <a href="https://esencialtic.com.ar" target="_blank">©EsencialTIC-2024</a></p>
        </div>
</footer>
@endsection
