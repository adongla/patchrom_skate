.class public Lcom/miui/milk/control/local/MmsController;
.super Lcom/miui/milk/control/local/BaseController;
.source "MmsController.java"


# instance fields
.field private mMmsManager:Lcom/miui/milk/source/mms/MmsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/miui/milk/control/local/BaseController;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/miui/milk/source/mms/MmsManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/mms/MmsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/local/MmsController;->mMmsManager:Lcom/miui/milk/source/mms/MmsManager;

    .line 27
    return-void
.end method


# virtual methods
.method public export(Ljava/io/File;)V
    .locals 12
    .parameter "exportFile"

    .prologue
    .line 31
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 35
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->newBuilder()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    move-result-object v3

    .line 36
    .local v3, mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
    iget-object v8, p0, Lcom/miui/milk/control/local/MmsController;->mMmsManager:Lcom/miui/milk/source/mms/MmsManager;

    invoke-virtual {v8}, Lcom/miui/milk/source/mms/MmsManager;->prepareAllMmsIds()Ljava/util/Vector;

    move-result-object v4

    .line 38
    .local v4, mmsIds:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/miui/milk/control/local/MmsController;->mTotalExportSize:J

    .line 39
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/miui/milk/control/local/MmsController;->mCurrExportIndex:J

    .line 40
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

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

    .line 41
    .local v2, id:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/miui/milk/control/local/MmsController;->mCanceled:Z

    if-eqz v8, :cond_3

    .line 71
    .end local v2           #id:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 43
    .restart local v2       #id:Ljava/lang/String;
    :cond_3
    :try_start_0
    iget-object v8, p0, Lcom/miui/milk/control/local/MmsController;->mMmsManager:Lcom/miui/milk/source/mms/MmsManager;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/miui/milk/source/mms/MmsManager;->backupToProtocolBuffer(J)Lcom/miui/milk/model/MmsProtos$Pdu;

    move-result-object v6

    .line 44
    .local v6, pdu:Lcom/miui/milk/model/MmsProtos$Pdu;
    if-eqz v6, :cond_1

    .line 45
    invoke-virtual {v3, v6}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->addPdus(Lcom/miui/milk/model/MmsProtos$Pdu;)Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    .line 46
    iget-wide v8, p0, Lcom/miui/milk/control/local/MmsController;->mCurrExportIndex:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/miui/milk/control/local/MmsController;->mCurrExportIndex:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    .end local v6           #pdu:Lcom/miui/milk/model/MmsProtos$Pdu;
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "MmsController"

    const-string v9, "Cannot load mms "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 53
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #id:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v7

    .line 54
    .local v7, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->build()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setMmsCollection(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 55
    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 57
    iget-boolean v8, p0, Lcom/miui/milk/control/local/MmsController;->mCanceled:Z

    if-nez v8, :cond_2

    .line 61
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 62
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 63
    .local v5, output:Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 64
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 65
    const-string v8, "MmsController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Export Mms Counts : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/miui/milk/control/local/MmsController;->mCurrExportIndex:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 66
    .end local v5           #output:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 67
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v8, "MmsController"

    const-string v9, "Cannot export mms "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 68
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 69
    .local v0, e:Ljava/io/IOException;
    const-string v8, "MmsController"

    const-string v9, "Cannot export mms "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public importData(Ljava/io/File;)V
    .locals 10
    .parameter "importFile"

    .prologue
    .line 76
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 77
    .local v2, input:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 79
    .local v3, mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    invoke-static {v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v5

    .line 80
    .local v5, syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 81
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

    .line 83
    invoke-virtual {v5}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getMmsCollection()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v3

    .line 86
    :cond_0
    iget-boolean v6, p0, Lcom/miui/milk/control/local/MmsController;->mCanceled:Z

    if-nez v6, :cond_1

    if-nez v3, :cond_2

    .line 107
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .end local v5           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_1
    :goto_0
    return-void

    .line 88
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v3       #mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .restart local v5       #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_2
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/miui/milk/control/local/MmsController;->mCurrImportIndex:J

    .line 89
    invoke-virtual {v3}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->getPdusList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/miui/milk/control/local/MmsController;->mTotalImportSize:J

    .line 90
    iget-object v6, p0, Lcom/miui/milk/control/local/MmsController;->mMmsManager:Lcom/miui/milk/source/mms/MmsManager;

    invoke-virtual {v6}, Lcom/miui/milk/source/mms/MmsManager;->prepareMms()V

    .line 91
    invoke-virtual {v3}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->getPdusList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/model/MmsProtos$Pdu;

    .line 92
    .local v4, pdu:Lcom/miui/milk/model/MmsProtos$Pdu;
    iget-boolean v6, p0, Lcom/miui/milk/control/local/MmsController;->mCanceled:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v6, :cond_1

    .line 94
    :try_start_1
    iget-object v6, p0, Lcom/miui/milk/control/local/MmsController;->mMmsManager:Lcom/miui/milk/source/mms/MmsManager;

    invoke-virtual {v6, v4}, Lcom/miui/milk/source/mms/MmsManager;->restoreFromProtocolBuffer(Lcom/miui/milk/model/MmsProtos$Pdu;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 95
    iget-wide v6, p0, Lcom/miui/milk/control/local/MmsController;->mCurrImportIndex:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/miui/milk/control/local/MmsController;->mCurrImportIndex:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "MmsController"

    const-string v7, "Cannot add mms "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 102
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .end local v4           #pdu:Lcom/miui/milk/model/MmsProtos$Pdu;
    .end local v5           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_1
    move-exception v0

    .line 103
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v6, "MmsController"

    const-string v7, "Cannot import mms "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 101
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v3       #mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .restart local v5       #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_4
    :try_start_3
    const-string v6, "MmsController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Import Mms Counts : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/miui/milk/control/local/MmsController;->mCurrImportIndex:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 104
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .end local v5           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_2
    move-exception v0

    .line 105
    .local v0, e:Ljava/io/IOException;
    const-string v6, "MmsController"

    const-string v7, "Cannot import mms "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
