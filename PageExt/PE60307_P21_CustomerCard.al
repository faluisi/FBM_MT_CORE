pageextension 60307 FBM_CustomerCardExt_MT_CO extends "Customer Card"
{

    layout
    {



        modify("IDPIRPF IRPF Group")
        {
            Visible = isvisES;

        }
        modify("WHT Business Posting Group PHL")
        {
            Visible = isvisPH;

        }

    }









    var
        isvisES: Boolean;
        isvisPH: Boolean;
        compinfo: record "Company Information";







    trigger OnOpenPage()
    var
        uper: Codeunit "User Permissions";
    begin

        compinfo.get;
        isvisES := compinfo."Country/Region Code" = 'ES';
        isvisPH := compinfo."Country/Region Code" = 'PH';
    end;



}
