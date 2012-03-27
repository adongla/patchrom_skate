.class Lcom/miui/backup/RestoreCmdFactory;
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
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/backup/RestoreCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    .line 83
    sget-object v0, Lcom/miui/backup/RestoreCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    const-string v1, "addressbook.store"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/miui/backup/RestoreCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    const-string v1, "calllog.store"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/miui/backup/RestoreCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    const-string v1, "sms.store"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/miui/backup/RestoreCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    const-string v1, "mms.store"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/miui/backup/RestoreCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    const-string v1, "note.store"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/miui/backup/RestoreCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    const-string v1, "antispam.store"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/miui/backup/RestoreCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    const-string v1, "deskclock.store"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreCmdFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createCmd(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)Lcom/miui/backup/BackupRestoreCmd;
    .locals 3
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 92
    iget v1, p1, Lcom/miui/backup/AppInfo;->type:I

    packed-switch v1, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    return-object v0

    .line 94
    :pswitch_0
    new-instance v0, Lcom/miui/backup/RestoreAppCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreAppCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 96
    :pswitch_1
    new-instance v0, Lcom/miui/backup/RestoreUserAppCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreUserAppCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 98
    :pswitch_2
    sget-object v1, Lcom/miui/backup/RestoreCmdFactory;->sControllerTypeList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    new-instance v0, Lcom/miui/backup/RestoreControllerCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreControllerCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 100
    :cond_1
    const-string v1, "com.miui.home"

    iget-object v2, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    new-instance v0, Lcom/miui/backup/RestoreLauncherDbCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreLauncherDbCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 102
    :cond_2
    const-string v1, "wpa_supplicant.conf"

    iget-object v2, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    new-instance v0, Lcom/miui/backup/RestoreWifiCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreWifiCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 104
    :cond_3
    const-string v1, "alarms.db"

    iget-object v2, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 105
    new-instance v0, Lcom/miui/backup/RestoreDeskClockDataCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreDeskClockDataCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 106
    :cond_4
    const-string v1, "theme.dir"

    iget-object v2, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    const-string v1, "com.miui.uac"

    iget-object v2, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const-string v1, "accounts.db"

    iget-object v2, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 113
    new-instance v0, Lcom/miui/backup/RestoreAccountCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreAccountCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 114
    :cond_5
    const-string v1, "setting.store"

    iget-object v2, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    new-instance v0, Lcom/miui/backup/RestoreSettingCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreSettingCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
