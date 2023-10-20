pageextension 60329 "FBM_PurchInvExt_MT_CO" extends "Purchase Invoice"
{
    layout
    {
       
        modify("IDPIRPF IRPF Group")
        {
            Visible = isvisES;
        }
    }
    
    trigger
   OnOpenPage()

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