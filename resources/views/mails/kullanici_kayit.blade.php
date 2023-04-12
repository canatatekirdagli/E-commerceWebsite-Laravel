

<h1 style="color: #007bff;">{{ config('app.name') }}</h1>
Merhaba {{ $kullanici->adsoyad }},

Sayfamıza kayıt kaydolduğunuz için teşekkür ederiz! Hesabınızı aktifleştirmek için aşağıdaki talimatları izleyebilirsiniz:

<p style="font-size: 16px;">Hesabınızı aktifleştirmek için lütfen aşağıdaki butona tıklayın veya bağlantıyı tarayıcınızda açın:</p>
<a href="{{ config('app.url') }}/kullanici/aktiflestir/{{ $kullanici->aktivasyon_anahtari }}" style="display: inline-block; background-color: #007bff; color: #fff; padding: 12px 20px; text-decoration: none; font-size: 18px; border-radius: 5px; margin-top: 20px;">Hesabımı Aktifleştir</a>

<p style="font-size: 16px; margin-top: 20px;">Aktivasyon bağlantısı: <br>{{ config('app.url') }}/kullanici/aktiflestir/{{ $kullanici->aktivasyon_anahtari }}</p>
<p style="font-size: 16px; margin-top: 20px;">Hesabınızı aktifleştirmeden önce, lütfen kullanım şartlarımızı ve gizlilik politikamızı okuyun.</p>
<p style="font-size: 16px; margin-top: 20px;">Herhangi bir sorunuz varsa, lütfen bizimle iletişim kurmaktan çekinmeyin. Yardımcı olmaktan mutluluk duyarız!</p>
<p style="font-size: 16px; margin-top: 20px;">Saygılarımızla,<br>TikTak Saat</p>
