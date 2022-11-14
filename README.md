# **Tugas 7**

## Stateless widget dan stateful widget

-   stateless widget: widget yang tidak memiliki state, artinya widget tersebut tidak memiliki perubahan data yang terjadi secara dinamis.
-   stateful widget: widget yang memiliki state, artinya widget tersebut memiliki perubahan data yang terjadi secara dinamis.

## Widget yang dipakai pada proyek ini

-   Padding
-   Row
-   FloatinActionButton
-   Icon
-   Spacer
-   Text
-   Column
-   Center
-   Scaffold

## Fungsi dari `setState()`

Pemanggilan fungsi `setState()` memberitahu framework bahwa state dalam objek ini telah berubah, sehingga framework akan memanggil method `build()` untuk _reload_ UI

## Perbedaan `const` dan `final`

-   final: variabel yang hanya bisa diinisialisasi sekali dan _value_-nya tidak bisa diubah
-   const: _value_-nya harus diketahui saat _compile time_ dan tidak bisa diubah setelahnya

## Implementasi checklist

1. Membuat button plus untuk increment nilai dan button minus untuk decrement nilai
   ![image](./assets/satu.png)
2. Membuat kondisional apabila counter genap dan ganjil
   ![image](./assets/dua.png)
3. Membuat kondisional apabila counter 0 agar button minus menghilang
   ![image](./assets/tiga.png)

---

---

# **Tugas 8**

## Perbedaan `Navigator.push` dan `Navigator.pushReplacement`

-   `Navigator.push`: berfungsi untuk menambahkan route baru ke stack navigasi
-   `Navigator.pushReplacement`: berfungsi untuk mengganti route yang ada di stack navigasi dengan route baru

## Widget yang dipakai dan fungsinya

-   Container: widget yang berfungsi sebagai _container_ untuk menampung widget lainnya
-   Form: widget yang berfungsi untuk membuat form
-   Column: widget yang berfungsi untuk menampung widget lainnya secara vertikal
-   ListTile: row yang menampung teks sebagai leading dan trailing
-   Drawer: widget yang berfungsi untuk membuat _drawer_ di sisi kiri layar (untuk navigasi)

## Jenis event pada Flutter

-   onTap: event yang terjadi ketika widget di tap
-   onPressed: event yang terjadi ketika widget di tekan
-   onChanged: event yang terjadi ketika widget diubah
-   onSaved: event yang terjadi ketika widget disimpan

## Cara kerja `Navigator` saat mengganti halaman aplikasi

Navigator mengatur stack of route dan menyediakan dua cara untuk mengatur stack of route, yaitu declarative dan imperative. Declarative menggunakan `Navigator.pages`, sedangkan imperative `Navigator.push` dan `Navigator.pop`

## Implementasi checklist
