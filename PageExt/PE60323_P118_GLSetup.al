pageextension 60323 FBM_GLSetupExt_MT_CO extends "General Ledger Setup"
{
    layout
    {

        modify("Local Functionalities PHL")
        {
            Visible = visph;
        }

        addlast("Local Functionalities PHL")
        {
            field(FBM_ExchRateFluctuation; Rec.FBM_ExchRateFluctuation)
            {
                ApplicationArea = all;



            }



        }

    }
    trigger
    OnOpenPage()
    begin
        cinfo.get();
        visph := (cinfo."Country/Region Code" = 'PH')

    end;

    var
        cinfo: record "Company Information";
        visph: Boolean;


}
