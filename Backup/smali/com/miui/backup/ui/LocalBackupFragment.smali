.class public Lcom/miui/backup/ui/LocalBackupFragment;
.super Landroid/app/ListFragment;
.source "LocalBackupFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;,
        Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;,
        Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;

.field private mEditableListView:Landroid/widget/EditableListView;

.field private mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

.field private mSortDescComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleImage:Landroid/widget/ImageView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 355
    new-instance v0, Lcom/miui/backup/ui/LocalBackupFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/backup/ui/LocalBackupFragment$1;-><init>(Lcom/miui/backup/ui/LocalBackupFragment;)V

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSortDescComparator:Ljava/util/Comparator;

    .line 460
    return-void
.end method

.method static synthetic access$000(Lcom/miui/backup/ui/LocalBackupFragment;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/backup/ui/LocalBackupFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/backup/ui/LocalBackupFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/backup/ui/LocalBackupFragment;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/backup/ui/LocalBackupFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->refreshBackupList()V

    return-void
.end method

.method private convertOldTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "title"

    .prologue
    .line 235
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 236
    .local v1, length:I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v2, titleBuilder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 240
    .local v3, underLineIndex:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 242
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 243
    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 240
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 254
    .end local v0           #index:I
    .end local v1           #length:I
    .end local v2           #titleBuilder:Ljava/lang/StringBuilder;
    .end local v3           #underLineIndex:I
    :catch_0
    move-exception v4

    .line 257
    :cond_1
    :goto_3
    return-object p1

    .line 249
    .restart local v0       #index:I
    .restart local v1       #length:I
    .restart local v2       #titleBuilder:Ljava/lang/StringBuilder;
    .restart local v3       #underLineIndex:I
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 252
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_3
.end method

.method private getBackupList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v3, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v7, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 342
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 343
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 344
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 345
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, fileName:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 347
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    .end local v4           #fileName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 352
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_1
    return-object v3
.end method

.method private getItemsCounts(Ljava/io/File;)[I
    .locals 9
    .parameter "root"

    .prologue
    const/4 v8, 0x1

    .line 366
    const/4 v3, 0x0

    .line 368
    .local v3, ret:[I
    new-instance v2, Ljava/io/File;

    const-string v6, "backup_config.db"

    invoke-direct {v2, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    .local v2, restoreDbFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v4, v3

    .line 401
    .end local v3           #ret:[I
    .local v4, ret:[I
    :goto_0
    return-object v4

    .line 371
    .end local v4           #ret:[I
    .restart local v3       #ret:[I
    :cond_0
    new-instance v1, Lcom/miui/backup/DbAdapter;

    iget-object v6, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/miui/backup/DbAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    .local v1, dbAdapter:Lcom/miui/backup/DbAdapter;
    const/4 v0, 0x0

    .line 374
    .local v0, appsCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v1}, Lcom/miui/backup/DbAdapter;->open()Lcom/miui/backup/DbAdapter;

    .line 375
    invoke-virtual {v1}, Lcom/miui/backup/DbAdapter;->fetchAllApps()Landroid/database/Cursor;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 378
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_7

    .line 379
    if-nez v3, :cond_1

    .line 380
    const/4 v6, 0x2

    new-array v3, v6, [I

    .end local v3           #ret:[I
    fill-array-data v3, :array_0

    .line 382
    .restart local v3       #ret:[I
    :cond_1
    const-string v6, "appType"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 383
    .local v5, type:I
    if-ne v5, v8, :cond_4

    .line 384
    const/4 v6, 0x1

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    .line 388
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 391
    .end local v5           #type:I
    :catch_0
    move-exception v6

    .line 394
    if-eqz v0, :cond_2

    .line 395
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_2
    if-eqz v1, :cond_3

    .line 398
    invoke-virtual {v1}, Lcom/miui/backup/DbAdapter;->close()V

    :cond_3
    :goto_3
    move-object v4, v3

    .line 401
    .end local v3           #ret:[I
    .restart local v4       #ret:[I
    goto :goto_0

    .line 386
    .end local v4           #ret:[I
    .restart local v3       #ret:[I
    .restart local v5       #type:I
    :cond_4
    const/4 v6, 0x0

    :try_start_1
    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 394
    .end local v5           #type:I
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_5

    .line 395
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_5
    if-eqz v1, :cond_6

    .line 398
    invoke-virtual {v1}, Lcom/miui/backup/DbAdapter;->close()V

    :cond_6
    throw v6

    .line 394
    :cond_7
    if-eqz v0, :cond_8

    .line 395
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_8
    if-eqz v1, :cond_3

    .line 398
    invoke-virtual {v1}, Lcom/miui/backup/DbAdapter;->close()V

    goto :goto_3

    .line 380
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private refreshBackupList()V
    .locals 25

    .prologue
    .line 262
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupFragment;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/backup/SDCardMonitor;->isSdCardAvailable()Z

    move-result v21

    if-nez v21, :cond_0

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;->notifyDataSetChanged()V

    .line 337
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/miui/backup/ui/LocalBackupFragment;->getBackupList()Ljava/util/List;

    move-result-object v9

    .line 269
    .local v9, listContent:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v5, v0, :cond_8

    .line 270
    new-instance v19, Ljava/util/Hashtable;

    invoke-direct/range {v19 .. v19}, Ljava/util/Hashtable;-><init>()V

    .line 271
    .local v19, table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .local v4, fileName:Ljava/lang/String;
    :try_start_1
    new-instance v8, Ljava/io/File;

    sget-object v21, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v8, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    .local v8, lDir:Ljava/io/File;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/backup/ui/LocalBackupFragment;->convertOldTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 277
    .local v20, title:Ljava/lang/String;
    invoke-static {v8}, Lcom/miui/backup/BackupUtils;->getProgress(Ljava/io/File;)I

    move-result v10

    .line 278
    .local v10, progress:I
    const/4 v6, 0x0

    .line 279
    .local v6, isFailed:Z
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v10, v0, :cond_1

    .line 269
    .end local v6           #isFailed:Z
    .end local v8           #lDir:Ljava/io/File;
    .end local v10           #progress:I
    .end local v20           #title:Ljava/lang/String;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 281
    .restart local v6       #isFailed:Z
    .restart local v8       #lDir:Ljava/io/File;
    .restart local v10       #progress:I
    .restart local v20       #title:Ljava/lang/String;
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_2

    .line 282
    const/4 v6, 0x1

    .line 285
    :cond_2
    const/4 v7, 0x0

    .line 286
    .local v7, itemCounts:[I
    if-nez v6, :cond_3

    .line 288
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/miui/backup/ui/LocalBackupFragment;->getItemsCounts(Ljava/io/File;)[I

    move-result-object v7

    .line 289
    if-nez v7, :cond_3

    .line 290
    const/4 v6, 0x1

    .line 295
    :cond_3
    invoke-static {v8}, Lcom/miui/backup/SysUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v12

    .line 296
    .local v12, size:J
    const-wide/16 v21, 0x400

    div-long v21, v12, v21

    const-wide/16 v23, 0x400

    div-long v16, v21, v23

    .line 297
    .local v16, sizeMB:J
    const-wide/16 v21, 0x400

    div-long v14, v12, v21

    .line 299
    .local v14, sizeKB:J
    const v21, 0x7f070009

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/backup/ui/LocalBackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 300
    .local v18, summary:Ljava/lang/String;
    if-nez v6, :cond_5

    .line 301
    const-wide/16 v21, 0x1

    cmp-long v21, v16, v21

    if-lez v21, :cond_7

    .line 302
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "MB,"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 306
    :goto_3
    const/16 v21, 0x0

    aget v21, v7, v21

    if-lez v21, :cond_4

    .line 307
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v7, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f070007

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/backup/ui/LocalBackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 309
    :cond_4
    const/16 v21, 0x1

    aget v21, v7, v21

    if-lez v21, :cond_5

    .line 310
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget v22, v7, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f070008

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/backup/ui/LocalBackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 314
    :cond_5
    const-string v21, "failed"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v21, "fileName"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v21, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v21, "blockSize"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v21, "summary"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 323
    .end local v6           #isFailed:Z
    .end local v7           #itemCounts:[I
    .end local v8           #lDir:Ljava/io/File;
    .end local v10           #progress:I
    .end local v12           #size:J
    .end local v14           #sizeKB:J
    .end local v16           #sizeMB:J
    .end local v18           #summary:Ljava/lang/String;
    .end local v20           #title:Ljava/lang/String;
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 333
    .end local v4           #fileName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v9           #listContent:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v19           #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v3

    .line 334
    .local v3, e:Landroid/database/SQLException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 336
    .end local v3           #e:Landroid/database/SQLException;
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 304
    .restart local v4       #fileName:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v6       #isFailed:Z
    .restart local v7       #itemCounts:[I
    .restart local v8       #lDir:Ljava/io/File;
    .restart local v9       #listContent:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #progress:I
    .restart local v12       #size:J
    .restart local v14       #sizeKB:J
    .restart local v16       #sizeMB:J
    .restart local v18       #summary:Ljava/lang/String;
    .restart local v19       #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20       #title:Ljava/lang/String;
    :cond_7
    :try_start_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "KB,"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v18

    goto/16 :goto_3

    .line 326
    .end local v4           #fileName:Ljava/lang/String;
    .end local v6           #isFailed:Z
    .end local v7           #itemCounts:[I
    .end local v8           #lDir:Ljava/io/File;
    .end local v10           #progress:I
    .end local v12           #size:J
    .end local v14           #sizeKB:J
    .end local v16           #sizeMB:J
    .end local v18           #summary:Ljava/lang/String;
    .end local v19           #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20           #title:Ljava/lang/String;
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_6

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupFragment;->mSortDescComparator:Ljava/util/Comparator;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Hashtable;

    .line 329
    .local v11, recently:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "failed"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-nez v21, :cond_6

    .line 330
    const-string v21, "summary"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "summary"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0x7f07000a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/miui/backup/ui/LocalBackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 320
    .end local v11           #recently:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4       #fileName:Ljava/lang/String;
    .restart local v19       #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v21

    goto/16 :goto_4
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    .line 98
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->getView()Landroid/view/View;

    move-result-object v7

    .line 100
    .local v7, view:Landroid/view/View;
    const v0, 0x7f0a000e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mTitleImage:Landroid/widget/ImageView;

    .line 101
    const v0, 0x7f0a000f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSummaryText:Landroid/widget/TextView;

    .line 103
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView;

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    .line 104
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 106
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    new-instance v1, Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;

    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;-><init>(Lcom/miui/backup/ui/LocalBackupFragment;Landroid/app/Activity;Landroid/widget/EditableListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/EditableListView$EditableListViewListener;)V

    .line 108
    new-instance v0, Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;

    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    const v4, 0x7f030006

    new-array v5, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "title"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "summary"

    aput-object v6, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;-><init>(Lcom/miui/backup/ui/LocalBackupFragment;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;

    .line 113
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    invoke-direct {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->refreshBackupList()V

    .line 116
    return-void

    .line 108
    nop

    :array_0
    .array-data 0x4
        0x16t 0x0t 0x2t 0x1t
        0x10t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 74
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    .line 76
    invoke-virtual {p0, v4}, Lcom/miui/backup/ui/LocalBackupFragment;->setHasOptionsMenu(Z)V

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    .line 79
    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/backup/SDCardMonitor;->getSDCardMonitor(Landroid/content/Context;)Lcom/miui/backup/SDCardMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    .line 81
    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 82
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    invoke-static {}, Lcom/miui/backup/AppInitializer;->getInstance()Lcom/miui/backup/AppInitializer;

    move-result-object v0

    .line 86
    .local v0, appInit:Lcom/miui/backup/AppInitializer;
    invoke-virtual {v0}, Lcom/miui/backup/AppInitializer;->init()Z

    .line 87
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x2

    .line 143
    invoke-interface {p1, v4}, Landroid/view/Menu;->removeGroup(I)V

    .line 144
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f070003

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 149
    .local v0, addMenu:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 150
    iget-object v1, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v1}, Lcom/miui/backup/SDCardMonitor;->isSdCardAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 92
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .parameter "hidden"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onHiddenChanged(Z)V

    .line 135
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 137
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;

    invoke-virtual {v0}, Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;->notifyDataSetChanged()V

    .line 139
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 170
    const-string v1, "failed"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 171
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/backup/ui/RestoreSelectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    const-string v2, "ext_backup"

    const-string v3, "fileName"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/LocalBackupFragment;->startActivity(Landroid/content/Intent;)V

    .line 184
    :goto_0
    return-void

    .line 176
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    .line 157
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/backup/ui/BackupSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/LocalBackupFragment;->startActivity(Landroid/content/Intent;)V

    .line 164
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v0, p0}, Lcom/miui/backup/SDCardMonitor;->removeSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V

    .line 129
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 130
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 121
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v0, p0}, Lcom/miui/backup/SDCardMonitor;->addSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/LocalBackupFragment;->onSdcardStatusChanged(Z)V

    .line 123
    return-void
.end method

.method public onSdcardStatusChanged(Z)V
    .locals 2
    .parameter "mount"

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->refreshBackupList()V

    .line 222
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v0}, Lcom/miui/backup/SDCardMonitor;->isSdCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mTitleImage:Landroid/widget/ImageView;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSummaryText:Landroid/widget/TextView;

    const v1, 0x7f070078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 230
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mTitleImage:Landroid/widget/ImageView;

    const v1, 0x30200ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSummaryText:Landroid/widget/TextView;

    const v1, 0x30c0038

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
