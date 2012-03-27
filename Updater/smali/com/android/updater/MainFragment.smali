.class public Lcom/android/updater/MainFragment;
.super Lcom/android/updater/BaseFragment;
.source "MainFragment.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/MainFragment$UpdateCheckTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/updater/BaseFragment;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddAccountBar:Landroid/view/View;

.field private final mAddCountListener:Landroid/view/View$OnClickListener;

.field private mAvailableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;

.field private mCheckUpdateDialog:Landroid/app/ProgressDialog;

.field private mClickCheckUpdateTimes:I

.field private final mCurrentVersionListener:Landroid/view/View$OnClickListener;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mNeedDownloadCurrentRom:Z

.field private mNewUpdateBar:Landroid/view/View;

.field private mNewUpdateContent:Landroid/widget/TextView;

.field private final mNewUpdateListener:Landroid/view/View$OnClickListener;

.field private mRomTitle:Landroid/widget/TextView;

.field private mSignInInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/updater/BaseFragment;-><init>()V

    .line 317
    new-instance v0, Lcom/android/updater/MainFragment$2;

    invoke-direct {v0, p0}, Lcom/android/updater/MainFragment$2;-><init>(Lcom/android/updater/MainFragment;)V

    iput-object v0, p0, Lcom/android/updater/MainFragment;->mAddCountListener:Landroid/view/View$OnClickListener;

    .line 323
    new-instance v0, Lcom/android/updater/MainFragment$3;

    invoke-direct {v0, p0}, Lcom/android/updater/MainFragment$3;-><init>(Lcom/android/updater/MainFragment;)V

    iput-object v0, p0, Lcom/android/updater/MainFragment;->mCurrentVersionListener:Landroid/view/View$OnClickListener;

    .line 332
    new-instance v0, Lcom/android/updater/MainFragment$4;

    invoke-direct {v0, p0}, Lcom/android/updater/MainFragment$4;-><init>(Lcom/android/updater/MainFragment;)V

    iput-object v0, p0, Lcom/android/updater/MainFragment;->mNewUpdateListener:Landroid/view/View$OnClickListener;

    .line 350
    new-instance v0, Lcom/android/updater/MainFragment$5;

    invoke-direct {v0, p0}, Lcom/android/updater/MainFragment$5;-><init>(Lcom/android/updater/MainFragment;)V

    iput-object v0, p0, Lcom/android/updater/MainFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/updater/MainFragment;)Lcom/android/updater/customTypes/FullUpdateInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/updater/MainFragment;->mAvailableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/updater/MainFragment;Lcom/android/updater/customTypes/FullUpdateInfo;)Lcom/android/updater/customTypes/FullUpdateInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/updater/MainFragment;->mAvailableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/updater/MainFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/updater/MainFragment;->mCheckUpdateDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/updater/MainFragment;Lcom/android/updater/customTypes/UpdateInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/updater/MainFragment;->setNewUpdateInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/updater/MainFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/updater/MainFragment;->mClickCheckUpdateTimes:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/updater/MainFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/updater/MainFragment;->mClickCheckUpdateTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/updater/MainFragment;->mClickCheckUpdateTimes:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/updater/MainFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/updater/MainFragment;->mNeedDownloadCurrentRom:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/updater/MainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/updater/MainFragment;->updateContent()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/updater/MainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/updater/MainFragment;->downloadCurrentRom()V

    return-void
.end method

