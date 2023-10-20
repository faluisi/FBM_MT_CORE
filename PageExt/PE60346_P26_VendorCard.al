pageextension 60346 FBM_VendorCardExt_MT_CO extends "Vendor Card"
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
    trigger OnOpenPage()
    var

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