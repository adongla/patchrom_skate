.class Lcom/miui/backup/BackupCmdFactory;
.super Lcom/miui/backup/BackupRestoreCmdFactory;
.source "BackupRestoreCmdFactory.java"


# static fields
.field private static sControllerTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/backup/BackupCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    .line 39
    sget-object v0, Lcom/miui/backup/BackupCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    const-string v1, "ADDRESSBOOK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/miui/backup/BackupCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    const-string v1, "CALLLOG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/miui/backup/BackupCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    const-string v1, "SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/miui/backup/BackupCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    const-string v1, "MMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/miui/backup/BackupCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    const-string v1, "NOTE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/miui/backup/BackupCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    const-string v1, "ANTISPAM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/miui/backup/BackupCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    const-string v1, "com.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreCmdFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createCmd(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)Lcom/miui/backup/BackupRestoreCmd;
    .locals 6
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 48
    iget v0, p1, Lcom/miui/backup/AppInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/miui/backup/BackupAppCmd;->createCmd(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)Lcom/miui/backup/BackupAppCmd;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_1
    sget-object v0, Lcom/miui/backup/BackupCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    new-instance v0, Lcom/miui/backup/BackupControllerCmd;

    iget-object v4, p1, Lcom/miui/backup/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupControllerCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    const-string v0, "SETTING"

    iget-object v1, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    new-instance v0, Lcom/miui/backup/BackupSettingCmd;

    iget-object v4, p1, Lcom/miui/backup/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupSettingCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    const-string v0, "com.miui.home"

    iget-object v1, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    new-instance v0, Lcom/miui/backup/BackupLauncherDbCmd;

    iget-object v4, p1, Lcom/miui/backup/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupLauncherDbCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_3
    const-string v0, "theme"

    iget-object v1, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const-string v0, "com.miui.uac"

    iget-object v1, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    new-instance v0, Lcom/miui/backup/BackupSuperuserCmd;

    iget-object v1, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/miui/backup/BackupSuperuserCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V

    goto :goto_0

    .line 68
    :cond_4
    const-string v0, "ACCOUNT"

    iget-object v1, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    new-instance v0, Lcom/miui/backup/BackupAccountCmd;

    iget-object v4, p1, Lcom/miui/backup/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupAccountCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 71
    :cond_5
    new-instance v0, Lcom/miui/backup/BackupAppDataCmd;

    iget-object v4, p1, Lcom/miui/backup/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupAppDataCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
