# 🌸 Çiçekçi Stok Yönetimi Sistemi

## 📌 Proje Özeti
Çiçekçilik sektörü, ürünlerin raf ömrünün kısa olması nedeniyle stok takibinin büyük hassasiyet gerektirdiği bir alandır. Bu sektörde yaşanan başlıca problemler; ürünlerin bozulması, stok fazlalığı veya eksikliği, fiyat güncellemelerinin gecikmesi ve satış kayıtlarının düzenli tutulamamasıdır.

Bu proje kapsamında geliştirilen **Çiçekçi Stok Yönetimi Sistemi**, çiçekçi işletmelerinin stok, satış ve tedarik süreçlerini dijital ortama taşıyarak tüm verilerin güvenli ve düzenli bir şekilde yönetilmesini amaçlamaktadır. Sistem, satış ve tedarik aşamalarını tek bir platform üzerinden kontrol etmeye olanak tanıyarak işletmelerin zaman ve maliyet kayıplarını azaltmayı hedefler.

---

## 🎯 Projenin Uygulama Alanı
Bu sistem, **küçük ve orta ölçekli çiçekçi işletmeleri** için geliştirilmiştir. Çiçekçi dükkanlarında günlük olarak farklı türlerde çiçek alım-satımı yapılmakta ve bu ürünlerin stok miktarı, fiyatı ve tazelik durumu sürekli değişmektedir.

Proje sayesinde:
- Stok bilgileri anlık olarak görüntülenebilir,
- Ürün ve fiyat güncellemeleri kolayca yapılabilir,
- Satış ve sipariş kayıtları düzenli tutulabilir,
- İşletme sahipleri ve çalışanlar raporlara hızlı erişim sağlayabilir.

---

## 👥 Kullanıcı İhtiyaçları ve Sağlanan Çözümler

### Kullanıcı İhtiyaçları
- Stok takibinde yaşanan karışıklıkların önlenmesi  
- Güncel ürün, fiyat ve stok bilgilerine hızlı erişim  
- Yeni ürün ekleme ve tükenen ürünleri sistemden kaldırma  
- Satış ve stok raporlarının kolayca oluşturulması  

### Sağlanan Çözümler
Bu sistem ile kullanıcılar:
- Yeni çiçekleri ve stok miktarlarını sisteme ekleyebilir,
- Tükenen veya satışı biten ürünleri silebilir,
- Fiyat ve stok bilgilerini güncelleyebilir,
- Çiçekleri **tür**, **fiyat** veya **stok miktarına** göre sıralayabilir,
- Belirli kriterlere göre sorgulama yapabilir.

Bu sayede manuel takipten kaynaklanan hatalar en aza indirilir ve müşteri taleplerine daha hızlı yanıt verilir.

---

## ⚠️ Gerçek Hayattaki Problem ve Çözüm

### Gerçek Hayattaki Problem
Birçok çiçekçi işletmesi stok takibini defter, Excel dosyaları veya tamamen manuel yöntemlerle yapmaktadır. Bu durum:
- Ürünlerin bozulmasına,
- Stok fazlalığı veya stok yetersizliğine,
- Özel günlerde sipariş karmaşasına,
- Müşteri memnuniyetsizliğine

neden olmaktadır.

### Projenin Getirdiği Çözüm
Çiçekçi Stok Yönetimi Sistemi sayesinde:
- Tüm çiçek türleri, stok miktarları ve fiyat bilgileri kayıt altına alınır,
- Stok durumu ve fiyatlar anlık olarak güncellenebilir,
- Satış verileri analiz edilerek hangi ürünlerin daha çok satıldığı görülebilir,
- Veri kaybı ve karışıklık önlenir.

Bu sayede işletmeler zaman ve maliyet tasarrufu sağlar ve dijital dönüşüm sürecine katkıda bulunur.

---

## 🗂️ Veritabanı Tasarımı (ER Diyagramı)

<img width="999" height="695" alt="er_model" src="https://github.com/user-attachments/assets/e4719fc1-393b-4bfd-b62d-ec7d2c8d696c" />

Sistem aşağıdaki temel varlıklardan oluşmaktadır:

- **Tedarikçi**
  - TedarikçiID, İsim, Telefon, Adres, Mail
- **Çiçek**
  - ÇiçekID, İsim, Tür, Renk, Fiyat, StokMiktarı
- **Müşteri**
  - MüşteriID, İsim, Cinsiyet, Yaş, Telefon, Adres, Mail
- **Sipariş**
  - SiparişID, SiparişVerişTarihi, SiparişAlışTarihi, ToplamTutar
- **SiparişDetay**
  - Miktar, Fiyat
- **Çalışan**
  - TcNo, İsim, Telefon, Adres, Mail

### İlişkiler
- Tedarikçi → Çiçek (**temin eder**)
- Müşteri → Sipariş (**verir**)
- Sipariş → SiparişDetay (**içerir**)
- Çalışan → Sipariş (**alır**)
- Çiçek → Çalışan (**durum takibi yapar**)

📌 ER diyagramı proje dosyaları içerisinde yer almaktadır.

---
