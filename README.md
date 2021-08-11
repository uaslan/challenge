# KOBİSİ Challange

Yalnız API kısmının çalışması bulunmaktadır.
DB dosyası ana dizinde yer alan DB.sql dosyasıdır.
API urlleri aşağıdaki gibidir.


- **[Login Olarak API TOKEN Almak]: http://localhost:8000/api/login**
- **[Company Register]: http://localhost:8000/api/v1/register**
- **[Company Package]: http://localhost:8000/api/v1/package**
- **[Company Check]: http://localhost:8000/api/v1/check/{token}**

## AÇIKLAMALAR
- **[token]: Register Fonksiyonun geri dönen token.**
- **[company]: Company Apilerini Kullanabilmek için Login apisinden Bearer Token Almak gerekiyor. Bu api içinde login bilgileri aşağıdaki gibidir.**

- **[email]: abbie68@example.com**
- **[password]: 123456**

## Ek Dosyalar
- **[DB.sql]: DB Dosyası. Create Database komutu içermektedir.**
- **[Login Curl Kodu]: Login olarak Bearer Token almak için gerekli olan PHP kod bloğu.**

