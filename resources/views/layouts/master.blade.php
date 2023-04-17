<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
    <meta charset="UTF-8">
    <title>@yield('title', config('app.name'))</title>
    @include('layouts.partials.head')
    @yield('head')
</head>
<body id="commerce">

@include('layouts.partials.navbar')
@yield('content')
@include('layouts.partials.footer')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="/js/app.js"></script>
<script src="resources/assets/js/app.js"></script>
@yield('footer')
@section('footer')
    <script>
        setTimeout(function () {
            $('.alert').slideUp(500);
        }, 3000);

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $('.urun-adet-artir, .urun-adet-azalt').on('click',function (){
            var id=$(this).attr('data-id');
            var adet=$(this).attr('data-adet');
            $.ajax({
                type:'PATCH',
                url:'/sepet/guncelle/'+id,
                data: {adet:adet},
                success:function (result){
                    window.location.href='/sepet';
                }
            });
        });

    </script>
@endsection
</body>
</html>
