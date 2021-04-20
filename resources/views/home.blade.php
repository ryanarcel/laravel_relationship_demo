<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
</head>
<body style="background-color: #ccc;">

<!-- add family -->
<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3 card shadow mt-3">
            <div class="card-body">
                <h5>Add Family</h5>


                <form action="{{route('saveFamily')}}" method="post">
                    @csrf
                    <div class="form-group">
                        <input type="text" name="familyname" class="form-control input-text" placeholder="Enter family name"/>
                    </div>
                    <input type="submit" value="Save Family" class="input-submit btn btn-primary">
                </form>


            </div>
        </div>
    </div>

<!-- add member -->
    <div class="row">
        <div class="col-md-6 offset-md-3 mt-5 card shadow">
            <div class="card-body">
            <h5>Add Members</h5>


            <form action="{{route('saveMember')}}" method="post">
                @csrf
                <div class="form-group">
                    <label for="family">Choose family:</label>
                    <select name="family" class="form-control">
                        @foreach($families as $family)
                        <option value="{{$family->id}}">{{$family->lastname}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="cars">Members:</label>
                    <input type="text" name="members[]" class="form-control input-text mb-1" style="width:80%" placeholder="Enter member 1"/>
                    <input type="text" name="members[]" class="form-control input-text mb-1" style="width:80%" placeholder="Enter member 2"/>
                    <input type="text" name="members[]" class="form-control input-text mb-1" style="width:80%" placeholder="Enter member 3"/>
                </div>
                <input type="submit" value="Save Members" class="input-submit btn btn-info">
            </form>


            </div>
        </div>
    </div>

<!-- display table -->
    <div class="row">
        <div class="col-md-6 offset-md-3">
        <table class="table mt-5 mb-5">
            <thead>
                <tr class="table-info">
                    <th>ID</th>
                    <th>Surname</th>
                </tr>
            </thead>
            <tbody>
                @foreach($families as $family)
                <tr>
                    <td class="table-info">{{$family->id}}</td>
                    <td class="table-info">{{$family->lastname}}
                        <ul>
                            @foreach($family->members as $member)
                                <li>{{$member->firstname}}</li>
                            @endforeach
                        </ul>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        </div>
    </div>
    <script src="{{asset('js/jquery.min.js')}}"></script>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
</div>
</body>
</html>