.method private downloadCurrentRom()V
    .locals 5

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/updater/MainFragment;->mAvailableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;

    invoke-virtual {v2}, Lcom/android/updater/customTypes/FullUpdateInfo;->getLatestVersion()Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v1

    .line 141
    .local v1, updateInfo:Lcom/android/updater/customTypes/UpdateInfo;
    if-nez v1, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f05004b

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 145
    :cond_0
    invoke-static {v1}, Lcom/android/updater/utils/SysUtils;->getRomPath(Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, romPath:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 147
    invoke-static {v1}, Lcom/android/updater/ApplyUpdateFragment;->setUpdateInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 148
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/android/updater/utils/StringUtils;->getModName(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/updater/MainFragment;->applyUpdate(Landroid/net/Uri;Ljava/lang/String;)V

    .line 150
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/updater/MainFragment;->mNeedDownloadCurrentRom:Z

    .line 151
    return-void
.end method

.method private setNewUpdateInfo(Lcom/android/updater/customTypes/UpdateInfo;)V
    .locals 5
    .parameter "updateInfo"

    .prologue
    const/4 v4, 0x1

    .line 405
    invoke-virtual {p0, p1}, Lcom/android/updater/MainFragment;->setVersionInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 406
    iget-object v2, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f020049

    invoke-static {v2, v3}, Lcom/android/updater/utils/SysUtils;->showBubble(Landroid/content/Context;I)V

    .line 408
    iget-object v2, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/android/updater/utils/StringUtils;->getModName(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, updateContent:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/updater/MainFragment;->mNewUpdateBar:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v2, p0, Lcom/android/updater/MainFragment;->mNewUpdateContent:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v2, p0, Lcom/android/updater/MainFragment;->mNewUpdateBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/updater/MainFragment;->mNewUpdateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    invoke-static {p1}, Lcom/android/updater/utils/SysUtils;->checkExistingRomFile(Lcom/android/updater/customTypes/UpdateInfo;)Ljava/io/File;

    move-result-object v0

    .line 415
    .local v0, romFile:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {p1}, Lcom/android/updater/customTypes/UpdateInfo;->getChecksum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/updater/MainFragment;->validateRomFile(Ljava/io/File;Ljava/lang/String;)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/updater/MainFragment;->updateMode(I)V

    .line 421
    iget-object v2, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/updater/utils/SysUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/updater/MainFragment;->showDownloading()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v4, p1}, Lcom/android/updater/utils/SysUtils;->downloadUpdate(Landroid/content/Context;ZLcom/android/updater/customTypes/UpdateInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/updater/MainFragment;->downloadRequestedUpdate(Lcom/android/updater/customTypes/UpdateInfo;)V

    goto :goto_0
.end method

.method private updateContent()V
    .locals 3

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/updater/MainFragment;->mAvailableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/updater/MainFragment;->mAvailableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;

    iget-object v1, v1, Lcom/android/updater/customTypes/FullUpdateInfo;->roms:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/updater/MainFragment;->mAvailableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;

    iget-object v1, v1, Lcom/android/updater/customTypes/FullUpdateInfo;->roms:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/updater/MainFragment;->mAvailableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;

    iget-object v1, v1, Lcom/android/updater/customTypes/FullUpdateInfo;->roms:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/updater/customTypes/UpdateInfo;

    .line 296
    .local v0, currui:Lcom/android/updater/customTypes/UpdateInfo;
    iget-object v1, p0, Lcom/android/updater/MainFragment;->mPreferences:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v1, v0}, Lcom/android/updater/utils/Preferences;->setCurrVersionInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 299
    .end local v0           #currui:Lcom/android/updater/customTypes/UpdateInfo;
    :cond_0
    invoke-direct {p0}, Lcom/android/updater/MainFragment;->updateTitle()V

    .line 300
    invoke-direct {p0}, Lcom/android/updater/MainFragment;->updateSignIn()V

    .line 301
    return-void
.end method

.method private updateSignIn()V
    .locals 10

    .prologue
    const/16 v9, 0x2710

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 257
    iget-object v6, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/updater/utils/SysUtils;->getMIUIAccountToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, token:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 260
    iget-object v6, p0, Lcom/android/updater/MainFragment;->mAddAccountBar:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v6, p0, Lcom/android/updater/MainFragment;->mSignInInfo:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v6, p0, Lcom/android/updater/MainFragment;->mPreferences:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v6}, Lcom/android/updater/utils/Preferences;->getRank()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, rank:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/updater/MainFragment;->mPreferences:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v6}, Lcom/android/updater/utils/Preferences;->getTotal()Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, total:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/updater/MainFragment;->mPreferences:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v6}, Lcom/android/updater/utils/Preferences;->getVersion()Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, version:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 267
    iget-object v6, p0, Lcom/android/updater/MainFragment;->mSignInInfo:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    const v2, 0x7f05004e

    .line 269
    .local v2, signinInfoId:I
    const/16 v0, 0x2710

    .line 271
    .local v0, MAX:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v9, :cond_0

    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gt v6, v9, :cond_2

    .line 273
    const v2, 0x7f05004f

    .line 281
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/updater/MainFragment;->mSignInInfo:Landroid/widget/TextView;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object v5, v7, v8

    invoke-virtual {p0, v2, v7}, Lcom/android/updater/MainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .end local v0           #MAX:I
    .end local v1           #rank:Ljava/lang/String;
    .end local v2           #signinInfoId:I
    .end local v4           #total:Ljava/lang/String;
    .end local v5           #version:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 275
    .restart local v0       #MAX:I
    .restart local v1       #rank:Ljava/lang/String;
    .restart local v2       #signinInfoId:I
    .restart local v4       #total:Ljava/lang/String;
    .restart local v5       #version:Ljava/lang/String;
    :cond_2
    const v2, 0x7f050050

    goto :goto_0

    .line 286
    .end local v0           #MAX:I
    .end local v1           #rank:Ljava/lang/String;
    .end local v2           #signinInfoId:I
    .end local v4           #total:Ljava/lang/String;
    .end local v5           #version:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/updater/MainFragment;->mSignInInfo:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v6, p0, Lcom/android/updater/MainFragment;->mAddAccountBar:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v6, p0, Lcom/android/updater/MainFragment;->mAddAccountBar:Landroid/view/View;

    iget-object v7, p0, Lcom/android/updater/MainFragment;->mAddCountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 278
    .restart local v0       #MAX:I
    .restart local v1       #rank:Ljava/lang/String;
    .restart local v2       #signinInfoId:I
    .restart local v4       #total:Ljava/lang/String;
    .restart local v5       #version:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 3

    .prologue
    .line 248
    iget-object v2, p0, Lcom/android/updater/MainFragment;->mPreferences:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v2}, Lcom/android/updater/utils/Preferences;->getCurrVersionInfo()Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v0

    .line 249
    .local v0, ui:Lcom/android/updater/customTypes/UpdateInfo;
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getModVersion()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, version:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/android/updater/utils/StringUtils;->getUpdateModName(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/android/updater/utils/StringUtils;->getModName(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;

    move-result-object v1

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/android/updater/MainFragment;->mRomTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method


# virtual methods
.method public checkForUpdates()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 387
    iget-object v1, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/updater/utils/SysUtils;->isConnectivityActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f05003f

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 398
    :goto_0
    return-void

    .line 392
    :cond_0
    const v1, 0x7f050018

    invoke-virtual {p0, v1}, Lcom/android/updater/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v0, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/updater/MainFragment;->mCheckUpdateDialog:Landroid/app/ProgressDialog;

    .line 396
    iget-object v1, p0, Lcom/android/updater/MainFragment;->mCheckUpdateDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/updater/MainFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 397
    new-instance v1, Lcom/android/updater/MainFragment$UpdateCheckTask;

    iget-object v2, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/updater/MainFragment;->mCheckUpdateDialog:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/updater/MainFragment$UpdateCheckTask;-><init>(Lcom/android/updater/MainFragment;Landroid/content/Context;Landroid/app/ProgressDialog;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/updater/MainFragment$UpdateCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected needDownload()Z
    .locals 2

    .prologue
    .line 340
    invoke-super {p0}, Lcom/android/updater/BaseFragment;->needDownload()Z

    move-result v0

    .line 341
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/updater/MainFragment;->mUpdateFile:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/android/updater/MainFragment;->applyUpdate(Landroid/net/Uri;)V

    .line 344
    :cond_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/updater/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/updater/MainFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, view:Landroid/view/View;
    const v2, 0x7f080015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/MainFragment;->mRomTitle:Landroid/widget/TextView;

    .line 79
    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, titleContent:Landroid/view/View;
    iget-object v2, p0, Lcom/android/updater/MainFragment;->mCurrentVersionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/MainFragment;->mAddAccountBar:Landroid/view/View;

    .line 84
    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/MainFragment;->mSignInInfo:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f080013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/MainFragment;->mNewUpdateContent:Landroid/widget/TextView;

    .line 87
    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/MainFragment;->mNewUpdateBar:Landroid/view/View;

    .line 89
    iget-object v2, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "update_info"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "update_info"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/updater/customTypes/FullUpdateInfo;

    iput-object v2, p0, Lcom/android/updater/MainFragment;->mAvailableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;

    .line 91
    iget-object v2, p0, Lcom/android/updater/MainFragment;->mAvailableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;

    invoke-virtual {v2}, Lcom/android/updater/customTypes/FullUpdateInfo;->getUpdateInfo()Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/updater/MainFragment;->setNewUpdateInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/android/updater/MainFragment;->showDownloading()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/updater/MainFragment;->updateMode(I)V

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/android/updater/MainFragment;->updateContent()V

    .line 101
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/android/updater/MainFragment;->checkForUpdates()V

    .line 94
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/updater/MainFragment;->updateMode(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 227
    packed-switch p1, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 229
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 230
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 231
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/updater/ApplyUpdateFragment;->setUpdateInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 232
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/updater/MainFragment;->applyUpdate(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/updater/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 106
    const/4 v1, 0x1

    const v2, 0x7f050018

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 107
    .local v0, addAccountItem:Landroid/view/MenuItem;
    const v1, 0x7f020008

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 108
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 68
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/updater/MainFragment;->mCheckUpdateDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/updater/MainFragment;->mCheckUpdateDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/updater/MainFragment;->mCheckUpdateDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 243
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/updater/MainFragment;->mCheckUpdateDialog:Landroid/app/ProgressDialog;

    .line 244
    invoke-super {p0}, Lcom/android/updater/BaseFragment;->onDestroy()V

    .line 245
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 221
    invoke-super {p0, p1}, Lcom/android/updater/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    :goto_0
    return v9

    .line 157
    :sswitch_0
    iget-object v10, p0, Lcom/android/updater/MainFragment;->mAvailableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;

    if-nez v10, :cond_0

    .line 158
    iput-boolean v9, p0, Lcom/android/updater/MainFragment;->mNeedDownloadCurrentRom:Z

    .line 159
    invoke-virtual {p0}, Lcom/android/updater/MainFragment;->checkForUpdates()V

    .line 160
    invoke-virtual {p0, v12}, Lcom/android/updater/MainFragment;->updateMode(I)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/android/updater/MainFragment;->downloadCurrentRom()V

    goto :goto_0

    .line 168
    :sswitch_1
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.PICK"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v4, intent:Landroid/content/Intent;
    invoke-static {}, Lmiui/os/Environment;->getStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 170
    .local v7, uri:Landroid/net/Uri;
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "zip"

    aput-object v11, v2, v10

    .line 173
    .local v2, exts:[Ljava/lang/String;
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 174
    const-string v10, "ext_filter"

    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v10, "ext_file_first"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    const/4 v10, 0x1

    invoke-virtual {p0, v4, v10}, Lcom/android/updater/MainFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    .end local v2           #exts:[Ljava/lang/String;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 178
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iget-object v10, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f05005c

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 183
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :sswitch_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 184
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.Settings$DeviceInfoSettingsActivity"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v4}, Lcom/android/updater/MainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 189
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_3
    iget-object v10, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 190
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f030001

    invoke-virtual {v3, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 191
    .local v8, view:Landroid/view/View;
    const v10, 0x7f08000f

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    .line 192
    .local v6, switchViewForWifi:Landroid/widget/Switch;
    iget-object v10, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/android/updater/utils/SysUtils;->isCheckUpdateOnlyWifiAvailable(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 193
    const v10, 0x7f080011

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    .line 194
    .local v5, switchViewForBranch:Landroid/widget/Switch;
    iget-object v10, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/android/updater/utils/SysUtils;->isUpdateStableVersionOnly(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 200
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f050059

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f050025

    new-instance v12, Lcom/android/updater/MainFragment$1;

    invoke-direct {v12, p0, v6, v5}, Lcom/android/updater/MainFragment$1;-><init>(Lcom/android/updater/MainFragment;Landroid/widget/Switch;Landroid/widget/Switch;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f050020

    invoke-virtual {v10, v11, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 212
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 217
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #switchViewForBranch:Landroid/widget/Switch;
    .end local v6           #switchViewForWifi:Landroid/widget/Switch;
    .end local v8           #view:Landroid/view/View;
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/updater/MainFragment;->checkForUpdates()V

    goto/16 :goto_0

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x7f080020 -> :sswitch_0
        0x7f080021 -> :sswitch_1
        0x7f080022 -> :sswitch_3
        0x7f080023 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/updater/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 114
    const v1, 0x7f08001f

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeGroup(I)V

    .line 115
    iget-object v1, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 116
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f070001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 118
    sget-boolean v1, Lcom/android/updater/MainFragment;->MANUALLY_APPLY_UPDATE:Z

    if-eqz v1, :cond_0

    .line 119
    const v1, 0x7f08001c

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 122
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/updater/DualSystem;->canSwitch()Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    :cond_1
    const v1, 0x7f08001d

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/android/updater/MainFragment;->mAvailableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/updater/MainFragment;->mAvailableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;

    invoke-virtual {v1}, Lcom/android/updater/customTypes/FullUpdateInfo;->getLatestVersion()Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v1

    if-nez v1, :cond_4

    .line 127
    :cond_3
    const v1, 0x7f080020

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 129
    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/updater/MainFragment;->mClickCheckUpdateTimes:I

    .line 134
    invoke-super {p0}, Lcom/android/updater/BaseFragment;->onResume()V

    .line 135
    return-void
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
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
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .line 305
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/android/updater/MainFragment;->updateSignIn()V

    .line 308
    iget-object v1, p0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/updater/utils/SysUtils;->getMIUIAccountToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, token:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 310
    iput v2, p0, Lcom/android/updater/MainFragment;->mClickCheckUpdateTimes:I

    .line 311
    invoke-virtual {p0}, Lcom/android/updater/MainFragment;->checkForUpdates()V

    .line 312
    invoke-virtual {p0, v2}, Lcom/android/updater/MainFragment;->updateMode(I)V

    .line 315
    .end local v0           #token:Ljava/lang/String;
    :cond_0
    return-void
.end method
