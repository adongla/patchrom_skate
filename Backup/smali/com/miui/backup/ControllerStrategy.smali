.class abstract Lcom/miui/backup/ControllerStrategy;
.super Lcom/miui/backup/BackupRestoreStrategy;
.source "BackupRestoreStrategy.java"


# instance fields
.field protected mBaseController:Lcom/miui/milk/control/local/BaseController;

.field protected mDataFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "dstBackupDir"
    .parameter "dataName"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreStrategy;-><init>()V

    .line 62
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/ControllerStrategy;->mDataFile:Ljava/io/File;

    .line 63
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/miui/backup/BackupRestoreStrategy;->cancel()V

    .line 77
    iget-object v0, p0, Lcom/miui/backup/ControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/BaseController;->cancel()V

    .line 78
    return-void
.end method

.method public isSucceeded()Z
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/miui/backup/BackupRestoreStrategy;->isSucceeded()Z

    move-result v0

    .line 68
    .local v0, isSucceed:Z
    iget-object v1, p0, Lcom/miui/backup/ControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    invoke-virtual {v1}, Lcom/miui/milk/control/local/BaseController;->isException()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :cond_0
    return v0
.end method
