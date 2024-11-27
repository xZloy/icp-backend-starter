//Nombre : Jesus Ignacio Rostro Diaz
//Pais : MEX
//Experiencia : En Blockchain es la primera, como programador en java, c#, c++, sql.

actor Zloy{
  var name : Text = "";
  public func setName(a:Text) {
    name := a
  };
  public query func getName():async Text{
    return name;
  };
};
