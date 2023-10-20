pageextension 60379 FBM_PurchSetupExt_MT_CO extends "Purchases & Payables Setup"
{
    layout
    {
        addlast("Local Functionalities PHL")
        {
            field(FBM_Enable_CompMsg; Rec.FBM_Enable_CompMsg)
            {
                ApplicationArea = all;
            }
        }
    }
}