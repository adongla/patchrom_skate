.class Lcom/android/phone/MiuiSimContacts$1;
.super Ljava/lang/Object;
.source "MiuiSimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiSimContacts;->showDeleteSelectedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiSimContacts;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiSimContacts;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$1;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$1;->this$0:Lcom/android/phone/MiuiSimContacts;

    const v1, 0x7f0c0392

    const v2, 0x7f0c0391

    sget-object v3, Lcom/android/phone/MiuiSimContacts$SimContactOP;->DELETE:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$1;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-static {v4}, Lcom/android/phone/MiuiSimContacts;->access$100(Lcom/android/phone/MiuiSimContacts;)Landroid/widget/EditableListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/MiuiSimContacts;->access$200(Lcom/android/phone/MiuiSimContacts;IILcom/android/phone/MiuiSimContacts$SimContactOP;Landroid/util/SparseBooleanArray;)V

    .line 182
    return-void
.end method
