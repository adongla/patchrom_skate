.class public Lcom/miui/backup/SysUtils;
.super Ljava/lang/Object;
.source "SysUtils.java"


# static fields
.field private static final sExec:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/miui/backup/Customization;->EXEC_FILE:Ljava/io/File;

    sput-object v0, Lcom/miui/backup/SysUtils;->sExec:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countFileSize(Ljava/io/File;)J
    .locals 11
    .parameter "root"

    .prologue
    .line 96
    const-wide/16 v5, 0x0

    .line 98
    .local v5, size:J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 99
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 101
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 102
    .local v2, file:Ljava/io/File;
    invoke-static {v2}, Lcom/miui/backup/SysUtils;->countFileSize(Ljava/io/File;)J

    move-result-wide v9

    add-long/2addr v5, v9

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2           #file:Ljava/io/File;
    :cond_0
    move-wide v7, v5

    .line 110
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #size:J
    .local v7, size:J
    :goto_1
    return-wide v7

    .line 107
    .end local v7           #size:J
    .restart local v5       #size:J
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    move-wide v7, v5

    .line 110
    .end local v5           #size:J
    .restart local v7       #size:J
    goto :goto_1
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 6
    .parameter "dirname"

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 78
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 79
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 80
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    invoke-static {v2}, Lcom/miui/backup/SysUtils;->deleteContents(Ljava/io/File;)V

    .line 85
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 0
    .parameter "dirname"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/miui/backup/SysUtils;->deleteContents(Ljava/io/File;)V

    .line 92
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 93
    return-void
.end method

.method public static enoughSpaceOnData(J)Z
    .locals 9
    .parameter "sizeInNeed"

    .prologue
    const/4 v6, 0x0

    .line 176
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 177
    .local v4, path:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v6

    .line 180
    :cond_1
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 181
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 182
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 183
    .local v0, availableBlocks:J
    mul-long v7, v0, v2

    cmp-long v7, p0, v7

    if-gez v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static enoughSpaceOnSdCard(J)Z
    .locals 10
    .parameter "sizeInNeed"

    .prologue
    const/4 v7, 0x0

    .line 161
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, status:Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v7

    .line 165
    :cond_1
    sget-object v4, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    .line 166
    .local v4, path:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 169
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 170
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 171
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 172
    .local v0, availableBlocks:J
    mul-long v8, v0, v2

    cmp-long v8, p0, v8

    if-gez v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 12
    .parameter "root"

    .prologue
    .line 137
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 138
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 139
    const-wide/16 v4, 0x0

    .line 140
    .local v4, filesize:J
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v2, v0, v6

    .line 141
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 142
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, fileName:Ljava/lang/String;
    const-string v10, ".size_"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 144
    const/4 v10, 0x0

    const-string v11, ".size_"

    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 146
    .local v8, newsize:J
    cmp-long v10, v4, v8

    if-gez v10, :cond_0

    .line 147
    move-wide v4, v8

    .line 140
    .end local v3           #fileName:Ljava/lang/String;
    .end local v8           #newsize:J
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 152
    .end local v2           #file:Ljava/io/File;
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_2

    .line 157
    .end local v0           #arr$:[Ljava/io/File;
    .end local v4           #filesize:J
    .end local v6           #i$:I
    .end local v7           #len$:I
    :goto_1
    return-wide v4

    :cond_2
    invoke-static {p0}, Lcom/miui/backup/SysUtils;->countFileSize(Ljava/io/File;)J

    move-result-wide v4

    goto :goto_1
.end method

.method public static getFileSuffix(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "root"
    .parameter "suffix"

    .prologue
    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p0, :cond_1

    .line 118
    :cond_0
    const-string v6, ""

    .line 133
    :goto_0
    return-object v6

    .line 121
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 122
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_3

    .line 123
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 124
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 127
    const/4 v7, 0x0

    invoke-virtual {v3, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, value:Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v3           #fileName:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 133
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3
    const-string v6, ""

    goto :goto_0
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, imei:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const-string v0, ""

    .line 221
    .end local v0           #imei:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static varargs runExecSh([Ljava/lang/String;)Z
    .locals 4
    .parameter "cmd"

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, success:Z
    invoke-static {p0}, Lcom/miui/backup/SysUtils;->writeExecSh([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "root"

    sget-object v2, Lcom/miui/backup/SysUtils;->sExec:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    .line 38
    :cond_0
    return v0
.end method

.method public static showBubble(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 11
    .parameter "context"
    .parameter "packageName"
    .parameter "show"

    .prologue
    const/4 v7, 0x0

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 214
    :cond_0
    return-void

    .line 190
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 191
    .local v3, mainIntent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 195
    .local v6, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    .line 198
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 199
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 200
    .local v0, activity:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 201
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "android.intent.extra.update_application_flatten_name"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    if-eqz p2, :cond_3

    const-string v4, " "

    .line 206
    .local v4, message:Ljava/lang/String;
    :goto_1
    const-string v8, "android.intent.extra.update_application_message"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v8, "android.intent.extra.update_application_message_background_package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v8, "android.intent.extra.update_application_message_background"

    const v9, 0x7f02000a

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v4           #message:Ljava/lang/String;
    :cond_3
    move-object v4, v7

    .line 205
    goto :goto_1
.end method

.method public static showNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZI)V
    .locals 4
    .parameter "context"
    .parameter "icon"
    .parameter "ticker"
    .parameter "title"
    .parameter "body"
    .parameter "contentIntent"
    .parameter "ongoing"
    .parameter "notifyId"

    .prologue
    .line 226
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 228
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 229
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 230
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 231
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 232
    if-nez p6, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 233
    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 234
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 236
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 237
    .local v1, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, p7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 238
    return-void

    .line 232
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static varargs writeExecSh([Ljava/lang/String;)Z
    .locals 8
    .parameter "cmd"

    .prologue
    .line 42
    sget-object v4, Lcom/miui/backup/SysUtils;->sExec:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    sget-object v4, Lcom/miui/backup/SysUtils;->sExec:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 46
    .local v1, out:Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 48
    .local v3, success:Z
    :try_start_0
    sget-object v4, Lcom/miui/backup/SysUtils;->sExec:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 50
    sget-object v4, Lcom/miui/backup/SysUtils;->sExec:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1c0

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 51
    new-instance v2, Ljava/io/FileWriter;

    sget-object v4, Lcom/miui/backup/SysUtils;->sExec:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    :try_start_1
    const-string v4, "#!/system/bin/sh\n"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 54
    aget-object v4, p0, v0

    if-eqz v4, :cond_1

    .line 55
    aget-object v4, p0, v0

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 56
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 60
    const-string v4, "exit\n"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 62
    const/4 v3, 0x1

    .line 65
    if-eqz v2, :cond_5

    .line 67
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 72
    .end local v0           #i:I
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    :cond_3
    :goto_1
    return v3

    .line 68
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v0       #i:I
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 69
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_1

    .line 63
    .end local v0           #i:I
    :catch_1
    move-exception v4

    .line 65
    :goto_2
    if-eqz v1, :cond_3

    .line 67
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 68
    :catch_2
    move-exception v4

    goto :goto_1

    .line 65
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_4

    .line 67
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 69
    :cond_4
    :goto_4
    throw v4

    .line 68
    :catch_3
    move-exception v5

    goto :goto_4

    .line 65
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_3

    .line 63
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_2

    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v0       #i:I
    .restart local v2       #out:Ljava/io/FileWriter;
    :cond_5
    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_1
.end method
