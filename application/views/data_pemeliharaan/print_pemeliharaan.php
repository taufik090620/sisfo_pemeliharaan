<html>
    <head>
        <title>Data Pemeliharaan</title>
    </head>
    <style>
    table, td, th {
    border: 1px solid;
    text-align: center;
    }

    table {
    width: 100%;
    border-collapse: collapse;
    }
    </style>
    <body>
        <table>
            <tr>
                    <th>No</th>
                    <th>Nama Barang</th>
                    <th>Nama Fasilitas</th>
                    <th>Kondisi</th>
                    <th>Tanggal Pemeliharaan</th>
                    <th>Keterangan</th>
            </tr>
            <?php $no = 1;
             foreach($pemeliharaan as $inv) : ?>
                <tr>
                    <td><?= $no++ ?></td>
                    <td><?= $inv->nama_barang ?></td>
                    <td><?= $inv->nama_fasilitas ?></td>
                    <td><?= $inv->kondisi ?></td>
                    <td><?= $inv->tanggal_pemeliharaan ?></td>
                    <td><?= $inv->keterangan ?></td>
                </tr>
                <?php endforeach ?>
        </table>
        <script type="text/javascript">
            window.print();
        </script>
    </body>
</html>