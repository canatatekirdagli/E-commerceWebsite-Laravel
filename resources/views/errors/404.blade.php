@extends('layouts.master')
@section('title','Sayfa Bulunamadı')
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <link rel="stylesheet" type="text/css" href="/css/nouislider.css">
    <link id="switcher" href="/css/theme-color/default-theme.css" rel="stylesheet">
    <link href="/css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">
    <link href="/css/style.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type=/text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='/text/css'>

</head>
@section('content')
    <section id="aa-error">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-error-area">
                        <h2>404</h2>
                        <span>SAYFA BULUNAMADI</span>
                        <p>Üzgünüz, aradığınız sayfa mevcut değil.</p>
                        <a href="{{route('anasayfa')}}"> Anasayfa'ya Dön</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
