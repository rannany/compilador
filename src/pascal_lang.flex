%%

%{

    private void imprimir(String descricao, String lexema) {
        System.out.println(lexema + " - " + descricao);
    }

%}

%standalone
%class PascalAnalizer
%line
%column

ATTRIBUITION = :=
RELATIONAL = [>|<|>=|<=|=|<>]
INTEGER = [\-|\+]?[0]|[1-9][0-9]*
REAL = [\-|\+|]?[0-9]+[\.][0-9]+
ARITHMETIC = [\+|\-|\*|/]
TERMINATE = [;|.|:]
STRING = \'.* \'
VARIABLE = [_|a-z|A-Z][a-z|A-Z|0-9|_]*
COMMENT = \{.*\}|\/\/.*
DELIMITER = [(|)|,|\[|\]|[\.\.]]
WHITESPACE = [\n| |\t|\r]
POINTER = \^{VARIABLE}

%%

<YYINITIAL> {
    and                   {imprimir("Palavra reservada and", yytext());}
    array                   {imprimir("Palavra reservada array", yytext());}
    asm                   {imprimir("Palavra reservada asm", yytext());}
    case                   {imprimir("Palavra reservada case", yytext());}
    const                   {imprimir("Palavra reservada const", yytext());}
    constructor                   {imprimir("Palavra reservada constructor", yytext());}
    destructor                   {imprimir("Palavra reservada destructor", yytext());}
    div                   {imprimir("Palavra reservada div", yytext());}
    do                   {imprimir("Palavra reservada do", yytext());}
    downto                   {imprimir("Palavra reservada downto", yytext());}
    egin                   {imprimir("Palavra reservada egin", yytext());}
    eles                   {imprimir("Palavra reservada eles", yytext());}
    end                   {imprimir("Palavra reservada end", yytext());}
    file                   {imprimir("Palavra reservada file", yytext());}
    for                   {imprimir("Palavra reservada for", yytext());}
    foward                   {imprimir("Palavra reservada foward", yytext());}
    function                   {imprimir("Palavra reservada function", yytext());}
    goto                   {imprimir("Palavra reservada goto", yytext());}
    if                   {imprimir("Palavra reservada if", yytext());}
    implementation                   {imprimir("Palavra reservada implementation", yytext());}
    in                   {imprimir("Palavra reservada in", yytext());}
    inline                   {imprimir("Palavra reservada inline", yytext());}
    interface                   {imprimir("Palavra reservada interface", yytext());}
    label                   {imprimir("Palavra reservada label", yytext());}
    mod                   {imprimir("Palavra reservada mod", yytext());}
    nil                   {imprimir("Palavra reservada nil", yytext());}
    not                   {imprimir("Palavra reservada not", yytext());}
    object                   {imprimir("Palavra reservada object", yytext());}
    of                   {imprimir("Palavra reservada of", yytext());}
    or                   {imprimir("Palavra reservada or", yytext());}
    packed                   {imprimir("Palavra reservada packed", yytext());}
    procedure                   {imprimir("Palavra reservada procedure", yytext());}
    program                   {imprimir("Palavra reservada program", yytext());}
    record                   {imprimir("Palavra reservada record", yytext());}
    repeat                   {imprimir("Palavra reservada repeat", yytext());}
    set                   {imprimir("Palavra reservada set", yytext());}
    shl                   {imprimir("Palavra reservada shl", yytext());}
    shr                   {imprimir("Palavra reservada shr", yytext());}
    string                   {imprimir("Palavra reservada string", yytext());}
    then                   {imprimir("Palavra reservada then", yytext());}
    to                   {imprimir("Palavra reservada to", yytext());}
    type                   {imprimir("Palavra reservada type", yytext());}
    unit                   {imprimir("Palavra reservada unit", yytext());}
    until                   {imprimir("Palavra reservada until", yytext());}
    until                   {imprimir("Palavra reservada until", yytext());}
    uses                   {imprimir("Palavra reservada uses", yytext());}
    var                   {imprimir("Palavra reservada var", yytext());}
    while                   {imprimir("Palavra reservada while", yytext());}
    with                   {imprimir("Palavra reservada with", yytext());}
    xor                   {imprimir("Palavra reservada xor", yytext());}

    absolute                   {imprimir("Modificadores absolute", yytext());}
    abstract                   {imprimir("Modificadores abstract", yytext());}
    alias                   {imprimir("Modificadores alias", yytext());}
    assembler                   {imprimir("Modificadores assembler", yytext());}
    bitpacked                   {imprimir("Modificadores bitpacked", yytext());}
    break                   {imprimir("Modificadores break", yytext());}
    cdecl                   {imprimir("Modificadores cdecl", yytext());}
    continue                   {imprimir("Modificadores continue", yytext());}
    cppdecl                   {imprimir("Modificadores cppdecl", yytext());}
    cvar                   {imprimir("Modificadores cvar", yytext());}
    default                   {imprimir("Modificadores default", yytext());}
    deprecated                   {imprimir("Modificadores deprecated", yytext());}
    dynamic                   {imprimir("Modificadores dynamic", yytext());}
    enumerator                   {imprimir("Modificadores enumerator", yytext());}
    experimental                   {imprimir("Modificadores experimental", yytext());}
    export                   {imprimir("Modificadores export", yytext());}
    external                   {imprimir("Modificadores external", yytext());}
    far                   {imprimir("Modificadores far", yytext());}
    far16                   {imprimir("Modificadores far16", yytext());}
    forward                   {imprimir("Modificadores forward", yytext());}
    generic                   {imprimir("Modificadores generic", yytext());}
    helper                   {imprimir("Modificadores helper", yytext());}
    implements                   {imprimir("Modificadores implements", yytext());}
    index                   {imprimir("Modificadores index", yytext());}
    interrupt                   {imprimir("Modificadores interrupt", yytext());}
    iocheck                   {imprimir("Modificadores iocheck", yytext());}
    local                   {imprimir("Modificadores local", yytext());}
    message                   {imprimir("Modificadores message", yytext());}
    name                   {imprimir("Modificadores name", yytext());}
    near                   {imprimir("Modificadores near", yytext());}
    nodefault                   {imprimir("Modificadores nodefault", yytext());}
    noreturn                   {imprimir("Modificadores noreturn", yytext());}
    nostackframe                   {imprimir("Modificadores nostackframe", yytext());}
    oldfpccall                   {imprimir("Modificadores oldfpccall", yytext());}
    otherwise                   {imprimir("Modificadores otherwise", yytext());}
    overload                   {imprimir("Modificadores overload", yytext());}
    override                   {imprimir("Modificadores override", yytext());}
    pascal                   {imprimir("Modificadores pascal", yytext());}
    platform                   {imprimir("Modificadores platform", yytext());}
    private                   {imprimir("Modificadores private", yytext());}
    protected                   {imprimir("Modificadores protected", yytext());}
    public                   {imprimir("Modificadores public", yytext());}
    published                   {imprimir("Modificadores published", yytext());}
    read                   {imprimir("Modificadores read", yytext());}
    register                   {imprimir("Modificadores register", yytext());}
    reintroduce                   {imprimir("Modificadores reintroduce", yytext());}
    result                   {imprimir("Modificadores result", yytext());}
    safecall                   {imprimir("Modificadores safecall", yytext());}
    saveregisters                   {imprimir("Modificadores saveregisters", yytext());}
    softfloat                   {imprimir("Modificadores softfloat", yytext());}
    specialize                   {imprimir("Modificadores specialize", yytext());}
    static                   {imprimir("Modificadores static", yytext());}
    stdcall                   {imprimir("Modificadores stdcall", yytext());}
    stored                   {imprimir("Modificadores stored", yytext());}
    strict                   {imprimir("Modificadores strict", yytext());}
    unaligned                   {imprimir("Modificadores unaligned", yytext());}
    unimplemented                   {imprimir("Modificadores unimplemented", yytext());}
    varargs                   {imprimir("Modificadores varargs", yytext());}
    virtual                   {imprimir("Modificadores virtual", yytext());}
    write                   {imprimir("Modificadores write", yytext());}

    integer                   {imprimir("Tipos_Ordinarios integer", yytext());}
    shortint                   {imprimir("Tipos_Ordinarios shortint", yytext());}
    smallint                   {imprimir("Tipos_Ordinarios smallint", yytext());}
    longint                   {imprimir("Tipos_Ordinarios longint", yytext());}
    longword                   {imprimir("Tipos_Ordinarios longword", yytext());}
    int64                   {imprimir("Tipos_Ordinarios int64", yytext());}
    byte                   {imprimir("Tipos_Ordinarios byte", yytext());}
    word                   {imprimir("Tipos_Ordinarios word", yytext());}
    cardinal                   {imprimir("Tipos_Ordinarios cardinal", yytext());}
    qword                   {imprimir("Tipos_Ordinarios qword", yytext());}
    boolean                   {imprimir("Tipos_Ordinarios boolean", yytext());}
    bytebool                   {imprimir("Tipos_Ordinarios bytebool", yytext());}
    wordbool                   {imprimir("Tipos_Ordinarios wordbool", yytext());}
    longbool                   {imprimir("Tipos_Ordinarios longbool", yytext());}
    qwordbool                   {imprimir("Tipos_Ordinarios qwordbool", yytext());}
    char                   {imprimir("Tipos_Ordinarios char", yytext());}

    real                   {imprimir("Tipos_Reais real", yytext());}
    single                   {imprimir("Tipos_Reais single", yytext());}
    double                   {imprimir("Tipos_Reais double", yytext());}
    extended                   {imprimir("Tipos_Reais extended", yytext());}
    comp                   {imprimir("Tipos_Reais comp", yytext());}
    currency                   {imprimir("Tipos_Reais currency", yytext());}


    {WHITESPACE}          {}
    {VARIABLE}            {imprimir("Identificador", yytext());}
    {DELIMITER}           {imprimir("Delimitador", yytext());}
    {COMMENT}             {imprimir("Comentario", yytext());}
    {ATTRIBUITION}        {imprimir("Sinal de Atrinuição", yytext());}
    {RELATIONAL}          {imprimir("Simbolo Relacional", yytext());}
    {INTEGER}             {imprimir("Numero Inteiro", yytext());}
    {REAL}                {imprimir("Numero Real", yytext());}
    {ARITHMETIC}          {imprimir("Simbolo Aritimetico", yytext());}
    {TERMINATE}           {imprimir("Simbolo Terminal", yytext());}
    {STRING}              {imprimir("String", yytext());}
    {POINTER}             {imprimir("Ponteiro", yytext());}
    [^]                  { throw new Error("Illegal character: "+yytext()+" at line "+(yyline+1)+", column "+(yycolumn+1) );}
}