@extends('layouts.master')
@section('title',$kategori->kategori_adi)
<body class="productPage">
@section('content')
    <!-- product category -->
    <body id="commerce">
    <div class="container">
        <ol class="breadcrumb">
            <li><a href="{{route('anasayfa')}}">Anasayfa</a></li>
            <li>{{$kategori->kategori_adi}}</li>

        </ol>
        <div class="row">
            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">{{$kategori->kategori_adi}}</div>
                    <div class="panel-body">
                        @if(count($alt_kategoriler)>0)
                        <h3>Alt Kategoriler</h3>
                        <div class="list-group categories">
                            @foreach($alt_kategoriler as $alt_kategori)
                                <a href="{{route('kategori',$alt_kategori->slug)}}"
                                   class="list-group-item"><i class="fa fa-television"></i>
                                    {{$alt_kategori->kategori_adi}}
                                </a>
                            @endforeach
                        </div>
                        @else
                        Bu kategoride başka alt kategori bulunmamaktadır.
                        @endif
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="products bg-content">
                    @if(count($urunler)> 0)
                    Sırala
                    <a href="?order=coksatanlar" class="btn btn-default">Çok Satanlar</a>
                    <a href="?order=yeni" class="btn btn-default">Yeni Ürünler</a>
                    <hr>
                    @endif
                    <div class="row">
                        @if(count($urunler)==0)
                           <div class="col-md-12">Bu kategoride ürün bulunamadı!</div>
                        @endif
                        @foreach($urunler as $urun)
                        <div class="col-md-3 product">
                            <a href="{{route('urun',$urun->slug)}}"><img src="{{ $urun->detay->urun_resmi!=null ? asset('uploads/urunler/' . $urun->detay->urun_resmi) : 'http://via.placeholder.com/400x400?text=UrunResmi' }}">
                                <p><a href="{{route('urun',$urun->slug)}}"> {{$urun->urun_adi}}</a></p>
                            <p class="price">{{$urun->fiyati}} ₺</p>
                                <form action="{{route('sepet.ekle')}}" method="POST">
                                    {{csrf_field()}}
                                    <input type="hidden" name="id" value="{{$urun->id}}">
                                    <input type="submit" class="btn btn-theme" value="Sepete Ekle">
                                </form>
                        </div>
                        @endforeach
                    </div>
                        {{ request()->has('order') ? $urunler->appends(['order' => request('order')])->links() : $urunler->links() }}
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
    <!-- / product category -->
@endsection
