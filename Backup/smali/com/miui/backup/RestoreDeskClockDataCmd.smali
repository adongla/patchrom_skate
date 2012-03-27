.class Lcom/miui/backup/RestoreDeskClockDataCmd;
.super Lcom/miui/backup/RestoreCmd;
.source "RestoreCmd.java"


# instance fields
.field private mPkgInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 1
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 659
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/RestoreCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/RestoreDeskClockDataCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 660
    return-void
.end method


# virtual methods
.method protected genStrategy()V
    .locals 4

    .prologue
    .line 678
    new-instance v1, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v1}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    iput-object v1, p0, Lcom/miui/backup/RestoreDeskClockDataCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 679
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/backup/RestoreDeskClockDataCmd;->mBaseDir:Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/RestoreDeskClockDataCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v2, v2, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 680
    .local v0, dbFile:Ljava/io/File;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/backup/RestoreDeskClockDataCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v3, v3, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/backup/RestoreDeskClockDataCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method protected postAction()Z
    .locals 6

    .prologue
    .line 685
    new-instance v1, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v1}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 686
    .local v1, strategy:Lcom/miui/backup/ScriptStrategy;
    iget-object v0, p0, Lcom/miui/backup/RestoreDeskClockDataCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v2, v0, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    const/16 v3, 0x294

    iget-object v0, p0, Lcom/miui/backup/RestoreDeskClockDataCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/miui/backup/RestoreDeskClockDataCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/backup/RestoreDeskClockDataCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    .line 695
    const-string v0, "com.android.deskclock"

    const-string v2, "com.android.deskclock_preferences.xml"

    const-string v3, "/data/data/com.android.deskclock/shared_prefs/com.android.deskclock_preferences.xml"

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/miui/backup/RestoreDeskClockDataCmd;->prepareRestorePreferences(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual {v1}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 699
    iget-object v0, p0, Lcom/miui/backup/RestoreDeskClockDataCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/backup/RestoreDeskClockDataCmd;->forceStop(Ljava/lang/String;)V

    .line 700
    const/4 v0, 0x1

    return v0
.end method

.method protected preAction()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 664
    iget-object v3, p0, Lcom/miui/backup/RestoreDeskClockDataCmd;->mContext:Landroid/content/Context;

    const-string v4, "com.android.deskclock"

    invoke-static {v3, v4}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/backup/RestoreDeskClockDataCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 665
    iget-object v3, p0, Lcom/miui/backup/RestoreDeskClockDataCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v3, :cond_1

    .line 673
    :cond_0
    :goto_0
    return v1

    .line 668
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/RestoreDeskClockDataCmd;->mBaseDir:Ljava/io/File;

    iget-object v4, p0, Lcom/miui/backup/RestoreDeskClockDataCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v4, v4, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 669
    .local v0, dbFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 672
    iget-object v1, p0, Lcom/miui/backup/RestoreDeskClockDataCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v1, v1, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/miui/backup/RestoreDeskClockDataCmd;->rmData(Ljava/lang/String;Z)Z

    move v1, v2

    .line 673
    goto :goto_0
.end method
