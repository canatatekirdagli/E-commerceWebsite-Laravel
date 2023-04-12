@extends('layouts.master')
@section('title','Anasayfa')
@section('content')
    @include('layouts.partials.alert')
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
                        @foreach($urunler_one_cikan as $urun)
                        <div class="col-md-3 product">
                            <a href="{{route('urun',$urun->slug)}}"><img src="http://via.placeholder.com/400x400?text=UrunResmi"></a>
                            <p><a href="{{route('urun',$urun->slug)}}">{{$urun->urun_adi}}</a></p>
                            <p class="price">{{$urun->fiyati}} ₺</p>
                        </div>
                        @endforeach
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
                        @foreach($urunler_cok_satan as $urun)
                            <div class="col-md-3 product">
                                <a href="{{route('urun',$urun->slug)}}"><img src="http://via.placeholder.com/400x400?text=UrunResmi"></a>
                                <p><a href="{{route('urun',$urun->slug)}}">{{$urun->urun_adi}}</a></p>
                                <p class="price">{{$urun->fiyati}} ₺</p>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        <div class="products">
            <div class="panel panel-theme">
                <div class="panel-heading">İndirimli Ürünler</div>
                <div class="panel-body">
                    <div class="row">
                        @foreach($urunler_indirimli as $urun)
                            <div class="col-md-3 product">
                                <a href="{{route('urun',$urun->slug)}}"><img src="http://via.placeholder.com/400x400?text=UrunResmi"></a>
                                <p><a href="{{route('urun',$urun->slug)}}">{{$urun->urun_adi}}</a></p>
                                <p class="price">{{$urun->fiyati}} ₺</p>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
