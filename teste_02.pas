program ADICIONA_NUMEROS;

{* Comentário {}{}{}{(**) válido *}
{(*´*)}


{* Definição de constantes *}
const
        MEU_CPF = '000.123.456-78';
        ERROMSG = 'Erro na execucao do programa.';
        QUATRO = 4 ;

{ Definição de tipos }
type
   A = 'A'..1; b = ^x;

var
 Nota1, Nota2 : real;
 NomeAluno1, NomeAluno2 : array[0..30] of real;
 A, B, C: integer;

procedure x(a:integer; procedure x(a:integer));
	begin
		case 2 of
		1: ;
		end

	end;

function x(a:integer; procedure x(a:integer)) : integer;
	begin
	end;

begin
 A := 2;
 B := 3;
 C := 1;
 NomeAluno1 := 'Maria Jose';
 NomeAluno2 := 'MariaJose';

 if ( B = A + C ) and ( NomeAluno1 <> NomeAluno2 ) then
 writeln( NomeAluno1, B );
 if ( A = C ) or ( NomeAluno1 = NomeAluno2 ) then
 writeln( NomeAluno1 );
 if not( A = C ) then
 writeln( NomeAluno1 );
end.