.class Lcom/android/updater/MainFragment$UpdateCheckTask;
.super Lcom/android/updater/tasks/BaseUpdateCheckerTask;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCheckTask"
.end annotation


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/updater/MainFragment;


# direct methods
.method public constructor <init>(Lcom/android/updater/MainFragment;Landroid/content/Context;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter "ctx"
    .parameter "pg"

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/updater/MainFragment$UpdateCheckTask;->this$0:Lcom/android/updater/MainFragment;

    .line 433
    invoke-direct {p0, p2}, Lcom/android/updater/tasks/BaseUpdateCheckerTask;-><init>(Landroid/content/Context;)V

    .line 434
    iput-object p3, p0, Lcom/android/updater/MainFragment$UpdateCheckTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 435
    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/android/updater/customTypes/FullUpdateInfo;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 439
    invoke-super {p0, p1}, Lcom/android/updater/tasks/BaseUpdateCheckerTask;->onPostExecute(Ljava/lang/Object;)V

    .line 440
    iget-object v1, p0, Lcom/android/updater/MainFragment$UpdateCheckTask;->this$0:Lcom/android/updater/MainFragment;

    invoke-static {v1, p1}, Lcom/android/updater/MainFragment;->access$002(Lcom/android/updater/MainFragment;Lcom/android/updater/customTypes/FullUpdateInfo;)Lcom/android/updater/customTypes/FullUpdateInfo;

    .line 441
    iget-object v1, p0, Lcom/android/updater/MainFragment$UpdateCheckTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/updater/MainFragment$UpdateCheckTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/updater/MainFragment$UpdateCheckTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 444
    :cond_0
    iget-boolean v1, p0, Lcom/android/updater/MainFragment$UpdateCheckTask;->mIsUnAuthorized:Z

    if-eqz v1, :cond_1

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.account.expired"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, expiredIntent:Landroid/content/Intent;
    const-string v1, "account"

    iget-object v2, p0, Lcom/android/updater/MainFragment$UpdateCheckTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/updater/utils/SysUtils;->getMIUIAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 447
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/android/updater/MainFragment$UpdateCheckTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 450
    .end local v0           #expiredIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 429
    check-cast p1, Lcom/android/updater/customTypes/FullUpdateInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/updater/MainFragment$UpdateCheckTask;->onPostExecute(Lcom/android/updater/customTypes/FullUpdateInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 454
    invoke-super {p0}, Lcom/android/updater/tasks/BaseUpdateCheckerTask;->onPreExecute()V

    .line 455
    iget-object v0, p0, Lcom/android/updater/MainFragment$UpdateCheckTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/updater/MainFragment$UpdateCheckTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 458
    :cond_0
    return-void
.end method
