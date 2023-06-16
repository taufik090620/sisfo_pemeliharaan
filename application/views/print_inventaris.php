<html>
    <head>
        <title>Data Inventaris</title>
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
                    <th>Kode Barang</th>
                    <th>Nama Barang</th>
                    <th>Merek</th>
                    <th>Asal Usul</th>
                    <th>Tahun Peredaran</th>
                    <th>Kondisi</th>
                    <th>Harga Barang</th>
            </tr>
            <?php $no = 1;
             foreach($inventaris as $inv) : ?>
                <tr>
                    <td><?= $no++ ?></td>
                    <td><?= $inv->kode_barang ?></td>
                    <td><?= $inv->nama_barang ?></td>
                    <td><?= $inv->merek ?></td>
                    <td><?= $inv->asal_usul ?></td>
                    <td><?= $inv->tahun_peredaran ?></td>
                    <td><?= $inv->kondisi ?></td>
                    <td><?= $inv->harga_barang ?></td>
                </tr>
                <?php endforeach ?>
        </table>
        <script type="text/javascript">
            window.print();
        </script>
    </body>
</html>