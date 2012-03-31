.class Lcom/android/phone/MiuiSimContacts$SimContactsThread;
.super Ljava/lang/Thread;
.source "MiuiSimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiSimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimContactsThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mList:Landroid/util/SparseBooleanArray;

.field private mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;

.field final synthetic this$0:Lcom/android/phone/MiuiSimContacts;


# direct methods
.method public constructor <init>(Lcom/android/phone/MiuiSimContacts;Lcom/android/phone/MiuiSimContacts$SimContactOP;Landroid/util/SparseBooleanArray;)V
    .locals 1
    .parameter
    .parameter "op"
    .parameter "checkedList"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContacts;

    .line 52
    const-string v0, "ImportSelectedSimContactsThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->mCanceled:Z

    .line 53
    iput-object p2, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    .line 54
    iput-object p3, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->mList:Landroid/util/SparseBooleanArray;

    .line 55
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->mCanceled:Z

    .line 95
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 86
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->mCanceled:Z

    .line 88
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget-object v0, v0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 90
    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 59
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->mList:Landroid/util/SparseBooleanArray;

    if-nez v4, :cond_0

    .line 82
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-virtual {v4}, Lcom/android/phone/MiuiSimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 64
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->mList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 65
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 66
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->mList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 67
    .local v1, key:I
    iget-boolean v4, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->mCanceled:Z

    if-eqz v4, :cond_2

    .line 80
    .end local v1           #key:I
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget-object v4, v4, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 81
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-virtual {v4}, Lcom/android/phone/MiuiSimContacts;->finish()V

    goto :goto_0

    .line 69
    .restart local v1       #key:I
    :cond_2
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget-object v4, v4, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 70
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    sget-object v5, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne v4, v5, :cond_5

    .line 71
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget-object v4, v4, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget-object v5, v5, Lcom/android/phone/MiuiSimContacts;->mAccount:Landroid/accounts/Account;

    invoke-static {v4, v2, v5}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    .line 76
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget-object v4, v4, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 65
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_5
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    sget-object v5, Lcom/android/phone/MiuiSimContacts$SimContactOP;->DELETE:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne v4, v5, :cond_3

    .line 73
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget-object v5, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget-object v5, v5, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget-object v6, v6, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/phone/MiuiSimContacts;->access$000(Lcom/android/phone/MiuiSimContacts;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
