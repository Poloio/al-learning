pageextension 50102 ListaClienteExtension extends "Customer List"
{
    layout
    {
        addafter(Name)
        {
            field("Bruh Code"; Rec."Bruh Code") { }
        }
    }
}