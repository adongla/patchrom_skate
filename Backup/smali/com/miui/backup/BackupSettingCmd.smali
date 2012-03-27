.class Lcom/miui/backup/BackupSettingCmd;
.super Lcom/miui/backup/BackupControllerCmd;
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
    .line 263
    invoke-direct/range {p0 .. p5}, Lcom/miui/backup/BackupControllerCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method


# virtual methods
.method protected postAction()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 268
    new-instance v5, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v5}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 271
    .local v5, strategy:Lcom/miui/backup/ScriptStrategy;
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/miui/backup/BackupSettingCmd;->mBaseDir:Ljava/io/File;

    const-string v7, "com.android.phone_preferences.xml"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 272
    .local v4, phonePrefFile:Ljava/io/File;
    const-string v6, "/data/data/com.android.phone/shared_prefs/com.android.phone_preferences.xml"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v8, v6, v7}, Lcom/miui/backup/BackupSettingCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/miui/backup/BackupSettingCmd;->mBaseDir:Ljava/io/File;

    const-string v7, "com.android.mms_preferences.xml"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    .local v2, mmsPrefFile:Ljava/io/File;
    const-string v6, "/data/data/com.android.mms/shared_prefs/com.android.mms_preferences.xml"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v8, v6, v7}, Lcom/miui/backup/BackupSettingCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/miui/backup/BackupSettingCmd;->mBaseDir:Ljava/io/File;

    const-string v7, "gesture.key"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    .local v1, gestureFile:Ljava/io/File;
    const-string v6, "/data/system/gesture.key"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v8, v6, v7}, Lcom/miui/backup/BackupSettingCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/miui/backup/BackupSettingCmd;->mBaseDir:Ljava/io/File;

    const-string v7, "password.key"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 281
    .local v3, passwordFile:Ljava/io/File;
    const-string v6, "/data/system/password.key"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v8, v6, v7}, Lcom/miui/backup/BackupSettingCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/miui/backup/BackupSettingCmd;->mBaseDir:Ljava/io/File;

    const-string v7, "build.prop"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    .local v0, buildPrefFile:Ljava/io/File;
    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/miui/backup/BackupSettingCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v5}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 289
    sget-object v6, Lcom/miui/backup/BackupSettingCmd;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    invoke-virtual {p0}, Lcom/miui/backup/BackupSettingCmd;->getLabel()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/backup/BackupSettingCmd;->mDataName:Ljava/lang/String;

    iget-object v9, p0, Lcom/miui/backup/BackupSettingCmd;->mDataPath:Ljava/lang/String;

    iget-object v10, p0, Lcom/miui/backup/BackupSettingCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget v10, v10, Lcom/miui/backup/AppInfo;->type:I

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/miui/backup/DbAdapter;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    .line 290
    const/4 v6, 0x1

    return v6
.end method
