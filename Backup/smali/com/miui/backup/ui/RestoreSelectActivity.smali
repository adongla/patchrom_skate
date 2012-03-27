.class public Lcom/miui/backup/ui/RestoreSelectActivity;
.super Lcom/miui/backup/ui/BaseSelectList;
.source "RestoreSelectActivity.java"


# instance fields
.field protected mBackupFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/backup/ui/BaseSelectList;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupFileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$001(Lcom/miui/backup/ui/RestoreSelectActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-super {p0}, Lcom/miui/backup/ui/BaseSelectList;->startExecution()V

    return-void
.end method

.method private closeDB(Lcom/miui/backup/DbAdapter;)V
    .locals 0
    .parameter "dbAdapter"

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/miui/backup/DbAdapter;->close()V

    .line 182
    :cond_0
    return-void
.end method

.method private exceptionAction()V
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07001b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    invoke-virtual {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->finish()V

    .line 187
    return-void
.end method

.method private getOneAppInfoFromDb(Landroid/database/Cursor;)Lcom/miui/backup/AppInfo;
    .locals 3
    .parameter "appsCursor"

    .prologue
    .line 137
    new-instance v0, Lcom/miui/backup/AppInfo;

    invoke-direct {v0}, Lcom/miui/backup/AppInfo;-><init>()V

    .line 139
    .local v0, appInfo:Lcom/miui/backup/AppInfo;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/backup/AppInfo;->id:I

    .line 140
    const-string v1, "appName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    .line 141
    const-string v1, "appType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/backup/AppInfo;->type:I

    .line 142
    const-string v1, "appPackage"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    .line 143
    const-string v1, "appPath"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/AppInfo;->packagePath:Ljava/lang/String;

    .line 144
    const-string v1, "dataDir"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, p0}, Lcom/miui/backup/AppInfo;->genDisplay(Landroid/content/Context;)V

    .line 146
    invoke-virtual {v0, p0}, Lcom/miui/backup/AppInfo;->genSummary(Landroid/content/Context;)V

    .line 147
    iget-object v1, v0, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.providers.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f070021

    invoke-virtual {p0, v2}, Lcom/miui/backup/ui/RestoreSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    .line 159
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :cond_1
    iget-object v1, v0, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.providers.telephony"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f070022

    invoke-virtual {p0, v2}, Lcom/miui/backup/ui/RestoreSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_2
    iget-object v1, v0, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    const-string v2, "launcher.db"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f070023

    invoke-virtual {p0, v2}, Lcom/miui/backup/ui/RestoreSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_3
    iget-object v1, v0, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    const-string v2, "setting.store"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f070024

    invoke-virtual {p0, v2}, Lcom/miui/backup/ui/RestoreSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_4
    iget-object v1, v0, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    const-string v2, "ACCOUNT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f070025

    invoke-virtual {p0, v2}, Lcom/miui/backup/ui/RestoreSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private openDB()Lcom/miui/backup/DbAdapter;
    .locals 5

    .prologue
    .line 163
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupRestoreDir:Ljava/io/File;

    const-string v4, "backup_config.db"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .local v2, restoreDatabase:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->exceptionAction()V

    .line 168
    :cond_0
    new-instance v0, Lcom/miui/backup/DbAdapter;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/miui/backup/DbAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    .local v0, dbAdapter:Lcom/miui/backup/DbAdapter;
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/backup/DbAdapter;->open()Lcom/miui/backup/DbAdapter;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-object v0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, e:Landroid/database/SQLException;
    invoke-direct {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->exceptionAction()V

    goto :goto_0
.end method


# virtual methods
.method protected getBackupRestoreDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ext_backup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupFileName:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupFileName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->exceptionAction()V

    .line 38
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->CONTENT_BASE_DIR:Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method protected getNextButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/RestoreSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectedApps()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, accountInfo:Lcom/miui/backup/AppInfo;
    const/4 v4, 0x0

    .line 65
    .local v4, launcherInfo:Lcom/miui/backup/AppInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v2, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/backup/AppInfo;>;"
    iget-object v5, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/backup/AppInfo;

    .line 67
    .local v1, appInfo:Lcom/miui/backup/AppInfo;
    const-string v5, "addressbook.store"

    iget-object v6, v1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    iput-object v1, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mContactInfo:Lcom/miui/backup/AppInfo;

    .line 70
    :cond_0
    const-string v5, "accounts.db"

    iget-object v6, v1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    move-object v0, v1

    .line 72
    goto :goto_0

    .line 74
    :cond_1
    const-string v5, "com.miui.home"

    iget-object v6, v1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    move-object v4, v1

    .line 76
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    .end local v1           #appInfo:Lcom/miui/backup/AppInfo;
    :cond_3
    iget-object v5, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_4
    if-eqz v4, :cond_5

    .line 85
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_5
    return-object v2
.end method

.method protected getTaskType()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method protected getTitleSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupFileName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/backup/BackupUtils;->getShowNameFromFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupFileName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupFileName:Ljava/lang/String;

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/RestoreSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prepareAppInfos()V
    .locals 10

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->openDB()Lcom/miui/backup/DbAdapter;

    move-result-object v3

    .line 98
    .local v3, dbAdapter:Lcom/miui/backup/DbAdapter;
    invoke-virtual {v3}, Lcom/miui/backup/DbAdapter;->fetchAllApps()Landroid/database/Cursor;

    move-result-object v2

    .line 100
    .local v2, appsCursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 101
    .local v0, acceptApp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupRestoreDir:Ljava/io/File;

    const-string v9, ".version_ics"

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .local v6, icsVersionFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 103
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #acceptApp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 104
    .restart local v0       #acceptApp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v8, "addressbook.store"

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    const-string v8, "calllog.store"

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v8, "sms.store"

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v8, "mms.store"

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v8, "wpa_supplicant.conf"

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v8, "note.store"

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 114
    .local v7, listSize:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mSysDataInfos:Ljava/util/ArrayList;

    .line 115
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mUserAppInfos:Ljava/util/ArrayList;

    .line 116
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 117
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_4

    .line 118
    invoke-direct {p0, v2}, Lcom/miui/backup/ui/RestoreSelectActivity;->getOneAppInfoFromDb(Landroid/database/Cursor;)Lcom/miui/backup/AppInfo;

    move-result-object v1

    .line 119
    .local v1, appInfo:Lcom/miui/backup/AppInfo;
    iget v8, v1, Lcom/miui/backup/AppInfo;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 120
    iget-object v8, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 117
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 121
    :cond_2
    if-eqz v0, :cond_3

    iget-object v8, v1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 122
    :cond_3
    iget-object v8, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 126
    .end local v1           #appInfo:Lcom/miui/backup/AppInfo;
    .end local v5           #i:I
    .end local v7           #listSize:I
    :catch_0
    move-exception v4

    .line 127
    .local v4, e:Ljava/lang/Exception;
    :try_start_1
    const-string v8, "RestoreSelectActivity"

    const-string v9, "Cannot get app infos: "

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 132
    .end local v4           #e:Ljava/lang/Exception;
    :goto_2
    invoke-direct {p0, v3}, Lcom/miui/backup/ui/RestoreSelectActivity;->closeDB(Lcom/miui/backup/DbAdapter;)V

    .line 134
    return-void

    .line 129
    .restart local v5       #i:I
    .restart local v7       #listSize:I
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v5           #i:I
    .end local v7           #listSize:I
    :catchall_0
    move-exception v8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v8
.end method

.method protected startExecution()V
    .locals 4

    .prologue
    .line 191
    const-wide/32 v1, 0x1e00000

    invoke-static {v1, v2}, Lcom/miui/backup/SysUtils;->enoughSpaceOnData(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000d

    new-instance v3, Lcom/miui/backup/ui/RestoreSelectActivity$1;

    invoke-direct {v3, p0}, Lcom/miui/backup/ui/RestoreSelectActivity$1;-><init>(Lcom/miui/backup/ui/RestoreSelectActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 202
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-super {p0}, Lcom/miui/backup/ui/BaseSelectList;->startExecution()V

    goto :goto_0
.end method
