# Tutorial 2 - Introduction to Game Engine
## Ramadhan Andika Putra (2206081976) - GameDev A <br>

### Latihan: Playtest

#### Apa saja pesan *log* yang dicetak pada panel **Output**?
> Platform initialized<br>
Reached objective!
<br>

#### Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan *log* yang dicetak pada panel **Output**?
> Reached objective!
<br>

#### Buka *scene* `MainLevel` dengan tampilan *workspace* 2D. Apakah lokasi *scene* `ObjectiveArea` memiliki kaitan dengan pesan *log* yang dicetak pada panel **Output** pada percobaan sebelumnya?
> Terdapat keterkaitan. Pesan "Reached Objective!" tercetak saat `BlueShip` memasuki area `ObjectiveArea` karena fungsi `_on_ObjectiveArea_body_entered` mendeteksi ketika `BlueShip` (yang bertipe `RigidBody2D`) masuk ke dalam *CollisionShape2D* pada `ObjectiveArea`. Kode ini hanya mencetak pesan jika nama objek yang masuk adalah "BlueShip". Jadi, pesan hanya muncul ketika `BlueShip` benar-benar berada di dalam area tersebut.
<br>

<br>

### Latihan: Memanipulasi Node dan Scene

#### *Scene* `BlueShip` dan `StonePlatform` sama-sama memiliki sebuah *child node* bertipe `Sprite`. Apa fungsi dari *node* bertipe `Sprite`?
> `Sprite` adalah *node* yang menghubungkan gambar atau tekstur dengan dunia permainan. *Node* tersebut berfungsi untuk menampilkan gambar atau objek grafis dalam *scene*. Biasanya, *node* ini akan menampilkan sebuah gambar 2D yang ditentukan oleh properti *texture* pada node tersebut. Gambar tersebut bisa berupa karakter, objek, atau elemen visual lainnya yang akan terlihat oleh kita sebagai pemain dalam game.
<br>

#### *Root node* dari *scene* `BlueShip` dan `StonePlatform` menggunakan tipe yang berbeda. `BlueShip` menggunakan tipe `RigidBody2D`, sedangkan `StonePlatform` menggunakan tipe `StaticBody2D`. Apa perbedaan dari masing-masing tipe *node*?
> `RigidBody2D` digunakan untuk objek yang terpengaruh oleh fisika, seperti gravitasi atau *collision*, dan bisa bergerak atau berputar berdasarkan interaksi fisika.<br>
<br>

> `StaticBody2D` digunakan untuk objek yang tidak bergerak, seperti platform atau dinding, dan tidak terpengaruh oleh fisika, tetapi tetap bisa berinteraksi dengan objek lain yang bergerak.
<br>

#### Ubah nilai atribut `Mass` pada tipe `RigidBody2D` secara bebas di *scene* `BlueShip`, lalu coba jalankan *scene* `MainLevel`. Apa yang terjadi?
> Setelah mengubah nilai atribut `Mass` pada `RigidBody2D` di *scene* `BlueShip`, tidak ada perubahan yang terlihat karena `BlueShip` hanya berinteraksi dengan objek statis seperti `StonePlatform`. Efek perubahan massa pada objek baru akan terasa jika ada dua objek `RigidBody2D` yang berinteraksi satu sama lain. Dalam kasus ini, kedua objek dinamis akan saling mempengaruhi melalui tumbukan atau gaya fisika lainnya. Namun, karena `StonePlatform` bertipe `StaticBody2D`, interaksi fisika antara kedua objek tidak terjadi secara nyata, sehingga perubahan massa pada `BlueShip` tidak terlihat signifikan.
<br>

#### Ubah nilai atribut `Disabled` pada tipe `CollisionShape2D` di *scene* `StonePlatform`, lalu coba jalankan *scene* `MainLevel`. Apa yang terjadi?
> Setelah mengubah nilai atribut `Disabled` pada tipe `CollisionShape2D` di *scene* `StonePlatform`, objek `BlueShip` akan jatuh begitu saja saat scene dijalankan. Hal ini terjadi karena dengan menonaktifkan *CollisionShape2D* pada `StonePlatform`, platform tidak lagi memiliki bentuk *collision* yang bisa mendeteksi tumbukan dengan `BlueShip`. Sebagai hasilnya, `BlueShip` tidak akan terhalang oleh platform dan terus jatuh, meskipun tidak ada perubahan pada atribut fisika pesawat itu sendiri.
<br>

#### Pada *scene* `MainLevel`, coba manipulasi atribut `Position`, `Rotation`, dan `Scale` milik *node* `BlueShip` secara bebas. Apa yang terjadi pada visualisasi `BlueShip` di Viewport?
> Setelah mencoba memanipulasi atribut-atribut tersebut pada node `BlueShip`, perubahan pada `Position` akan memindahkan `BlueShip` ke lokasi (posisi koordinat) yang baru di dalam *scene*, sedangkan perubahan pada `Rotation` akan memutar `BlueShip` sesuai dengan sudut derajat yang ditentukan. Jika `Scale` diubah, ukuran `BlueShip` akan membesar atau mengecil sesuai dengan nilai skala yang diterapkan. Secara keseluruhan, manipulasi atribut-atribut tersebut akan langsung mempengaruhi posisi, orientasi, dan ukuran visual dari `BlueShip` di dalam *viewport*.
<br>

#### Pada *scene* `MainLevel`, perhatikan nilai atribut `Position` *node* `PlatformBlue`, `StonePlatform`, dan `StonePlatform2`. Mengapa nilai `Position` *node* `StonePlatform` dan `StonePlatform2` tidak sesuai dengan posisinya di dalam *scene* (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
> Hal tersebut disebabkan karena *node* `StonePlatform` dan `StonePlatform2` merupakan *child* dari *node* `PlatformBlue`, yang memiliki transformasi posisi tersendiri. Ketika *child node* memiliki *parent*, posisi yang ditampilkan di *Inspector* untuk *child node* adalah relatif terhadap posisi *parent*-nya, bukan posisi global di *scene*. Meskipun begitu, visualisasi objek tetap muncul di posisi yang benar di *viewport* karena transformasi global yang dihitung berdasarkan posisi dan transformasi *parent*.
<br>