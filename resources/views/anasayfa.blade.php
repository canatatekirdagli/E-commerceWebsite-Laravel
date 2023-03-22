@extends('layouts.master')
@section('title','Anasayfa')
@section('content')
    <section id="menu">
        <div class="container">
            <div class="menu-area">
                <!-- Navbar -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="navbar-collapse collapse">
                        <!-- Left nav -->
                        <ul class="nav navbar-nav">
                            <li><a href="/">Home</a></li>
                            @foreach($kategoriler as $kategori)
                                <li><a href="{{route('kategori',$kategori->slug)}}">
                                        {{$kategori->kategori_adi}}
                                        <span class="caret"></span></a>
                                </li>
                            @endforeach
                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
            </div>
        </div>
    </section>

    <div class="container">
        <div class="products">
            <div class="panel panel-theme">
                <div class="panel-heading">Öne Çıkan Ürünler</div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-3 product">
                            <a href="#"><img src="http://lorempixel.com/400/400/food/1"></a>
                            <p><a href="#">Ürün adı</a></p>
                            <p class="price">129 ₺</p>
                        </div>
                        <div class="col-md-3 product">
                            <a href="#"><img src="http://lorempixel.com/400/400/food/2"></a>
                            <p><a href="#">Ürün adı</a></p>
                            <p class="price">129 ₺</p>
                        </div>
                        <div class="col-md-3 product">
                            <a href="#"><img src="http://lorempixel.com/400/400/food/3"></a>
                            <p><a href="#">Ürün adı</a></p>
                            <p class="price">129 ₺</p>
                        </div>
                        <div class="col-md-3 product">
                            <a href="#"><img src="http://lorempixel.com/400/400/food/4"></a>
                            <p><a href="#">Ürün adı</a></p>
                            <p class="price">129 ₺</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="products">
            <div class="panel panel-theme">
                <div class="panel-heading">Çok Satan Ürünler</div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-3 product">
                            <a href="#"><img src="http://lorempixel.com/400/400/food/1"></a>
                            <p><a href="#">Ürün adı</a></p>
                            <p class="price">129 ₺</p>
                        </div>
                        <div class="col-md-3 product">
                            <a href="#"><img src="http://lorempixel.com/400/400/food/2"></a>
                            <p><a href="#">Ürün adı</a></p>
                            <p class="price">129 ₺</p>
                        </div>
                        <div class="col-md-3 product">
                            <a href="#"><img src="http://lorempixel.com/400/400/food/3"></a>
                            <p><a href="#">Ürün adı</a></p>
                            <p class="price">129 ₺</p>
                        </div>
                        <div class="col-md-3 product">
                            <a href="#"><img src="http://lorempixel.com/400/400/food/4"></a>
                            <p><a href="#">Ürün adı</a></p>
                            <p class="price">129 ₺</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="products">
            <div class="panel panel-theme">
                <div class="panel-heading">İndirimli Ürünler</div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-3 product">
                            <a href="#"><img src="http://lorempixel.com/400/400/food/1"></a>
                            <p><a href="#">Ürün adı</a></p>
                            <p class="price">129 ₺</p>
                        </div>
                        <div class="col-md-3 product">
                            <a href="#"><img src="http://lorempixel.com/400/400/food/2"></a>
                            <p><a href="#">Ürün adı</a></p>
                            <p class="price">129 ₺</p>
                        </div>
                        <div class="col-md-3 product">
                            <a href="#"><img src="http://lorempixel.com/400/400/food/3"></a>
                            <p><a href="#">Ürün adı</a></p>
                            <p class="price">129 ₺</p>
                        </div>
                        <div class="col-md-3 product">
                            <a href="#"><img src="http://lorempixel.com/400/400/food/4"></a>
                            <p><a href="#">Ürün adı</a></p>
                            <p class="price">129 ₺</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
