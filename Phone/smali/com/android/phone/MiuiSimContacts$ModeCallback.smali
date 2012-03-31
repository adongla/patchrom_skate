.class Lcom/android/phone/MiuiSimContacts$ModeCallback;
.super Landroid/widget/EditableListView$EditableModeCallback;
.source "MiuiSimContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiSimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeCallback"
.end annotation


# instance fields
.field private mActivity:Lcom/android/phone/MiuiSimContacts;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/EditableListView;)V
    .locals 0
    .parameter "activity"
    .parameter "editableListView"

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Landroid/widget/EditableListView$EditableModeCallback;-><init>(Landroid/app/Activity;Landroid/widget/EditableListView;)V

    .line 217
    check-cast p1, Lcom/android/phone/MiuiSimContacts;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mActivity:Lcom/android/phone/MiuiSimContacts;

    .line 218
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 222
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mActivity:Lcom/android/phone/MiuiSimContacts;

    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$100(Lcom/android/phone/MiuiSimContacts;)Landroid/widget/EditableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return v5

    .line 226
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 228
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 231
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mActivity:Lcom/android/phone/MiuiSimContacts;

    const v1, 0x7f0c031c

    const v2, 0x7f0c031b

    sget-object v3, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mActivity:Lcom/android/phone/MiuiSimContacts;

    invoke-static {v4}, Lcom/android/phone/MiuiSimContacts;->access$100(Lcom/android/phone/MiuiSimContacts;)Landroid/widget/EditableListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/MiuiSimContacts;->access$200(Lcom/android/phone/MiuiSimContacts;IILcom/android/phone/MiuiSimContacts$SimContactOP;Landroid/util/SparseBooleanArray;)V

    goto :goto_0

    .line 236
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mActivity:Lcom/android/phone/MiuiSimContacts;

    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$300(Lcom/android/phone/MiuiSimContacts;)V

    goto :goto_0

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0700f8 -> :sswitch_1
        0x7f0700f9 -> :sswitch_2
    .end sparse-switch
.end method
