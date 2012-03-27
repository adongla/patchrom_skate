.class public Lcom/android/updater/ApplyUpdateFragment;
.super Lcom/android/updater/BaseFragment;
.source "ApplyUpdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;
    }
.end annotation


# static fields
.field static sInstallRomName:Ljava/lang/String;

.field public static sIsForeground:Z

.field private static sUpdateInfo:Lcom/android/updater/customTypes/UpdateInfo;


# instance fields
.field private mApplyButton:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mDescription:Landroid/widget/TextView;

.field private mDownloadDescription:Landroid/widget/TextView;

.field private mDownloadLinearLayout:Landroid/widget/LinearLayout;

.field protected final mDownloadListener:Landroid/view/View$OnClickListener;

.field private mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

.field private mDownloadProgress:I

.field private mDownloadResourceReceiver:Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHtmlContent:Landroid/webkit/WebView;

.field private mInstallLog:Landroid/widget/TextView;

.field private mIsOtaUpdate:Z

.field private mOperationBar:Landroid/view/View;

.field private mPlainContent:Landroid/view/View;

.field private mPostponeButton:Landroid/widget/Button;

.field private final mPostponeButtonListener:Landroid/view/View$OnClickListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRemainingSize:Landroid/widget/TextView;

.field private mRomName:Ljava/lang/String;

.field private mShowCurrentVersion:Z

.field private mToast:Landroid/view/View;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mViewInstallLogMenuItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string v0, ""

    sput-object v0, Lcom/android/updater/ApplyUpdateFragment;->sInstallRomName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/updater/BaseFragment;-><init>()V

    .line 95
    new-instance v0, Lcom/android/updater/ApplyUpdateFragment$1;

    invoke-direct {v0, p0}, Lcom/android/updater/ApplyUpdateFragment$1;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mHandler:Landroid/os/Handler;

    .line 470
    new-instance v0, Lcom/android/updater/ApplyUpdateFragment$3;

    invoke-direct {v0, p0}, Lcom/android/updater/ApplyUpdateFragment$3;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mPostponeButtonListener:Landroid/view/View$OnClickListener;

    .line 562
    new-instance v0, Lcom/android/updater/ApplyUpdateFragment$6;

    invoke-direct {v0, p0}, Lcom/android/updater/ApplyUpdateFragment$6;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadListener:Landroid/view/View$OnClickListener;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/updater/ApplyUpdateFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->sendIntallLog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mPostponeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->copyToClipboard()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/updater/ApplyUpdateFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mToast:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->finishInstall()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->confirmCancel()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/updater/ApplyUpdateFragment;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/updater/ApplyUpdateFragment;->updateDownloadBar(JJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->updateDownloadNotification()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/updater/ApplyUpdateFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mPlainContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/updater/ApplyUpdateFragment;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mHtmlContent:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mInstallLog:Landroid/widget/TextView;

    return-object v0
.end method

.method private confirmCancel()V
    .locals 3

    .prologue
    .line 477
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050022

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050023

    new-instance v2, Lcom/android/updater/ApplyUpdateFragment$4;

    invoke-direct {v2, p0}, Lcom/android/updater/ApplyUpdateFragment$4;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 486
    return-void
.end method

.method private copyToClipboard()V
    .locals 3

    .prologue
    .line 638
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v1

    .line 639
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 640
    const/4 v2, 0x0

    iget-object v1, v1, Lcom/android/updater/UpdateState;->mLog:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 641
    return-void
.end method

.method private finishInstall()V
    .locals 4

    .prologue
    .line 644
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v0

    .line 645
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 646
    iget v1, v0, Lcom/android/updater/UpdateState;->mStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 647
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 648
    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050058

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05000c

    new-instance v3, Lcom/android/updater/ApplyUpdateFragment$7;

    invoke-direct {v3, p0}, Lcom/android/updater/ApplyUpdateFragment$7;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050020

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 676
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 677
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 678
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyNowListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget v0, v0, Lcom/android/updater/UpdateState;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 681
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/updater/ApplyUpdateFragment;->updateMode(I)V

    .line 682
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    sput-object v0, Lcom/android/updater/ApplyUpdateFragment;->sInstallRomName:Ljava/lang/String;

    goto :goto_0
.end method

.method private initCurrentVersion()V
    .locals 13

    .prologue
    const v12, 0x7f05001e

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/android/updater/ApplyUpdateFragment;->getView()Landroid/view/View;

    move-result-object v5

    .line 223
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Lcom/android/updater/ApplyUpdateFragment;->mDescription:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    const v6, 0x7f080006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v6, p0, Lcom/android/updater/ApplyUpdateFragment;->mPreferences:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v6}, Lcom/android/updater/utils/Preferences;->getCurrVersionInfo()Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v3

    .line 226
    .local v3, ui:Lcom/android/updater/customTypes/UpdateInfo;
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getModVersion()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, systemModVersion:Ljava/lang/String;
    const-string v6, "%s%s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p0, v12}, Lcom/android/updater/ApplyUpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v2, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, version:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/updater/customTypes/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 229
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getIncrementalVersion()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, sysVersion:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v3}, Lcom/android/updater/customTypes/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 231
    const-string v6, "%s%s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p0, v12}, Lcom/android/updater/ApplyUpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v3}, Lcom/android/updater/utils/StringUtils;->getModName(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-virtual {p0, v3}, Lcom/android/updater/ApplyUpdateFragment;->setVersionInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 237
    .end local v1           #sysVersion:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 238
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method

