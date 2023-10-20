pageextension 60366 FBM_SalesOrdSubExt_MT_CO extends "Sales Order Subform"
{
    layout
    {
        
        modify("IDPIRPF IRPF")
        {

            visible = isvisES;
        }
        modify("IDPIRPF IRPF Amount")
        {

            visible = isvisES;
        }
        modify("IDPIRPF IRPF Group")
        {

            visible = isvisES;
        }
        modify("IDPIRPF Total IRPF Amount")
        {

            visible = isvisES;
        }
        modify("IDPIRPF TotalAmountWithVATWithoutIRPF")
        {

            visible = isvisES;
        }
        modify("VAT Bus. Posting Group PHL")
        {

            visible = isvisPH;
        }
        modify("WHT Product Posting Group PHL")
        {

            visible = isvisPH;
        }
        modify("WHT Business Posting Group PHL")
        {

            visible = isvisPH;
        }
    }
    trigger OnOpenPage()
    var
        uper: Codeunit "User Permissions";
    begin

        if compinfo.Get() then begin
            isvisES := compinfo."Country/Region Code" = 'ES';
            isvisPH := compinfo."Country/Region Code" = 'PH';
        end;


    end;

    var
        isvisES: Boolean;
        isvisPH: Boolean;
        compinfo: record "Company Information";
       

        
}
