program teste;
var
   text: string;
   ponteiro: ^pointer;
   lista1: packed array [(teste3, teste4, teste5)] of String;
   message: pchar;
   lista2: array [10..37] of char;
begin
   g := 100;
   message := 'Good Day!';
   writeln('Please Enter your Name');
   readln(name);
   writeln('Please Enter the name of your Organisation');
   readln(organisation);
  writeln(greetings, name, ' from ', organisation);
  writeln(message);
end.