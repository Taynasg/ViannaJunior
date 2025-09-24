using Aula06;

var massaChocolate = new FichaTecnica
{
    Descricao = "Massa de chocolate",
    Quantidade = 1,
    Unidade = "unid",
    Insumos = [
        new FichaTecnica
        {
            Descricao = "Farinha de trigo",
            Quantidade = 250,
            Unidade = "g"
        },
        new FichaTecnica
        {
            Descricao = "Leite",
            Quantidade = 200,
            Unidade = "ml"
        },
        new FichaTecnica
        {
            Descricao = "Cacau em pó",
            Quantidade = 4,
            Unidade = "colheres de sopa"
        },
        new FichaTecnica
        {
            Descricao = "Ovos",
            Quantidade = 2,
            Unidade = "unid"
        }
    ]
};

var recheioBrigadeiroEmDobro = new FichaTecnica
{
    Descricao = "Brigadeiro",
    Quantidade = 2,
    Unidade = "unid",
    Insumos = [
        new FichaTecnica
        {
            Descricao = "Cacau em pó",
            Quantidade = 4,
            Unidade = "colheres de sopa"
        },
        new FichaTecnica
        {
            Descricao = "Leite condensado",
            Quantidade = 1,
            Unidade = "lata"
        },
        new FichaTecnica
        {
            Descricao = "Manteiga",
            Quantidade = 2,
            Unidade = "colheres"
        }
    ]
};

var recheioLeiteNinho = new FichaTecnica
{
    Descricao = "Leite ninho",
    Quantidade = 1,
    Unidade = "unid",
    Insumos = [
        new FichaTecnica
        {
            Descricao = "Leite ninho",
            Quantidade = 1,
            Unidade = "xícara"
        },
        new FichaTecnica
        {
            Descricao = "Leite condensado",
            Quantidade = 1,
            Unidade = "lata"
        },
        new FichaTecnica
        {
            Descricao = "Manteiga",
            Quantidade = 2,
            Unidade = "colheres"
        }
    ]
};

var boloChocolatra = new FichaTecnica
{
    Descricao = "Bolo chocólatra",
    Quantidade = 1,
    Unidade = "unid",
    Insumos = [
        massaChocolate,
        recheioBrigadeiroEmDobro
    ]
};

var boloNinhoComChocolate = new FichaTecnica
{
    Descricao = "Bolo de Chocolate com Recheio de Leite Ninho",
    Quantidade = 1,
    Unidade = "unid",
    Insumos = [
        massaChocolate,
        recheioLeiteNinho
    ]
};

ImprimirIngredientes(boloChocolatra, 2);
Console.WriteLine("-----------------------------");
ImprimirIngredientes(boloNinhoComChocolate, 3);
Console.WriteLine("-----------------------------");

void ImprimirIngredientes(FichaTecnica ficha, double quantidade, int nivel = 0)
{
    if (ficha == null)
        return;

    Console.WriteLine($"{GetNumeroEspacos(nivel)}{ficha.Descricao}: {ficha.Quantidade * quantidade} {ficha.Unidade}");

    if (ficha.Insumos == null || ficha.Insumos.Length == 0)
        return;

    foreach (var insumo in ficha.Insumos)
        ImprimirIngredientes(insumo, ficha.Quantidade * quantidade, nivel + 1);
}

string GetNumeroEspacos(int nivel)
{
    return "".PadLeft(nivel * 4);
}