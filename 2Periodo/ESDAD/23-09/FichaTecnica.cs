using System;

namespace Aula06;

public class FichaTecnica
{
    public string Descricao { get; set; } = string.Empty;
    public double Quantidade { get; set; }
    public string Unidade { get; set; } = string.Empty;
    public FichaTecnica[]? Insumos { get; set; } = null;
}
