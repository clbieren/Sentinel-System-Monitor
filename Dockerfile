# 1. TABAN: En hafif Linux dağıtımı olan Alpine'i kullan (Sadece 5MB)
FROM alpine:latest

# 2. HAZIRLIK: Scriptimizin çalışması için 'bash' paketini yükle
# (Alpine çok hafif olduğu için içinde bash bile gelmez, biz kurarız)
RUN apk add --no-cache bash

# 3. KOPYALA: Bizim bilgisayardaki sentinel.sh dosyasını, konteynerin içine at
COPY sentinel.sh /sentinel.sh

# 4. YETKİ VE ÇALIŞTIRMA: Konteyner açılınca ne yapsın?
CMD ["/bin/bash", "/sentinel.sh"]
