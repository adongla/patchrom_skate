.class public Lcom/miui/backup/BackupCmd;
.super Lcom/miui/backup/BackupRestoreCmd;
.source "BackupCmd.java"


# static fields
.field protected static mDbAdapter:Lcom/miui/backup/DbAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/backup/BackupCmd;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 2
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/BackupRestoreCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 26
    iget-object v0, p0, Lcom/miui/backup/BackupCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/backup/CmdRunningInfo;->isBackup:Z

    .line 27
    return-void
.end method

.method public static setDbAdapter(Lcom/miui/backup/DbAdapter;)V
    .locals 0
    .parameter "dbAdapter"

    .prologue
    .line 30
    sput-object p0, Lcom/miui/backup/BackupCmd;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    .line 31
    return-void
.end method
