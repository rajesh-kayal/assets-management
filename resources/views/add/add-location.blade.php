<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>:: Assets Management ::</title>
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="FAVICON.png">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/dataTables.bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
<div class="mainWrapper">
    <div class="header">
        <div class="headerTop clearfix">
            <div class="col-sm-4">
                    <img src="images/logoo.png" alt="">
                    @if ($errors->any())
                        <div class="alert alert-warning">
                            <ul>
                            @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
            </div>
            @include('add.include.logout')
        </div>
        <div rel="sticky" data-scroll-top="true" class="adminHeader clearfix">
            <div class="col-sm-6">
                <h3 class="lead">
                    <a href="{{ url('/dashboard') }}"><span><img src="images/back.png" alt=""></span><span>Home</span></a>
                    <a href="{{ url('/location') }}"><span>/</span><span>Location</span></a>
                </h3>
            </div>
            <form action="{{ url('/save-location') }}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="col-sm-6">
                <div class="newPro">
                <a href="{{ url('/location') }}" class="cnn">Cancel</a>
                <button type="submit" class="btn btn-primary w-3 custom-width">Save</button>
                </div>
            </div>
        </div>
    </div>
    @include('include.sidebar')
    <div class="admin odd configuration" style="padding-bottom:15px;">
        <h3 class="title"><span>New Location</span></h3>
        <div class="proTable">
            <div class="row">
                <div class="col-sm-12">
                    <div class="proRoww">
                        <h2><b>Location Details:</b></h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="proRow">
                        <h2>Location Code</h2>
                            <input type="text" placeholder="Enter Location Code" name="locationCode">
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="proRow">
                        <h2>Location Name</h2>
                            <input type="text" placeholder="Enter Location Name" name="locationName">
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</div>
<!-- Jquery Core Js -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script>
  $(document).ready(function(){
    var winHeight = $(window).height();
    $(".mainWrapper").css("min-height", winHeight);

    var mwHeight = $(".mainWrapper").height() + 10;
    $(".leftPanel").css("height", mwHeight);
  });
  $('[data-toggle="tooltip"]').tooltip();

        $(document).ready(function(){
            $('#example').DataTable();
            $('#example2').DataTable();
            $('#example3').DataTable();
            $('#example4').DataTable();
            $('#example5').DataTable();
            $('#example6').DataTable();
            $('#example7').DataTable();
			});
</script>
</body>
</html>
