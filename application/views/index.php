<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid black;
        }

        th, td {
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>
    <?php if ($this->session->flashdata('success_message')): ?>
        <div class="alert alert-success"><?php echo $this->session->flashdata('success_message'); ?></div>
    <?php endif; ?>

    <h1 class="mt-4">All Products</h1>
    <table class="table table-striped mt-4">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($products as $product): ?>
                <tr>
                    <td><?php echo $product['id']; ?></td>
                    <td><?php echo $product['name']; ?></td>
                    <td><?php echo $product['description']; ?></td>
                    <td>
                    <a href="<?php echo base_url('products/update/' . $product['id']); ?>" class="btn btn-primary">Update</a>


                        <form action="<?php echo base_url('products/delete/' . $product['id']); ?>" method="post" style="display: inline;">
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <div class="mt-4">
        <a href="<?php echo base_url('products/create'); ?>" class="btn btn-success">Add Product</a>
    </div>
</body>
</html>
