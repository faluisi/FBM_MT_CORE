pageextension 60300 FBM_ItemCardExt_MT_CO extends "Item Card"
{
    layout
    {
        addafter("Description")
        {
            field("Description 2"; rec."Description 2")
            {
                ApplicationArea = all;
            }

        }

    }



}
