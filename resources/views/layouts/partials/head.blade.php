<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:300,400,700,800">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/app.css">
<script>
    setTimeout(function () {
        $('.alert').slideUp(500);
    }, 5000);

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


