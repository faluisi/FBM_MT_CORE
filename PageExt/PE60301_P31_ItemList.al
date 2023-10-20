pageextension 60301 FBM_ItemListExt_MT_CO extends "Item List"
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