pageextension 60328 FBM_PaymentJournalExt_MT_CO extends "Payment Journal"
{
    layout
    {
        
        addafter("Bal. Account No.")
        {
            field("Check No. PHL"; rec."Check No. PHL")
            {
                ApplicationArea = all;
            }
        }
       
    }
    
    
}
