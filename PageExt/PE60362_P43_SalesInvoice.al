pageextension 60362 FBM_SalesInvExt_MT_CO extends "Sales Invoice"
{
    layout
    {
        
        modify("Sell-to Customer No.")
        {
            trigger
            OnAfterValidate()
            var
                mediaid: Guid;
                index: Integer;
            begin
                if usersetup.get(UserId) then begin
                    FOR Index := 1 to usersetup."Signature PHL".COUNT DO BEGIN
                        mediaid := usersetup."Signature PHL".Item(1);
                        rec.FBM_Signature_pic.Insert(mediaid);
                        rec.Modify();
                    end;

                end;

            end;
        }
        

    }


    




    var
        

        usersetup: record "User Setup";
       


}
