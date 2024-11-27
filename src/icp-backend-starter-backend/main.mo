import Debug "mo:base/Debug";
import Nat8 "mo:base/Nat8";
import Iter "mo:base/Iter";

//Nombre : Jesus Ignacio Rostro Diaz
//Pais : MEX
//Experiencia : En Blockchain es la primera, como programador en java, c#, c++, sql.
/*actor Zloy2611{
  var name : Text = "";
  public func setName(a:Text) {
    name := a
  };
  public query func getName():async Text{
    return name;
  };
};*/

actor Zloy2711{
  //Tipos de datos -> Primitivos{Text (Eq. String), Nat (Eq. Int {positivos}), Bool (Boolean), Int (Integer de toda la vida), Char (caracteres) }
                // -> No primitivos {Tuples, Arrays, Objects, Variants, Function values, Async values, Error values}  
  //Operadores -> Numericos{ +,-,/,* } De asignacion { :=, +=, -=, =} De texto { # -> Para concatenar }
  //Control de flujos -> (ciclos, etc) -> If else, switch, loops -> { for, while, do-while}
  let arr : [Nat8] = [1,2,3,4];
  
  public func obtArray(indice:Nat) : async Text{
    //let arr1 : [(Text,Nat8)] = [("Huevos",8),("So",165)];
    //return arr1[indice];
    let a : [Text] = ["Lunes","Martes","Miercoles","Jueves","Viernes"];
    Debug.print("Hoy es" # a[1]);
    return a[indice];
  };
  //If else
  public func leerDatos(nombre:Text, edad:Nat8){
      if(edad > 18){
        Debug.print("Eres mayor de edad");
      }else{
        Debug.print("No eres mayor de edad");
      }

  };
  //Switch
  public func obtSaludos(index : Nat) : async Text{
    switch(index){
      case (0) { "Hola"};
      case (1) {return "Huevo";};
      case (2) {return "Esparrago";};
      case (3) {return "Lol";};
      case _   {""};
    }
  };
  public func loopC(){
    var c:Nat8=0;
    // Imprime infinitamente (no usar)
    /*loop{
      c += 1;
      Debug.print(Nat8.toText(c));

    }*/
    loop{
      Debug.print(Nat8.toText(c));
      c +=1;
    }while(c <= 10);
    for(i in Iter.range(0,10)){
      Debug.print("Donde estas");
    }
  };
  
};
