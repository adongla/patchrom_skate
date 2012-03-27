.class public Lcom/miui/backup/BackupTask;
.super Lcom/miui/backup/BackupRestoreTask;
.source "BackupTask.java"


# instance fields
.field private isCanceled:Z

.field private isError:Z

.field private mDbAdapter:Lcom/miui/backup/DbAdapter;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/miui/backup/BackupRestoreCmdFactory;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "baseDir"
    .parameter "cmdFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;",
            "Ljava/io/File;",
            "Lcom/miui/backup/BackupRestoreCmdFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/backup/AppInfo;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/backup/BackupRestoreTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/miui/backup/BackupRestoreCmdFactory;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/BackupTask;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    .line 21
    return-void
.end method

.method private closeDB()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    invoke-virtual {v0}, Lcom/miui/backup/DbAdapter;->close()V

    .line 131
    :cond_0
    return-void
.end method

.method private createSizeFile()V
    .locals 7

    .prologue
    .line 134
    iget-object v4, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    invoke-static {v4}, Lcom/miui/backup/SysUtils;->countFileSize(Ljava/io/File;)J

    move-result-wide v0

    .line 135
    .local v0, backupSize:J
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".size_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v3, sizeFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, e:Ljava/io/IOException;
    const-string v4, "BackupTask"

    const-string v5, "create backup size file error "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createVersionFile()V
    .locals 4

    .prologue
    .line 144
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    const-string v3, ".version_ics"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    .local v1, versionFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BackupTask"

    const-string v3, "create version file error "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private diskCheck()Z
    .locals 2

    .prologue
    .line 104
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Lcom/miui/backup/SysUtils;->enoughSpaceOnSdCard(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mContext:Landroid/content/Context;

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/backup/BackupTask;->showErrorDialog(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    invoke-static {v0}, Lcom/miui/backup/SysUtils;->deleteContents(Ljava/io/File;)V

    .line 113
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_1
.end method

.method private openDB()Z
    .locals 5

    .prologue
    .line 117
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    const-string v3, "backup_config.db"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .local v0, database:Ljava/io/File;
    new-instance v2, Lcom/miui/backup/DbAdapter;

    iget-object v3, p0, Lcom/miui/backup/BackupTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/miui/backup/DbAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/backup/BackupTask;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/miui/backup/BackupTask;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    invoke-virtual {v2}, Lcom/miui/backup/DbAdapter;->open()Lcom/miui/backup/DbAdapter;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, e:Landroid/database/SQLException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/miui/backup/BackupRestoreTask;->cancel()V

    .line 85
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/miui/backup/BackupUtils;->persistProgress(Ljava/io/File;I)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/backup/BackupTask;->isCanceled:Z

    .line 87
    return-void
.end method

.method public getFinishedResId()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f07000e

    return v0
.end method

.method public getProgressHintResId()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f070070

    return v0
.end method

.method public getProgressResId()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f07000c

    return v0
.end method

.method public getTaskCancelResId()I
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f070071

    return v0
.end method

.method public getTaskType()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method protected handleError()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 91
    const-wide/32 v1, 0x80000

    invoke-static {v1, v2}, Lcom/miui/backup/SysUtils;->enoughSpaceOnSdCard(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/miui/backup/BackupTask;->mContext:Landroid/content/Context;

    const v2, 0x7f070053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/backup/BackupTask;->showErrorDialog(Ljava/lang/String;)V

    .line 93
    iput-boolean v0, p0, Lcom/miui/backup/BackupTask;->isError:Z

    .line 94
    const/4 v0, 0x0

    .line 96
    :cond_0
    return v0
.end method

.method protected postAction()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/miui/backup/BackupTask;->createSizeFile()V

    .line 75
    invoke-direct {p0}, Lcom/miui/backup/BackupTask;->createVersionFile()V

    .line 76
    invoke-direct {p0}, Lcom/miui/backup/BackupTask;->closeDB()V

    .line 77
    iget-boolean v0, p0, Lcom/miui/backup/BackupTask;->isCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/backup/BackupTask;->isError:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/backup/BackupUtils;->persistProgress(Ljava/io/File;I)V

    .line 80
    :cond_0
    return-void
.end method

.method protected preAction()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/miui/backup/BackupTask;->isCanceled:Z

    .line 60
    iput-boolean v0, p0, Lcom/miui/backup/BackupTask;->isError:Z

    .line 61
    invoke-direct {p0}, Lcom/miui/backup/BackupTask;->diskCheck()Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/miui/backup/BackupTask;->openDB()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    invoke-static {v0}, Lcom/miui/backup/BackupCmd;->setDbAdapter(Lcom/miui/backup/DbAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/miui/backup/BackupUtils;->persistProgress(Ljava/io/File;I)V

    move v0, v1

    .line 69
    goto :goto_0
.end method
