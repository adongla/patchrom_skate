.class public Lcom/miui/milk/ui/CloudBaseFragment;
.super Landroid/app/Fragment;
.source "CloudBaseFragment.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;
.implements Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;"
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mIsBound:Z

.field protected mLoginLayout:Landroid/view/View;

.field protected mLogoutLayout:Landroid/view/View;

.field protected mNetWorkErrorDialog:Landroid/app/Dialog;

.field private mService:Lcom/miui/milk/service/CloudBackupService;

.field private mToast:Landroid/widget/Toast;

.field protected refreshRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 160
    new-instance v0, Lcom/miui/milk/ui/CloudBaseFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/CloudBaseFragment$4;-><init>(Lcom/miui/milk/ui/CloudBaseFragment;)V

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->refreshRunnable:Ljava/lang/Runnable;

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mIsBound:Z

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    .line 271
    new-instance v0, Lcom/miui/milk/ui/CloudBaseFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/CloudBaseFragment$6;-><init>(Lcom/miui/milk/ui/CloudBaseFragment;)V

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/milk/ui/CloudBaseFragment;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseFragment;->leave()V

    .line 103
    return-void
.end method

.method protected doBackup(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->taskIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f070057

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    :goto_0
    return-void

    .line 223
    :cond_0
    const-wide/16 v0, 0x0

    .line 225
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v2, :cond_1

    .line 226
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0, p1}, Lcom/miui/milk/service/CloudBackupService;->runBackup(Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 230
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    const-string v3, "TASK_ID"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/CloudBaseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method doBindService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 295
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mIsBound:Z

    .line 296
    return-void
.end method

.method public doRestore()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method protected doRestore(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    const-wide/16 v0, 0x0

    .line 205
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v2, :cond_0

    .line 206
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0, p1}, Lcom/miui/milk/service/CloudBackupService;->runRestore(Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 210
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    const-string v3, "TASK_ID"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/CloudBaseFragment;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method doUnbindService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mIsBound:Z

    .line 304
    :cond_0
    return-void
.end method

.method protected isSdcardLimit()Z
    .locals 3

    .prologue
    .line 79
    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Lcom/miui/backup/SysUtils;->enoughSpaceOnData(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    .line 82
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/backup/ui/ExceptionAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    const-string v1, "exception_message"

    const v2, 0x7f070055

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/CloudBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->startActivity(Landroid/content/Intent;)V

    .line 85
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public leave()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/miui/milk/ui/CloudBackupInfo;->reset()V

    .line 59
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 60
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 45
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudBaseFragment;->setHasOptionsMenu(Z)V

    .line 47
    invoke-static {}, Lcom/miui/backup/AppInitializer;->getInstance()Lcom/miui/backup/AppInitializer;

    move-result-object v0

    .line 48
    .local v0, appInit:Lcom/miui/backup/AppInitializer;
    invoke-virtual {v0}, Lcom/miui/backup/AppInitializer;->init()Z

    .line 49
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    .line 51
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    .line 52
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    .line 53
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    .line 54
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->doUnbindService(Landroid/content/Context;)V

    .line 188
    invoke-static {}, Lcom/miui/milk/ui/CloudBackupInfo;->reset()V

    .line 190
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-virtual {v0}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-virtual {v0}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->dismissDialog()V

    .line 192
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->cancel(Z)Z

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    .line 195
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 196
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->doBindService(Landroid/content/Context;)V

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->refreshUI(Z)Z

    .line 181
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 182
    return-void
.end method

.method public refreshBackupInfo()V
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->refreshUI(Z)Z

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshUI(Z)Z
    .locals 7
    .parameter "requestError"

    .prologue
    const/4 v3, 0x1

    .line 112
    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_5

    .line 113
    :cond_0
    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mNetWorkErrorDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mNetWorkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 114
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f07008e

    invoke-virtual {p0, v4}, Lcom/miui/milk/ui/CloudBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, errorString:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    if-eqz v4, :cond_2

    .line 117
    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-virtual {v4}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->getErrorStatusCode()I

    move-result v1

    .line 118
    .local v1, errorStatusCode:I
    if-lez v1, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/miui/milk/util/SysHelpers;->getNetworkErrorString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .end local v1           #errorStatusCode:I
    :cond_2
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07008f

    new-instance v6, Lcom/miui/milk/ui/CloudBaseFragment$3;

    invoke-direct {v6, p0}, Lcom/miui/milk/ui/CloudBaseFragment$3;-><init>(Lcom/miui/milk/ui/CloudBaseFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070005

    new-instance v6, Lcom/miui/milk/ui/CloudBaseFragment$2;

    invoke-direct {v6, p0}, Lcom/miui/milk/ui/CloudBaseFragment$2;-><init>(Lcom/miui/milk/ui/CloudBaseFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/miui/milk/ui/CloudBaseFragment$1;

    invoke-direct {v5, p0}, Lcom/miui/milk/ui/CloudBaseFragment$1;-><init>(Lcom/miui/milk/ui/CloudBaseFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mNetWorkErrorDialog:Landroid/app/Dialog;

    .line 147
    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mNetWorkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 154
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v2           #errorString:Ljava/lang/String;
    :cond_3
    :goto_0
    sget-object v4, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-nez v4, :cond_4

    .line 155
    const/4 v3, 0x0

    .line 157
    :cond_4
    return v3

    .line 149
    :cond_5
    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mNetWorkErrorDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-eqz v4, :cond_3

    .line 150
    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mNetWorkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 151
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mNetWorkErrorDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected restore(Z)V
    .locals 5
    .parameter "hasContact"

    .prologue
    .line 236
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    const v2, 0x7f07008e

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/CloudBaseFragment;->showToast(I)V

    .line 264
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v2}, Lcom/miui/milk/service/CloudBackupService;->taskIsRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f070057

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 248
    :cond_1
    if-eqz p1, :cond_2

    .line 249
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    .local v1, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070072

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070073

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000d

    new-instance v4, Lcom/miui/milk/ui/CloudBaseFragment$5;

    invoke-direct {v4, p0}, Lcom/miui/milk/ui/CloudBaseFragment$5;-><init>(Lcom/miui/milk/ui/CloudBaseFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070005

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 259
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 260
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 262
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v1           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseFragment;->doRestore()V

    goto :goto_0
.end method

.method protected retryComputeBackupInfo()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->retryComputeBackupInfo(Z)Z

    move-result v0

    return v0
.end method

.method protected retryComputeBackupInfo(Z)Z
    .locals 4
    .parameter "showDialog"

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 68
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v2, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    new-instance v2, Lcom/miui/milk/ui/ComputeBackupInfoTask;

    iget-object v3, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0, p1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;-><init>(Landroid/app/Activity;Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;Z)V

    iput-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    .line 70
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    const/4 v1, 0x1

    .line 75
    :goto_0
    return v1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseFragment;->refreshBackupInfo()V

    goto :goto_0
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 92
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 93
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v1, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Lcom/miui/milk/ui/ComputeBackupInfoTask;

    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lcom/miui/milk/ui/ComputeBackupInfoTask;-><init>(Landroid/app/Activity;Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;Z)V

    iput-object v1, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    .line 95
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 98
    .end local v0           #accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    :cond_0
    return-void
.end method

.method protected showToast(I)V
    .locals 2
    .parameter "textId"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mToast:Landroid/widget/Toast;

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 172
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method
