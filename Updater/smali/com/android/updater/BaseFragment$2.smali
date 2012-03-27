.class Lcom/android/updater/BaseFragment$2;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/BaseFragment;


# direct methods
.method constructor <init>(Lcom/android/updater/BaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/updater/BaseFragment$2;->this$0:Lcom/android/updater/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 212
    iget-object v2, p0, Lcom/android/updater/BaseFragment$2;->this$0:Lcom/android/updater/BaseFragment;

    iget-object v2, v2, Lcom/android/updater/BaseFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/updater/BaseFragment$2;->this$0:Lcom/android/updater/BaseFragment;

    invoke-virtual {v2}, Lcom/android/updater/BaseFragment;->needDownload()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    sget-boolean v2, Lcom/android/updater/BaseFragment;->MANUALLY_APPLY_UPDATE:Z

    if-eqz v2, :cond_2

    .line 217
    iget-object v2, p0, Lcom/android/updater/BaseFragment$2;->this$0:Lcom/android/updater/BaseFragment;

    invoke-virtual {v2}, Lcom/android/updater/BaseFragment;->rebootRecovery()V

    goto :goto_0

    .line 221
    :cond_2
    const/4 v0, 0x0

    .line 222
    .local v0, file:Ljava/io/File;
    iget-object v2, p0, Lcom/android/updater/BaseFragment$2;->this$0:Lcom/android/updater/BaseFragment;

    iget-object v2, v2, Lcom/android/updater/BaseFragment;->mUpdateFile:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 223
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    iget-object v2, p0, Lcom/android/updater/BaseFragment$2;->this$0:Lcom/android/updater/BaseFragment;

    iget-object v2, v2, Lcom/android/updater/BaseFragment;->mUpdateFile:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v0       #file:Ljava/io/File;
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_5

    .line 226
    :cond_4
    iget-object v2, p0, Lcom/android/updater/BaseFragment$2;->this$0:Lcom/android/updater/BaseFragment;

    iget-object v2, v2, Lcom/android/updater/BaseFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f050029

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 231
    :cond_5
    iget-object v2, p0, Lcom/android/updater/BaseFragment$2;->this$0:Lcom/android/updater/BaseFragment;

    invoke-static {v2}, Lcom/android/updater/BaseFragment;->access$000(Lcom/android/updater/BaseFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/updater/BaseFragment$2;->this$0:Lcom/android/updater/BaseFragment;

    invoke-static {v2}, Lcom/android/updater/BaseFragment;->access$000(Lcom/android/updater/BaseFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    :cond_6
    const v1, 0x7f05002e

    .line 235
    .local v1, upadteTextId:I
    sget-boolean v2, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v2, :cond_7

    .line 236
    const v1, 0x7f050007

    .line 238
    :cond_7
    iget-object v2, p0, Lcom/android/updater/BaseFragment$2;->this$0:Lcom/android/updater/BaseFragment;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/updater/BaseFragment$2;->this$0:Lcom/android/updater/BaseFragment;

    iget-object v4, v4, Lcom/android/updater/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f05002d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050030

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f05002f

    new-instance v5, Lcom/android/updater/BaseFragment$2$2;

    invoke-direct {v5, p0}, Lcom/android/updater/BaseFragment$2$2;-><init>(Lcom/android/updater/BaseFragment$2;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/updater/BaseFragment$2$1;

    invoke-direct {v4, p0}, Lcom/android/updater/BaseFragment$2$1;-><init>(Lcom/android/updater/BaseFragment$2;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/updater/BaseFragment;->access$002(Lcom/android/updater/BaseFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 264
    iget-object v2, p0, Lcom/android/updater/BaseFragment$2;->this$0:Lcom/android/updater/BaseFragment;

    invoke-static {v2}, Lcom/android/updater/BaseFragment;->access$000(Lcom/android/updater/BaseFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Lcom/android/updater/BaseFragment$2$3;

    invoke-direct {v3, p0}, Lcom/android/updater/BaseFragment$2$3;-><init>(Lcom/android/updater/BaseFragment$2;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 270
    iget-object v2, p0, Lcom/android/updater/BaseFragment$2;->this$0:Lcom/android/updater/BaseFragment;

    invoke-static {v2}, Lcom/android/updater/BaseFragment;->access$000(Lcom/android/updater/BaseFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
