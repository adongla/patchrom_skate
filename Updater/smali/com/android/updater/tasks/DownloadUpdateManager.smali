.class public Lcom/android/updater/tasks/DownloadUpdateManager;
.super Ljava/lang/Object;
.source "DownloadUpdateManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadManager:Landroid/app/MiuiDownloadManager;

.field private mId:J

.field private mPreferences:Lcom/android/updater/utils/Preferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    new-instance v0, Lcom/android/updater/utils/Preferences;

    invoke-direct {v0, p1}, Lcom/android/updater/utils/Preferences;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/updater/tasks/DownloadUpdateManager;-><init>(Landroid/content/Context;Lcom/android/updater/utils/Preferences;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/updater/utils/Preferences;)V
    .locals 1
    .parameter "context"
    .parameter "preferences"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mPreferences:Lcom/android/updater/utils/Preferences;

    .line 34
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/MiuiDownloadManager;

    iput-object v0, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    .line 35
    return-void
.end method

.method private insert(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)V
    .locals 9
    .parameter "context"
    .parameter "ui"

    .prologue
    .line 46
    invoke-virtual {p2}, Lcom/android/updater/customTypes/UpdateInfo;->updateFileUris()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URI;

    .line 47
    .local v5, uri:Ljava/net/URI;
    const-string v6, "DownloadUpdateManager"

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getRomDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, destFilePath:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".temp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, tempFilepath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v3, tempFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 53
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 56
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 57
    .local v1, destUri:Landroid/net/Uri;
    new-instance v2, Landroid/app/MiuiDownloadManager$Request;

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/MiuiDownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 58
    .local v2, request:Landroid/app/MiuiDownloadManager$Request;
    const-string v6, "application/zip-ota"

    invoke-virtual {v2, v6}, Landroid/app/MiuiDownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 59
    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/MiuiDownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 60
    invoke-virtual {p2}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/MiuiDownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 61
    invoke-virtual {v2, v1}, Landroid/app/MiuiDownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 62
    invoke-virtual {v2, v4}, Landroid/app/MiuiDownloadManager$Request;->setAppointName(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Request;

    .line 63
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/app/MiuiDownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 64
    invoke-virtual {v2, v0}, Landroid/app/MiuiDownloadManager$Request;->setAppData(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Request;

    .line 65
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/app/MiuiDownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 66
    iget-object v6, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    invoke-virtual {v6, v2}, Landroid/app/MiuiDownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    .line 67
    return-void
.end method

.method private startDownload(Lcom/android/updater/customTypes/UpdateInfo;)V
    .locals 6
    .parameter "ui"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/updater/tasks/DownloadUpdateManager;->insert(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 71
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mPreferences:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v1, p1}, Lcom/android/updater/utils/Preferences;->setLastUpdateInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPERATE_DOWNLOADSET_UPDATE_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "intent_extra_register_downloads_update_progress"

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    aput-wide v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/MiuiDownloadManager;->remove([J)I

    .line 108
    return-void
.end method

.method public download(Lcom/android/updater/customTypes/UpdateInfo;)V
    .locals 4
    .parameter "updateInfo"

    .prologue
    .line 38
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getRomDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, destFilePath:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/updater/tasks/DownloadUpdateManager;->isDownloading(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/updater/tasks/DownloadUpdateManager;->startDownload(Lcom/android/updater/customTypes/UpdateInfo;)V

    goto :goto_0
.end method

.method public finishDownload(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const-wide/16 v4, -0x1

    const v3, 0x7f05003e

    .line 122
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/updater/utils/SysUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 123
    const-string v1, "extra_download_id"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    .line 124
    iget-wide v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/android/updater/tasks/DownloadUpdateManager;->unregisterDownload()V

    .line 130
    sget-boolean v1, Lcom/android/updater/ApplyUpdateFragment;->sIsForeground:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    invoke-virtual {p0, v1, v2}, Lcom/android/updater/tasks/DownloadUpdateManager;->isDownloadSuccess(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mPreferences:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v1}, Lcom/android/updater/utils/Preferences;->isBackgroundDownload()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/updater/utils/SysUtils;->checkNewVersion(Landroid/content/Context;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mPreferences:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v1}, Lcom/android/updater/utils/Preferences;->getLastUpdateInfo()Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v0

    .line 141
    .local v0, updateInfo:Lcom/android/updater/customTypes/UpdateInfo;
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f050057

    const v4, 0x7f05003a

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/updater/utils/SysUtils;->showNotification(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public getDownloadId()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    return-wide v0
.end method

.method public isDownloadSuccess(J)Z
    .locals 5
    .parameter "id"

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, downloadSuccess:Z
    new-instance v2, Landroid/app/MiuiDownloadManager$Query;

    invoke-direct {v2}, Landroid/app/MiuiDownloadManager$Query;-><init>()V

    .line 96
    .local v2, query:Landroid/app/MiuiDownloadManager$Query;
    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/MiuiDownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 97
    iget-object v3, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/MiuiDownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 99
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-static {v0}, Landroid/app/MiuiDownloadManager;->isDownloadSuccess(Landroid/database/Cursor;)Z

    move-result v1

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_0
    return v1
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 5
    .parameter "appData"

    .prologue
    .line 79
    new-instance v1, Landroid/app/MiuiDownloadManager$Query;

    invoke-direct {v1}, Landroid/app/MiuiDownloadManager$Query;-><init>()V

    .line 80
    .local v1, query:Landroid/app/MiuiDownloadManager$Query;
    invoke-virtual {v1, p1}, Landroid/app/MiuiDownloadManager$Query;->setFilterByAppData(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Query;

    .line 81
    iget-object v3, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    invoke-virtual {v3, v1}, Landroid/app/MiuiDownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 83
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 84
    .local v2, result:Z
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-static {v0}, Landroid/app/MiuiDownloadManager;->isDownloading(Landroid/database/Cursor;)Z

    move-result v2

    .line 86
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    .line 87
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_0
    return v2
.end method

.method public unregisterDownload()V
    .locals 6

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPERATE_DOWNLOADSET_UPDATE_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, unregisterIntent:Landroid/content/Intent;
    const-string v1, "intent_extra_unregister_downloads_update_progress"

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    aput-wide v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void
.end method
