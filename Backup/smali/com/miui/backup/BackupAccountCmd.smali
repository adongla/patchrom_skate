.class Lcom/miui/backup/BackupAccountCmd;
.super Lcom/miui/backup/BackupAppDataCmd;
.source "BackupCmd.java"


# direct methods
.method constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"
    .parameter "dataName"
    .parameter "dataPath"

    .prologue
    .line 323
    invoke-direct/range {p0 .. p5}, Lcom/miui/backup/BackupAppDataCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method


# virtual methods
.method protected genStrategy()V
    .locals 6

    .prologue
    .line 341
    new-instance v2, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v2}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 342
    .local v2, emalStrategy:Lcom/miui/backup/ScriptStrategy;
    const/16 v3, 0xd

    const-string v4, "/data/data/com.android.email"

    iget-object v5, p0, Lcom/miui/backup/BackupAccountCmd;->mBaseDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/miui/backup/BackupAccountCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v2}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 345
    new-instance v3, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v3}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    iput-object v3, p0, Lcom/miui/backup/BackupAccountCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 347
    iget-object v3, p0, Lcom/miui/backup/BackupAccountCmd;->mDataPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/backup/BackupUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, dstName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/BackupAccountCmd;->mBaseDir:Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 349
    .local v0, dstFile:Ljava/io/File;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/backup/BackupAccountCmd;->mDataPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/miui/backup/BackupAccountCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method protected preAction()Z
    .locals 6

    .prologue
    .line 328
    invoke-static {}, Lcom/miui/backup/SysUtils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, imei:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/BackupAccountCmd;->mBaseDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".imei_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    .local v2, imeiFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    invoke-super {p0}, Lcom/miui/backup/BackupAppDataCmd;->preAction()Z

    move-result v3

    return v3

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/io/IOException;
    const-string v3, "BackupTask"

    const-string v4, "create imei size file error "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
