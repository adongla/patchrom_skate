.class Lcom/miui/backup/RestoreUserAppCmd;
.super Lcom/miui/backup/RestoreAppCmd;
.source "RestoreCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;,
        Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;,
        Lcom/miui/backup/RestoreUserAppCmd$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static mInstalLRate:D

.field private static mTotalElapsedTime:J


# instance fields
.field private final APK_INSTALL_PROGRESS_RATIO:D

.field private final APK_INSTALL_WAIT_INTEVAL:I

.field private mApkInstallationSucceeded:Z

.field private mApkSize:J

.field private mInstallWaiting:Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;

.field private mProgressor:Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 281
    const-wide v0, 0x408f400000000000L

    sput-wide v0, Lcom/miui/backup/RestoreUserAppCmd;->mInstalLRate:D

    .line 282
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/backup/RestoreUserAppCmd;->mTotalElapsedTime:J

    return-void
.end method

.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 3
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    const/16 v2, 0x1f4

    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/RestoreAppCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 225
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mApkSize:J

    .line 231
    iput v2, p0, Lcom/miui/backup/RestoreUserAppCmd;->APK_INSTALL_WAIT_INTEVAL:I

    .line 232
    new-instance v0, Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;

    invoke-direct {v0, p0, v2}, Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;-><init>(Lcom/miui/backup/RestoreUserAppCmd;I)V

    iput-object v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mInstallWaiting:Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mProgressor:Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;

    .line 256
    const-wide/high16 v0, 0x3fe0

    iput-wide v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->APK_INSTALL_PROGRESS_RATIO:D

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mApkInstallationSucceeded:Z

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/miui/backup/RestoreUserAppCmd;)Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mInstallWaiting:Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/backup/RestoreUserAppCmd;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/miui/backup/RestoreUserAppCmd;->mApkInstallationSucceeded:Z

    return p1
.end method

.method static synthetic access$200()D
    .locals 2

    .prologue
    .line 209
    sget-wide v0, Lcom/miui/backup/RestoreUserAppCmd;->mInstalLRate:D

    return-wide v0
.end method

.method static synthetic access$202(D)D
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    sput-wide p0, Lcom/miui/backup/RestoreUserAppCmd;->mInstalLRate:D

    return-wide p0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 209
    sget-wide v0, Lcom/miui/backup/RestoreUserAppCmd;->mTotalElapsedTime:J

    return-wide v0
.end method

.method static synthetic access$314(J)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 209
    sget-wide v0, Lcom/miui/backup/RestoreUserAppCmd;->mTotalElapsedTime:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/miui/backup/RestoreUserAppCmd;->mTotalElapsedTime:J

    return-wide v0
.end method

.method private installPkg()Z
    .locals 7

    .prologue
    .line 235
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mBaseDir:Ljava/io/File;

    iget-object v4, p0, Lcom/miui/backup/RestoreUserAppCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v4, v4, Lcom/miui/backup/AppInfo;->packagePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/backup/BackupUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    .local v0, apkFile:Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 237
    .local v2, packageURI:Landroid/net/Uri;
    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v3, v3, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/miui/backup/RestoreUserAppCmd;->pkgExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    .line 238
    .local v1, installFlag:I
    :goto_0
    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Lcom/miui/backup/RestoreUserAppCmd$PackageInstallObserver;

    invoke-direct {v4, p0}, Lcom/miui/backup/RestoreUserAppCmd$PackageInstallObserver;-><init>(Lcom/miui/backup/RestoreUserAppCmd;)V

    iget-object v5, p0, Lcom/miui/backup/RestoreUserAppCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v1, v5}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 245
    invoke-static {v0}, Lcom/miui/backup/SysUtils;->countFileSize(Ljava/io/File;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mApkSize:J

    .line 246
    new-instance v3, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;

    iget-wide v4, p0, Lcom/miui/backup/RestoreUserAppCmd;->mApkSize:J

    const/16 v6, 0x1f4

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;-><init>(Lcom/miui/backup/RestoreUserAppCmd;JI)V

    iput-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mProgressor:Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;

    .line 247
    :goto_1
    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mInstallWaiting:Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;

    invoke-virtual {v3}, Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mInstallWaiting:Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;

    invoke-virtual {v3}, Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;->waitInterval()V

    .line 249
    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mProgressor:Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;

    invoke-virtual {v3}, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->update()V

    goto :goto_1

    .line 237
    .end local v1           #installFlag:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 251
    .restart local v1       #installFlag:I
    :cond_1
    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mProgressor:Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;

    invoke-virtual {v3}, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->finish()V

    .line 253
    iget-boolean v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mApkInstallationSucceeded:Z

    return v3
.end method


# virtual methods
.method protected getPreActionSize()J
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mProgressor:Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mProgressor:Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;

    invoke-virtual {v0}, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->getProgress()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/miui/backup/RestoreUserAppCmd;->mApkSize:J

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getProgress()I
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3fe0

    .line 259
    iget-object v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v0, v0, Lcom/miui/backup/CmdRunningInfo;->status:I

    packed-switch v0, :pswitch_data_0

    .line 269
    invoke-super {p0}, Lcom/miui/backup/RestoreAppCmd;->getProgress()I

    move-result v0

    :goto_0
    return v0

    .line 261
    :pswitch_0
    iget-object v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mProgressor:Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mProgressor:Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;

    invoke-virtual {v0}, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->getProgress()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    goto :goto_0

    .line 264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 267
    :pswitch_1
    const-wide/high16 v0, 0x4049

    invoke-super {p0}, Lcom/miui/backup/RestoreAppCmd;->getProgress()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected preAction()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 216
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/RestoreUserAppCmd;->mBaseDir:Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v3, v3, Lcom/miui/backup/AppInfo;->packagePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/backup/BackupUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    .local v0, apkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/miui/backup/RestoreUserAppCmd;->installPkg()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0}, Lcom/miui/backup/RestoreAppCmd;->preAction()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
