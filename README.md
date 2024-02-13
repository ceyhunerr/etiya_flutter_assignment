
<h2 align=center>Arazi Ölçüm ve Fiyat Hesaplama Uygulaması</h2>

Bu proje Flutter'da gRPC ile sahte sunucu kurarak, Türkiye'deki bazı şehirlerin isimleri, 
koordinatları ve arazi m2 fiyatlarını alıp, kullanıcının seçtiği arazinin fiyatını hesaplayan bir mobil uygulama projesidir.


## Özellikler

- [x] gRPC ile sunucu ile iletişim
- [x] Bloc ile durum yönetimi
- [x] Arazi boyutu hesaplamak için oluşturulan flutter package
- [x] Card widget için oluşturulan flutter package
- [x] Mapbox ile harita üzerinde seçilen arazinin Polygon olarak gösterilmesi
- [x] Getit ile dependency injection


## Kurulum

 Projeyi çalıştırmak için;
- Terminal üzerinden projenin bulunduğu dizine gidin.
- `flutter pub get` komutunu çalıştırın.
- `dart lib/core/services/server.dart` komutunu çalıştırarak sahte sunucuyu başlatın.
- `flutter run` komutunu çalıştırarak projeyi çalıştırın.


## Kullanım

Uygulamayı çalıştırdığınızda ana sayfada Türkiye'deki bazı şehirlerin isimleri listelenir. 
Arazinizin bulunduğu şehri seçtikten sonra, açılan haritada arazinizi dokunarak çizebilirsiniz.
Araziyi çizdikten sonra, arazinin m2 fiyatını ve toplam fiyatını görebilirsiniz.

* Demo: [Arazi Ölçümü ve Fiyat Hesaplama Uygulaması]


https://github.com/ceyhunerr/etiya_flutter_assignment/assets/44140081/2ad7fac8-c85a-4bd0-b468-7328cb11e7ad