.method private initDownloadNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 300
    const v4, 0x7f050039

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-static {v6, v7}, Lcom/android/updater/utils/StringUtils;->getModName(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/updater/ApplyUpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, contentText:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 302
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadProgress:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 303
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 304
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/16 v5, 0x64

    iget v6, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadProgress:I

    invoke-virtual {v4, v5, v6, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 305
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v5, 0x7f020046

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 306
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 307
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 308
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 310
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-static {v4, v5}, Lcom/android/updater/utils/SysUtils;->getApplyUpdateIntent(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 311
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const/high16 v5, 0x800

    invoke-static {v4, v8, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 312
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 314
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 315
    .local v2, notificationManager:Landroid/app/NotificationManager;
    const v4, 0x7f05003e

    iget-object v5, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 316
    return-void
.end method

.method private initMioneInstall()V
    .locals 6

    .prologue
    .line 273
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/android/updater/InstallUpdateService;->setHandler(Landroid/os/Handler;)V

    .line 274
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/updater/InstallUpdateService;->setRomName(Ljava/lang/String;)V

    .line 275
    sget-object v3, Lcom/android/updater/InstallUpdateService;->sUpdateMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 276
    :try_start_0
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v1

    .line 278
    .local v1, updateState:Lcom/android/updater/UpdateState;
    iget v2, v1, Lcom/android/updater/UpdateState;->mStatus:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 280
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFile:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f05000b

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->startInstall()V

    .line 284
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 293
    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    sget-object v2, Lcom/android/updater/ApplyUpdateFragment;->sInstallRomName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/updater/ApplyUpdateFragment;->updateMode(I)V

    .line 297
    :cond_2
    return-void

    .line 285
    :cond_3
    :try_start_1
    iget v2, v1, Lcom/android/updater/UpdateState;->mStatus:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    iget v2, v1, Lcom/android/updater/UpdateState;->mStatus:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 287
    :cond_4
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "from_notification"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 289
    .local v0, fromNotification:Z
    if-eqz v0, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->finishInstall()V

    goto :goto_0

    .line 293
    .end local v0           #fromNotification:Z
    .end local v1           #updateState:Lcom/android/updater/UpdateState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private initStatus()V
    .locals 2

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    if-eqz v1, :cond_2

    .line 258
    const/4 v0, 0x1

    .line 259
    .local v0, mode:I
    invoke-virtual {p0}, Lcom/android/updater/ApplyUpdateFragment;->showDownloading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const/4 v0, 0x2

    .line 266
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/updater/ApplyUpdateFragment;->updateMode(I)V

    .line 270
    .end local v0           #mode:I
    :goto_1
    return-void

    .line 262
    .restart local v0       #mode:I
    :cond_1
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-static {v1}, Lcom/android/updater/utils/SysUtils;->checkExistingRomFile(Lcom/android/updater/customTypes/UpdateInfo;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v0, 0x3

    goto :goto_0

    .line 268
    .end local v0           #mode:I
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/updater/ApplyUpdateFragment;->updateMode(I)V

    goto :goto_1
.end method

.method private initTitle()V
    .locals 4

    .prologue
    .line 242
    const-string v2, ""

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    .line 243
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFile:Landroid/net/Uri;

    .line 244
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFile:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFile:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 248
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 249
    const-string v2, "update_info"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    .line 250
    const-string v2, "ota_update"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mIsOtaUpdate:Z

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 253
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method

.method private initUI()V
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/updater/ApplyUpdateFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, view:Landroid/view/View;
    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mInstallLog:Landroid/widget/TextView;

    .line 184
    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mHtmlContent:Landroid/webkit/WebView;

    .line 185
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mHtmlContent:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 187
    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mPlainContent:Landroid/view/View;

    .line 188
    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mDescription:Landroid/widget/TextView;

    .line 189
    sget-boolean v2, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mDescription:Landroid/widget/TextView;

    const v3, 0x7f05002c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 194
    :cond_0
    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    .line 195
    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    .line 196
    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mPostponeButton:Landroid/widget/Button;

    .line 197
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mPostponeButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mPostponeButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadLinearLayout:Landroid/widget/LinearLayout;

    .line 201
    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 202
    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mRemainingSize:Landroid/widget/TextView;

    .line 203
    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mCancelButton:Landroid/widget/Button;

    .line 204
    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadDescription:Landroid/widget/TextView;

    .line 207
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/updater/ApplyUpdateFragment$2;

    invoke-direct {v3, p0}, Lcom/android/updater/ApplyUpdateFragment$2;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mToast:Landroid/view/View;

    .line 217
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mToast:Landroid/view/View;

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 218
    .local v0, toastText:Landroid/widget/TextView;
    const v2, 0x30c0038

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 219
    return-void
.end method

.method private sendIntallLog()V
    .locals 5

    .prologue
    .line 625
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v0

    .line 626
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "mailto:fc@miui.com?subject=FC_OTA"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 627
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 628
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detail logs:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/android/updater/UpdateState;->mLog:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/updater/ApplyUpdateFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f05000e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static setUpdateInfo(Lcom/android/updater/customTypes/UpdateInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 373
    sput-object p0, Lcom/android/updater/ApplyUpdateFragment;->sUpdateInfo:Lcom/android/updater/customTypes/UpdateInfo;

    .line 374
    return-void
.end method

.method private startInstall()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 616
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadDescription:Landroid/widget/TextView;

    const v1, 0x7f050008

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "0%"

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/updater/ApplyUpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 621
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mRemainingSize:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    return-void
.end method

.method private updateDownloadBar(JJ)V
    .locals 10
    .parameter "currentBytes"
    .parameter "totalBytes"

    .prologue
    .line 331
    const-string v3, "%.1fMB / %.1fMB"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    long-to-double v6, p1

    const-wide/high16 v8, 0x4130

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    long-to-double v6, p3

    const-wide/high16 v8, 0x4130

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, remainingSize:Ljava/lang/String;
    long-to-double v3, p1

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    long-to-double v5, p3

    div-double v0, v3, v5

    .line 334
    .local v0, percent:D
    double-to-int v3, v0

    iput v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadProgress:I

    .line 335
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mRemainingSize:Landroid/widget/TextView;

    const-string v4, "%s  %.0f%%"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 337
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 338
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    iget v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadProgress:I

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 339
    return-void
.end method

.method private updateDownloadNotification()V
    .locals 5

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 323
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/16 v2, 0x64

    iget v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadProgress:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 324
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 326
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 327
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x7f05003e

    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method protected applyUpdate()V
    .locals 3

    .prologue
    .line 378
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_0

    .line 380
    const-string v0, ""

    sput-object v0, Lcom/android/updater/ApplyUpdateFragment;->sInstallRomName:Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/updater/InstallUpdateService;->setHandler(Landroid/os/Handler;)V

    .line 382
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/updater/InstallUpdateService;->setRomName(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->startInstall()V

    .line 384
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/updater/InstallUpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    const-string v1, "UPDATE_PACKAGE"

    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFile:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 387
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f050009

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 391
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-super {p0}, Lcom/android/updater/BaseFragment;->applyUpdate()V

    goto :goto_0
.end method

.method protected needDownload()Z
    .locals 4

    .prologue
    .line 490
    invoke-super {p0}, Lcom/android/updater/BaseFragment;->needDownload()Z

    move-result v0

    .line 491
    .local v0, ret:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-static {v1, v2, v3}, Lcom/android/updater/utils/SysUtils;->downloadUpdate(Landroid/content/Context;ZLcom/android/updater/customTypes/UpdateInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-virtual {p0, v1}, Lcom/android/updater/ApplyUpdateFragment;->downloadRequestedUpdate(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 494
    :cond_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 149
    invoke-super {p0, p1}, Lcom/android/updater/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 150
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->initUI()V

    .line 152
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 153
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 154
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setUiOptions(I)V

    .line 157
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "current_version"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mShowCurrentVersion:Z

    .line 158
    iget-boolean v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mShowCurrentVersion:Z

    if-eqz v2, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->initCurrentVersion()V

    .line 178
    :goto_0
    return-void

    .line 163
    :cond_0
    sget-object v2, Lcom/android/updater/ApplyUpdateFragment;->sUpdateInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-virtual {p0, v2}, Lcom/android/updater/ApplyUpdateFragment;->setVersionInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 164
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->initTitle()V

    .line 165
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->initStatus()V

    .line 167
    sget-boolean v2, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v2, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->initMioneInstall()V

    .line 171
    :cond_1
    new-instance v2, Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;

    invoke-direct {v2, p0}, Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadResourceReceiver:Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;

    .line 172
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v1, f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v2, "android.intent.action.DOWNLOAD_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadResourceReceiver:Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 434
    invoke-super {p0, p1, p2}, Lcom/android/updater/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 436
    iget-boolean v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mShowCurrentVersion:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/updater/ShareActivity;->isShareAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const v1, 0x7f05005d

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 438
    .local v0, addAccountItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 443
    .end local v0           #addAccountItem:Landroid/view/MenuItem;
    :goto_0
    return-void

    .line 441
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 143
    const/high16 v1, 0x7f03

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadResourceReceiver:Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadResourceReceiver:Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_1

    .line 399
    invoke-static {v2}, Lcom/android/updater/InstallUpdateService;->setHandler(Landroid/os/Handler;)V

    .line 400
    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mHandler:Landroid/os/Handler;

    .line 402
    :cond_1
    invoke-super {p0}, Lcom/android/updater/BaseFragment;->onDestroy()V

    .line 403
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 407
    invoke-virtual {p0}, Lcom/android/updater/ApplyUpdateFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 408
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v2

    .line 409
    iget v3, v2, Lcom/android/updater/UpdateState;->mStatus:I

    if-ne v3, v0, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f050008

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/updater/ApplyUpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 428
    :goto_0
    return v0

    .line 413
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 428
    invoke-super {p0, p1}, Lcom/android/updater/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 415
    :sswitch_0
    const/high16 v3, 0x7f08

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mPlainContent:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mInstallLog:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/android/updater/UpdateState;->mLog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 420
    :sswitch_1
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 423
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 424
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/updater/ShareActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 425
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 413
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x102002c -> :sswitch_1
        0x7f08001e -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 343
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v2

    .line 344
    .local v2, updateState:Lcom/android/updater/UpdateState;
    iget v3, v2, Lcom/android/updater/UpdateState;->mStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 345
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/updater/InstallUpdateService;->setupNotification(Landroid/content/Context;)V

    .line 346
    iget v3, v2, Lcom/android/updater/UpdateState;->mProgressScopeStart:F

    iget v4, v2, Lcom/android/updater/UpdateState;->mProgress:F

    iget v5, v2, Lcom/android/updater/UpdateState;->mProgressScopeSize:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 347
    .local v1, progress:I
    invoke-static {v1}, Lcom/android/updater/InstallUpdateService;->notifyProgress(I)V

    .line 349
    .end local v1           #progress:I
    :cond_0
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/updater/ApplyUpdateFragment;->sIsForeground:Z

    .line 350
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    if-eqz v3, :cond_1

    .line 354
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFolder:Ljava/io/File;

    iget-object v5, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-virtual {v5}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, destFilePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadUpdateManager:Lcom/android/updater/tasks/DownloadUpdateManager;

    invoke-virtual {v3, v0}, Lcom/android/updater/tasks/DownloadUpdateManager;->isDownloading(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->initDownloadNotification()V

    .line 359
    .end local v0           #destFilePath:Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lcom/android/updater/BaseFragment;->onPause()V

    .line 360
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    .line 448
    invoke-super {p0, p1}, Lcom/android/updater/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 449
    const v1, 0x7f08001b

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeGroup(I)V

    .line 451
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 452
    sget-boolean v1, Lcom/android/updater/ApplyUpdateFragment;->MANUALLY_APPLY_UPDATE:Z

    if-eqz v1, :cond_0

    .line 453
    const v1, 0x7f08001c

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 455
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v1, :cond_1

    .line 456
    const v1, 0x7f08001d

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 457
    const v1, 0x7f08001e

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 468
    :goto_0
    return-void

    .line 459
    :cond_1
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v0

    .line 460
    .local v0, updateState:Lcom/android/updater/UpdateState;
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mViewInstallLogMenuItem:Landroid/view/MenuItem;

    .line 461
    iget v1, v0, Lcom/android/updater/UpdateState;->mStatus:I

    if-eq v1, v3, :cond_2

    iget v1, v0, Lcom/android/updater/UpdateState;->mStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 463
    :cond_2
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mViewInstallLogMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 465
    :cond_3
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mViewInstallLogMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/updater/InstallUpdateService;->cleanNotification(Landroid/content/Context;)V

    .line 365
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/updater/ApplyUpdateFragment;->sIsForeground:Z

    .line 366
    invoke-virtual {p0}, Lcom/android/updater/ApplyUpdateFragment;->registerExternalStorageListener()V

    .line 368
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f05003e

    invoke-static {v0, v1}, Lcom/android/updater/utils/SysUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 369
    invoke-super {p0}, Lcom/android/updater/BaseFragment;->onResume()V

    .line 370
    return-void
.end method

.method public registerExternalStorageListener()V
    .locals 3

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 688
    new-instance v0, Lcom/android/updater/ApplyUpdateFragment$8;

    invoke-direct {v0, p0}, Lcom/android/updater/ApplyUpdateFragment$8;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 700
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 701
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 705
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 706
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 707
    return-void
.end method

.method protected setVersionInfo(Lcom/android/updater/customTypes/UpdateInfo;)V
    .locals 4
    .parameter "updateInfo"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 601
    invoke-super {p0, p1}, Lcom/android/updater/BaseFragment;->setVersionInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 602
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 603
    .local v0, descriptionUrl:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mPlainContent:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mHtmlContent:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 606
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mHtmlContent:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 612
    :goto_1
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 613
    return-void

    .line 602
    .end local v0           #descriptionUrl:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-virtual {v1}, Lcom/android/updater/customTypes/UpdateInfo;->getDescriptionUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 608
    .restart local v0       #descriptionUrl:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mHtmlContent:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 609
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mPlainContent:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected updateMode(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x4b

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 511
    invoke-super {p0, p1}, Lcom/android/updater/BaseFragment;->updateMode(I)V

    .line 512
    iget v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 514
    :pswitch_0
    const v0, 0x7f050003

    .line 515
    iget-boolean v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mIsOtaUpdate:Z

    if-eqz v1, :cond_1

    .line 516
    const v0, 0x7f050004

    .line 518
    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-virtual {v2}, Lcom/android/updater/customTypes/UpdateInfo;->getFileSize()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/updater/ApplyUpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 519
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 525
    :pswitch_1
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 529
    :pswitch_2
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 530
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 532
    sget-boolean v0, Lcom/android/updater/ApplyUpdateFragment;->MANUALLY_APPLY_UPDATE:Z

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    const v1, 0x30c0191

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 534
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFile:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f05002a

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFile:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/updater/ApplyUpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/android/updater/utils/SysUtils;->showDialog(Landroid/content/Context;ILjava/lang/String;)V

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyNowListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 545
    :pswitch_3
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    const v1, 0x7f050011

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 547
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 548
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/updater/ApplyUpdateFragment$5;

    invoke-direct {v1, p0}, Lcom/android/updater/ApplyUpdateFragment$5;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDescription:Landroid/widget/TextView;

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 554
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mPostponeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mViewInstallLogMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mViewInstallLogMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
