Bu paket http://www.belgenet.com.tr/statics/BelgenetImzaServisiKurulumDosyalari/Linux/ adresinde signNativeOsService_Linux_1.0.44.zip  olarak verilen dosyayı debian paketi haline getirmektedir. Bu zip dosyası açıldıktan sonra;

* singNativeOsService.jar
* turksat-imza.service
* turksat.crt

dosyaları kalacak şekilde diğer dosya ve dizinler(diğer işletim sistemlerine ait olduğu için) silinmelidir. Ayrıca **turksat-imza.service** dosyasındaki yollar "**/usr/local**"'den "**/usr/share**"'e alınmalıdır.

**Paketleme**

    sudo apt install build-essential git-buildpackage debhelper debmake
    
**Proje Kopyalama**

    git clone https://github.com/farukomercakmak/belgenet-eimza-servis.git

    cd belgenet-eimza-servis/

**İnşa Bağımlılıklarını Yükleme**

    sudo mk-build-deps -ir
    
**Binary Paketini Alma**

    gbp buildpackage --git-export-dir=/tmp/build-area -b -us -uc
    
Paket **/tmp/build-area/** dizini altında inşa edilmiştir.
