.class Lcom/miui/backup/BackupSuperuserCmd;
.super Lcom/miui/backup/BackupAppCmd;
.source "BackupCmd.java"


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V
    .locals 0
    .parameter "info"
    .parameter "baseDir"
    .parameter "pkgInfo"
    .parameter "context"

    .prologue
    .line 298
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/backup/BackupAppCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V

    .line 299
    return-void
.end method


# virtual methods
.method protected genStrategy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 303
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/BackupSuperuserCmd;->mBaseDir:Ljava/io/File;

    const-string v3, "com.miui.uac"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/backup/BackupSuperuserCmd;->mBaseDir:Ljava/io/File;

    .line 304
    iget-object v1, p0, Lcom/miui/backup/BackupSuperuserCmd;->mBaseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/miui/backup/BackupSuperuserCmd;->mBaseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 307
    :cond_0
    invoke-super {p0}, Lcom/miui/backup/BackupAppCmd;->genStrategy()V

    .line 309
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/backup/BackupSuperuserCmd;->mBaseDir:Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 310
    .local v0, systemDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 313
    :cond_1
    const-string v1, "/data/system/confirmed_package_behavior.authz"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2}, Lcom/miui/backup/BackupSuperuserCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v1, "/data/system/confirmed_package_behavior.log"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2}, Lcom/miui/backup/BackupSuperuserCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method
