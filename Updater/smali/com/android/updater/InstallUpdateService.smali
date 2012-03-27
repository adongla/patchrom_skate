.class public Lcom/android/updater/InstallUpdateService;
.super Landroid/app/Service;
.source "InstallUpdateService.java"

# interfaces
.implements Lcom/android/updater/InstallUpdateListener;


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sNotificationBuilder:Landroid/app/Notification$Builder;

.field private static sNotificationManager:Landroid/app/NotificationManager;

.field private static sRomName:Ljava/lang/String;

.field public static sUpdateMutex:Ljava/lang/Object;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/updater/InstallUpdateService;->sUpdateMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public static cleanNotification(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 211
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 212
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationManager:Landroid/app/NotificationManager;

    .line 214
    :cond_0
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 215
    return-void
.end method

.method public static notifyProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    .line 74
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 76
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p0, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 77
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 78
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 80
    :cond_0
    return-void
.end method

.method private sendMessageToUI(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 136
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    :cond_0
    return-void
.end method

.method public static setHandler(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 64
    sget-object v1, Lcom/android/updater/InstallUpdateService;->sUpdateMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    sput-object p0, Lcom/android/updater/InstallUpdateService;->sHandler:Landroid/os/Handler;

    .line 66
    monitor-exit v1

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setRomName(Ljava/lang/String;)V
    .locals 0
    .parameter "romName"

    .prologue
    .line 70
    sput-object p0, Lcom/android/updater/InstallUpdateService;->sRomName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static setupNotification(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    .line 220
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 221
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 222
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    sget-object v1, Lcom/android/updater/InstallUpdateService;->sRomName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 223
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v3, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 224
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 225
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 226
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 227
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/updater/ApplyUpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    const-string v1, "from_notification"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    const-string v1, "update_info"

    sget-object v2, Lcom/android/updater/InstallUpdateService;->sRomName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const/high16 v1, 0x800

    invoke-static {p0, v3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 233
    sget-object v1, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 235
    invoke-static {p0}, Lcom/android/updater/InstallUpdateService;->cleanNotification(Landroid/content/Context;)V

    .line 236
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 237
    return-void
.end method


# virtual methods
.method public finishInstall(ILjava/lang/String;)V
    .locals 11
    .parameter "status"
    .parameter "logFile"

    .prologue
    const/4 v10, 0x0

    .line 144
    sget-object v8, Lcom/android/updater/InstallUpdateService;->sUpdateMutex:Ljava/lang/Object;

    monitor-enter v8

    .line 145
    :try_start_0
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 147
    .local v6, updateState:Lcom/android/updater/UpdateState;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 148
    .local v2, input:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 151
    .local v0, buffer:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, text:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 158
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #input:Ljava/io/BufferedReader;
    .end local v5           #text:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    sget-object v7, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v7, :cond_2

    .line 180
    :goto_2
    return-void

    .line 153
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v2       #input:Ljava/io/BufferedReader;
    .restart local v5       #text:Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/updater/UpdateState;->mLog:Ljava/lang/String;

    .line 155
    if-nez p1, :cond_1

    const/4 v7, 0x2

    :goto_3
    iput v7, v6, Lcom/android/updater/UpdateState;->mStatus:I

    .line 157
    const/16 v7, 0x3e9

    invoke-direct {p0, v7}, Lcom/android/updater/InstallUpdateService;->sendMessageToUI(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 161
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #input:Ljava/io/BufferedReader;
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #updateState:Lcom/android/updater/UpdateState;
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 155
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v2       #input:Ljava/io/BufferedReader;
    .restart local v5       #text:Ljava/lang/String;
    .restart local v6       #updateState:Lcom/android/updater/UpdateState;
    :cond_1
    const/4 v7, 0x3

    goto :goto_3

    .line 166
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #input:Ljava/io/BufferedReader;
    .end local v5           #text:Ljava/lang/String;
    :cond_2
    const v7, 0x7f050013

    invoke-virtual {p0, v7}, Lcom/android/updater/InstallUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, notifyTitle:Ljava/lang/String;
    const v7, 0x7f050014

    invoke-virtual {p0, v7}, Lcom/android/updater/InstallUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, notifyDescription:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 169
    const v7, 0x7f050015

    invoke-virtual {p0, v7}, Lcom/android/updater/InstallUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 170
    const v7, 0x7f050016

    invoke-virtual {p0, v7}, Lcom/android/updater/InstallUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 172
    :cond_3
    sget-object v7, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 173
    sget-object v7, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 174
    sget-object v7, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 175
    sget-object v7, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7, v10, v10, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 176
    sget-object v7, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 177
    sget-object v7, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 178
    sget-object v7, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 179
    sget-object v7, Lcom/android/updater/InstallUpdateService;->sNotificationManager:Landroid/app/NotificationManager;

    sget-object v8, Lcom/android/updater/InstallUpdateService;->sNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 85
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/updater/InstallUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 86
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "*updater*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/updater/InstallUpdateService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/android/updater/InstallUpdateService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 128
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v4

    .line 122
    :goto_0
    return v4

    .line 95
    :cond_0
    const/4 v3, 0x0

    .line 96
    .local v3, updateState:Lcom/android/updater/UpdateState;
    sget-object v5, Lcom/android/updater/InstallUpdateService;->sUpdateMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 97
    :try_start_0
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Lcom/android/updater/UpdateState;->reset()V

    .line 99
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/android/updater/InstallUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    sput-object v4, Lcom/android/updater/InstallUpdateService;->sNotificationManager:Landroid/app/NotificationManager;

    .line 102
    const-string v4, "UPDATE_PACKAGE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, packageFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/updater/InstallUpdateService;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "install.log"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v1, logf:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 107
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, logFile:Ljava/lang/String;
    new-instance v4, Lcom/android/updater/InstallUpdateService$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/updater/InstallUpdateService$1;-><init>(Lcom/android/updater/InstallUpdateService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/updater/InstallUpdateService$1;->start()V

    .line 122
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v4

    goto :goto_0

    .line 99
    .end local v0           #logFile:Ljava/lang/String;
    .end local v1           #logf:Ljava/io/File;
    .end local v2           #packageFilePath:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setProgress(F)V
    .locals 3
    .parameter "fraction"

    .prologue
    .line 184
    sget-object v2, Lcom/android/updater/InstallUpdateService;->sUpdateMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 185
    :try_start_0
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v0

    .line 186
    .local v0, updateState:Lcom/android/updater/UpdateState;
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 187
    :cond_0
    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const/high16 p1, 0x3f80

    .line 188
    :cond_1
    iget v1, v0, Lcom/android/updater/UpdateState;->mProgress:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 189
    iput p1, v0, Lcom/android/updater/UpdateState;->mProgress:F

    .line 191
    :cond_2
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/updater/UpdateState;->mStatus:I

    .line 192
    const/16 v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/android/updater/InstallUpdateService;->sendMessageToUI(I)V

    .line 193
    monitor-exit v2

    .line 194
    return-void

    .line 193
    .end local v0           #updateState:Lcom/android/updater/UpdateState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showProgress(FI)V
    .locals 5
    .parameter "fraction"
    .parameter "seconds"

    .prologue
    .line 198
    sget-object v2, Lcom/android/updater/InstallUpdateService;->sUpdateMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 199
    :try_start_0
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v0

    .line 200
    .local v0, updateState:Lcom/android/updater/UpdateState;
    iget v1, v0, Lcom/android/updater/UpdateState;->mProgressScopeStart:F

    iget v3, v0, Lcom/android/updater/UpdateState;->mProgressScopeSize:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/android/updater/UpdateState;->mProgressScopeStart:F

    .line 201
    iput p1, v0, Lcom/android/updater/UpdateState;->mProgressScopeSize:F

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/updater/UpdateState;->mProgressScopeTime:J

    .line 203
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v3, v1

    iput-wide v3, v0, Lcom/android/updater/UpdateState;->mProgressScopeDuration:J

    .line 204
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/updater/UpdateState;->mProgress:F

    .line 205
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/updater/UpdateState;->mStatus:I

    .line 206
    const/16 v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/android/updater/InstallUpdateService;->sendMessageToUI(I)V

    .line 207
    monitor-exit v2

    .line 208
    return-void

    .line 207
    .end local v0           #updateState:Lcom/android/updater/UpdateState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
