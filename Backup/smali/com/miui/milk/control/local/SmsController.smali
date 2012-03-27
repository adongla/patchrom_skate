.class public Lcom/miui/milk/control/local/SmsController;
.super Lcom/miui/milk/control/local/BaseController;
.source "SmsController.java"


# instance fields
.field private mSmsManager:Lcom/miui/milk/source/sms/SmsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/milk/control/local/BaseController;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/miui/milk/source/sms/SmsManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/sms/SmsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/local/SmsController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    .line 28
    return-void
.end method


# virtual methods
.method public export(Ljava/io/File;)V
    .locals 12
    .parameter "exportFile"

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 36
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms;->newBuilder()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v6

    .line 37
    .local v6, smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    iget-object v8, p0, Lcom/miui/milk/control/local/SmsController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    invoke-virtual {v8}, Lcom/miui/milk/source/sms/SmsManager;->prepareAllSmsIds()Ljava/util/Vector;

    move-result-object v5

    .line 39
    .local v5, smsIds:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/miui/milk/control/local/SmsController;->mTotalExportSize:J

    .line 40
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/miui/milk/control/local/SmsController;->mCurrExportIndex:J

    .line 41
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 42
    .local v2, id:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/miui/milk/control/local/SmsController;->mCanceled:Z

    if-eqz v8, :cond_3

    .line 72
    .end local v2           #id:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 44
    .restart local v2       #id:Ljava/lang/String;
    :cond_3
    :try_start_0
    iget-object v8, p0, Lcom/miui/milk/control/local/SmsController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/miui/milk/source/sms/SmsManager;->load(J)Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v4

    .line 45
    .local v4, sms:Lcom/miui/milk/model/SmsProtos$Sms;
    if-eqz v4, :cond_1

    .line 46
    invoke-virtual {v6, v4}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->addSms(Lcom/miui/milk/model/SmsProtos$Sms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    .line 47
    iget-wide v8, p0, Lcom/miui/milk/control/local/SmsController;->mCurrExportIndex:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/miui/milk/control/local/SmsController;->mCurrExportIndex:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v4           #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "SmsController"

    const-string v9, "Cannot load sms "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #id:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v7

    .line 55
    .local v7, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v6}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->build()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setMmsSms(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 56
    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 58
    iget-boolean v8, p0, Lcom/miui/milk/control/local/SmsController;->mCanceled:Z

    if-nez v8, :cond_2

    .line 62
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 63
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 64
    .local v3, output:Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 65
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 66
    const-string v8, "SmsController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Export Sms Counts : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/miui/milk/control/local/SmsController;->mCurrExportIndex:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 67
    .end local v3           #output:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 68
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v8, "SmsController"

    const-string v9, "Cannot export sms "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 69
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 70
    .local v0, e:Ljava/io/IOException;
    const-string v8, "SmsController"

    const-string v9, "Cannot export sms "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public importData(Ljava/io/File;)V
    .locals 10
    .parameter "importFile"

    .prologue
    .line 77
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 78
    .local v2, input:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 80
    .local v4, smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    invoke-static {v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v5

    .line 81
    .local v5, syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 82
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasVersion()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 84
    invoke-virtual {v5}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getMmsSms()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v4

    .line 87
    :cond_0
    iget-boolean v6, p0, Lcom/miui/milk/control/local/SmsController;->mCanceled:Z

    if-nez v6, :cond_1

    if-nez v4, :cond_2

    .line 110
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v4           #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .end local v5           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_1
    :goto_0
    return-void

    .line 90
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v4       #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .restart local v5       #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_2
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/miui/milk/control/local/SmsController;->mCurrImportIndex:J

    .line 91
    invoke-virtual {v4}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getSmsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/miui/milk/control/local/SmsController;->mTotalImportSize:J

    .line 92
    iget-object v6, p0, Lcom/miui/milk/control/local/SmsController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    invoke-virtual {v6}, Lcom/miui/milk/source/sms/SmsManager;->prepareSms()V

    .line 93
    invoke-virtual {v4}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getSmsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/SmsProtos$Sms;

    .line 94
    .local v3, sms:Lcom/miui/milk/model/SmsProtos$Sms;
    iget-boolean v6, p0, Lcom/miui/milk/control/local/SmsController;->mCanceled:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v6, :cond_1

    .line 97
    :try_start_1
    iget-object v6, p0, Lcom/miui/milk/control/local/SmsController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    invoke-virtual {v6, v3}, Lcom/miui/milk/source/sms/SmsManager;->add(Lcom/miui/milk/model/SmsProtos$Sms;)J

    .line 98
    iget-wide v6, p0, Lcom/miui/milk/control/local/SmsController;->mCurrImportIndex:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/miui/milk/control/local/SmsController;->mCurrImportIndex:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SmsController"

    const-string v7, "Cannot add sms "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 105
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    .end local v4           #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .end local v5           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_1
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v6, "SmsController"

    const-string v7, "Cannot import sms "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 103
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v4       #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .restart local v5       #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_3
    :try_start_3
    const-string v6, "SmsController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Import Sms Counts : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/miui/milk/control/local/SmsController;->mCurrImportIndex:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 107
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v4           #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .end local v5           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_2
    move-exception v0

    .line 108
    .local v0, e:Ljava/io/IOException;
    const-string v6, "SmsController"

    const-string v7, "Cannot import sms "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
