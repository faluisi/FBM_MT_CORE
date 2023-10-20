pageextension 60304 FBM_CompInfoExt_MT_CO extends "Company Information"
{
    layout
    {



        modify("BIR PHL")
        {
            Visible = isvisPH;
        }


    }
    trigger
     OnOpenPage()


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