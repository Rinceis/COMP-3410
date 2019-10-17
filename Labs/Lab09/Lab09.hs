<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <style>
  body{
    background-color: #faf2e4;
    margin: 0 10%;
    font-family: sans-serif;
  }
  h1{
    text-align: center;
    font-family: serif;
    font-weight: normal;
    text-transform:  uppercase;
    border-bottom: 1px solid #57b1dc;
    margin-top: 30px;
  }

  h2{
    fontface: "courier";
    color: #0715cd;
    font-size: 1em;
  }
  h3{
    fontface: "courier";
    color: #e00707;
    font-size: 1em;
  }
  h4{
    fontface: "courier";
    color: #b536da;
    font-size: 1em;
  }
  h5{
    fontface: "courier";
    color: #4ac925;
    font-size: 1em;
  }
  p{
    fontface: "courier";
    background-color: #0e4603;
    color: #ffffff;
    font-size: 1.05em;
  }

  </style>
  <script type="text/javascript">
  function hello22()
  {
    var hello ="hello ";
    let twentytwo = 22;
    alert(hello + twentytwo);
  }

  function directions()
  {

    let compassworks = (document.getElementById('testerdirections').value =="north"
    || document.getElementById('testerdirections').value == "east"
    || document.getElementById('testerdirections').value == "south"
    || document.getElementById('testerdirections').value == "west"
    || document.getElementById('testerdirections').value == "North"
    || document.getElementById('testerdirections').value == "East"
    || document.getElementById('testerdirections').value == "South"
    || document.getElementById('testerdirections').value == "West");
    let compass =
    "north"
    | "east"
    | "south"
    | "west"
    | "North"
    | "East"
    | "South"
    | "West";
    if (compassworks == 1)
    {
      compass = document.getElementById('testerdirections').value;
    }
    else {
      alert("enter an actual direction, like north, south...");

    }
    var number = document.getElementById('testermove').value;

    var numbertest = /\d+$/;
    var numberresult = numbertest.test(number);
    if (numberresult && compassworks==1)
    {
      alert("moved "+number+" to the "+compass+".");
    }
    else if (numberresult && compassworks!=1)
    {
      alert("you had an error with the compass value but not the number value");
    }
    else if (!numberresult && compassworks==1)
    {
      alert("you had an error with the number value but not the compass value.");
    }
    else {
      alert("you had a problem with both variables.");
    }


  }
  function arrayfunc()
  {
    let array = ["puppy", "cat", "fish"];
    alert(array);
    let shownarray =
    {
      label: "your array",
      size: 3,
      thearray: array
    }
  }
  function forwhileiterate()
  {
    var array123 = ["1", "2", "3"];
    var i = 0;
    while (i < 3){
    for (const element of array123)
    {
      alert(element);
      i++;
    }
  }
}
function forandforeach()
{
  const list = [1,2,3,4,5];
  let total = 0;

   for (var i = 0; i < list.length; i++)
    {

      total +=list[i];
      alert(total);
    }
    switch(total)
    {
      case 0:
      alert("something went very wrong, it didn't add them together!");
      break;
      case 15:
      alert("everything went fine.");
      break;
      default:
      alert("something went wrong, but the value isn't 0.");
    }
    alert("that was for loop, now is for each");

    list.forEach(element => {alert(element);});

}

  </script>
  <meta charset="utf-8">
  <title></title>
</head>
<body>
  <!-- <form action="" onsubmit="directions()" method="post">
    <h2>
      <br>
      <label>movetest:
        <input type="text" height="5" width="50" id="testerdirections" name="test stuff one" placeholder="direction to move"/> <br>
        <input type="number" min="0" maxlength="999999999999" height="5" width="50" id="testermove" name="test stuff two" placeholder="number to move"/> <br>
        <input type="submit"/>
      </label>
    </h2>
  </form> -->

  <form action="" onsubmit="arrayfunc()" method="post">
    <h2>
      <br>
      <label>show array:
        <input type="submit"/>
      </label>
      <br>

    </h2>
</form>

  <form action="" onsubmit="forwhileiterate()" method="post">
    <h2>
      <br>
      <label>iterate 1 2 3 while < 4:
        <input type="submit"/>
      </label>
      <br>

    </h2>
</form>

<form action="" onsubmit="forandforeach()" method="post">
  <h2>
    <br>
    <label>get total of 2 3 4, add 1 to each, repeat 3 times:
      <input type="submit"/>
    </label>
    <br>

  </h2>
</form>
</body>
</html>
