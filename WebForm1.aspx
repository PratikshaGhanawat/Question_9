<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>

<!-- Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
    <div>
      <!-- Your ASP.NET button -->
<asp:Button ID="btnShowModal" runat="server" Text="Show Modal" CssClass="btn btn-primary" data-toggle="modal" data-target="#myModal" />

<!-- Bootstrap Modal -->
<div class="modal" tabindex="-1" role="dialog" id="myModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Modal Title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Click the button below to load data using AJAX:</p>
                <button type="button" class="btn btn-success" id="btnLoadData">Load Data</button>

                <!-- Container to display loaded data -->
                <div id="dataContainer"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- JavaScript to handle AJAX request -->
<script>
    $(document).ready(function () {
        // AJAX request when the "Load Data" button is clicked
        $('#btnLoadData').click(function () {
            $.ajax({
                url: 'www.google.com', // Replace with your server-side endpoint
                method: 'GET',
                success: function (data) {
                    // Display the loaded data in the modal
                    $('#dataContainer').html(data);
                },
                error: function (error) {
                    console.error('Error loading data:', error);
                }
            });
        });
    });
</script>


        </div>

    </form>
</body>
</html>
