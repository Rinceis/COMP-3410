/* module.js */
export class Lab11 {
  function testDefaultParameters(first, second=100)
  {
    var json = {first, second};
    return json;
  }
  function testTemplateLiterals(firstName, middleName, lastName){
    var stringtemplate = '${firstName}, ${middleName}, ${lastName}';
    return stringtemplate;

  }
  function testMultilineStrings(){
    var multilinestring = 'hello, what is happening
    to my text
    it keeps
    shortening';
    return multilinestring;
  }
  function testSortWithArrowFunction(arrayofnum){
    var array = arrayofnum;
    for (var i = 0; i <= array.length; i++){
      array.sort((a, b) => {return b-a;});
    }
    return array;
  }
}
