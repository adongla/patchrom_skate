.class public Lcom/miui/milk/source/mms/MmsManager;
.super Ljava/lang/Object;
.source "MmsManager.java"


# static fields
.field private static final PDU_ADDR_COLUMNS:[Ljava/lang/String;

.field private static final PDU_COLUMNS:[Ljava/lang/String;

.field private static final PDU_PART_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDateSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "date_sent"

    aput-object v1, v0, v5

    const-string v1, "msg_box"

    aput-object v1, v0, v6

    const-string v1, "read"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "m_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "m_cls"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rpt_a"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "resp_st"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "tr_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "retr_st"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "retr_txt"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "retr_txt_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "read_status"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ct_cls"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "resp_txt"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "d_tm"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "seen"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/milk/source/mms/MmsManager;->PDU_COLUMNS:[Ljava/lang/String;

    .line 64
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "charset"

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/milk/source/mms/MmsManager;->PDU_ADDR_COLUMNS:[Ljava/lang/String;

    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "seq"

    aput-object v1, v0, v4

    const-string v1, "ct"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v6

    const-string v1, "chset"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cl"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ctt_s"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ctt_t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "text"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/milk/source/mms/MmsManager;->PDU_PART_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/miui/milk/source/mms/MmsManager;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mDateSet:Ljava/util/HashSet;

    .line 90
    return-void
.end method

.method private buildPduAddr(Landroid/database/Cursor;)Lcom/miui/milk/model/MmsProtos$PduAddr;
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 262
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduAddr;->newBuilder()Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    move-result-object v0

    .line 263
    .local v0, addr:Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->setAddress(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    .line 266
    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->setType(I)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    .line 269
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->setCharset(I)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    .line 272
    :cond_2
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->build()Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v1

    return-object v1
.end method

.method private buildPduPart(Landroid/database/Cursor;)Lcom/miui/milk/model/MmsProtos$PduPart;
    .locals 16
    .parameter "cursor"

    .prologue
    .line 276
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduPart;->newBuilder()Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    move-result-object v7

    .line 277
    .local v7, part:Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 279
    .local v8, partId:J
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 280
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setSequence(I)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 282
    :cond_0
    const/4 v12, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 283
    const/4 v12, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentType(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 285
    :cond_1
    const/4 v12, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 286
    const/4 v12, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setName(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 288
    :cond_2
    const/4 v12, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_3

    .line 289
    const/4 v12, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setCharset(I)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 291
    :cond_3
    const/4 v12, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_4

    .line 292
    const/4 v12, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentDisposition(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 294
    :cond_4
    const/4 v12, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_5

    .line 295
    const/4 v12, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setFileName(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 297
    :cond_5
    const/4 v12, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_6

    .line 298
    const/4 v12, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentId(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 300
    :cond_6
    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_7

    .line 301
    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentLocation(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 303
    :cond_7
    const/16 v12, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_8

    .line 304
    const/16 v12, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentTypeStart(I)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 306
    :cond_8
    const/16 v12, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_9

    .line 307
    const/16 v12, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentTypeType(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 309
    :cond_9
    const/16 v12, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_a

    .line 310
    const/16 v12, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setText(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 313
    :cond_a
    sget-object v12, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "part/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 314
    .local v11, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 315
    .local v3, input:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 317
    .local v5, output:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v12, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 318
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 319
    .end local v5           #output:Ljava/io/ByteArrayOutputStream;
    .local v6, output:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 320
    .local v4, len:I
    const/16 v12, 0x1000

    :try_start_1
    new-array v1, v12, [B

    .line 321
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_d

    .line 322
    const/4 v12, 0x0

    invoke-virtual {v6, v1, v12, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    goto :goto_0

    .line 327
    .end local v1           #buffer:[B
    :catch_0
    move-exception v12

    move-object v5, v6

    .line 332
    .end local v4           #len:I
    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #output:Ljava/io/ByteArrayOutputStream;
    :goto_1
    if-eqz v3, :cond_b

    .line 334
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 339
    :cond_b
    :goto_2
    if-eqz v5, :cond_c

    .line 341
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 347
    :cond_c
    :goto_3
    invoke-virtual {v7}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->build()Lcom/miui/milk/model/MmsProtos$PduPart;

    move-result-object v12

    return-object v12

    .line 324
    .end local v5           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buffer:[B
    .restart local v4       #len:I
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    :cond_d
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v10

    .line 326
    .local v10, string:Lcom/google/protobuf/ByteString;
    invoke-virtual {v7, v10}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 332
    if-eqz v3, :cond_e

    .line 334
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 339
    :cond_e
    :goto_4
    if-eqz v6, :cond_12

    .line 341
    :try_start_6
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v5, v6

    .line 344
    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #output:Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 335
    .end local v5           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    .line 336
    .local v2, e:Ljava/io/IOException;
    const-string v12, "MmsManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error closing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 342
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 343
    .restart local v2       #e:Ljava/io/IOException;
    const-string v12, "MmsManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error closing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 344
    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #output:Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 335
    .end local v1           #buffer:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #len:I
    .end local v10           #string:Lcom/google/protobuf/ByteString;
    :catch_3
    move-exception v2

    .line 336
    .restart local v2       #e:Ljava/io/IOException;
    const-string v12, "MmsManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error closing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 342
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 343
    .restart local v2       #e:Ljava/io/IOException;
    const-string v12, "MmsManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error closing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 329
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 330
    .restart local v2       #e:Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v12, "MmsManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IO exception on "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for reading pdu part."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 332
    if-eqz v3, :cond_f

    .line 334
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 339
    :cond_f
    :goto_6
    if-eqz v5, :cond_c

    .line 341
    :try_start_9
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_3

    .line 342
    :catch_6
    move-exception v2

    .line 343
    const-string v12, "MmsManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error closing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 335
    :catch_7
    move-exception v2

    .line 336
    const-string v12, "MmsManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error closing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 332
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_7
    if-eqz v3, :cond_10

    .line 334
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 339
    :cond_10
    :goto_8
    if-eqz v5, :cond_11

    .line 341
    :try_start_b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 344
    :cond_11
    :goto_9
    throw v12

    .line 335
    :catch_8
    move-exception v2

    .line 336
    .restart local v2       #e:Ljava/io/IOException;
    const-string v13, "MmsManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error closing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 342
    .end local v2           #e:Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 343
    .restart local v2       #e:Ljava/io/IOException;
    const-string v13, "MmsManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error closing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 332
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #len:I
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #output:Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 329
    .end local v5           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v2

    move-object v5, v6

    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #output:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .line 327
    .end local v4           #len:I
    :catch_b
    move-exception v12

    goto/16 :goto_1

    .end local v5           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buffer:[B
    .restart local v4       #len:I
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #string:Lcom/google/protobuf/ByteString;
    :cond_12
    move-object v5, v6

    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #output:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_3
.end method

.method private getOrCreateThreadId(Lcom/miui/milk/model/MmsProtos$Pdu;)J
    .locals 6
    .parameter "pdu"

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, addressType:I
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 392
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 393
    .local v2, addresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getAddrsCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 394
    invoke-virtual {p1, v3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getAddrs(I)Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v0

    .line 395
    .local v0, addr:Lcom/miui/milk/model/MmsProtos$PduAddr;
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->hasAddress()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->hasType()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getType()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 396
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 383
    .end local v0           #addr:Lcom/miui/milk/model/MmsProtos$PduAddr;
    .end local v2           #addresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3           #i:I
    :pswitch_1
    const/16 v1, 0x89

    .line 384
    goto :goto_0

    .line 386
    :pswitch_2
    const/16 v1, 0x97

    .line 387
    goto :goto_0

    .line 400
    .restart local v2       #addresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3       #i:I
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 401
    iget-object v4, p0, Lcom/miui/milk/source/mms/MmsManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    .line 403
    :goto_2
    return-wide v4

    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private restorePdu(JLcom/miui/milk/model/MmsProtos$Pdu;)Landroid/net/Uri;
    .locals 6
    .parameter "threadId"
    .parameter "pdu"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 408
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 409
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "thread_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasDate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    const-string v1, "date"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 415
    :cond_0
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasServerDate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    const-string v1, "date_sent"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getServerDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 419
    :cond_1
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgBox()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    const-string v1, "msg_box"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgBox()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    :cond_2
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRead()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 424
    const-string v4, "read"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRead()Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    :cond_3
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMId()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 428
    const-string v1, "m_id"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_4
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 432
    const-string v1, "sub"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_5
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasSubjectCharset()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 436
    const-string v1, "sub_cs"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getSubjectCharset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    :cond_6
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasContentType()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 440
    const-string v1, "ct_t"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_7
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasContentLocation()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 444
    const-string v1, "ct_l"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_8
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasExpiry()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 448
    const-string v1, "exp"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getExpiry()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 451
    :cond_9
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgClass()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 452
    const-string v1, "m_cls"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_a
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgType()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 456
    const-string v1, "m_type"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    :cond_b
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMmsVersion()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 460
    const-string v1, "v"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMmsVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 463
    :cond_c
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgSize()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 464
    const-string v1, "m_size"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    :cond_d
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasPriority()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 468
    const-string v1, "pri"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 471
    :cond_e
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasReadReport()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 472
    const-string v1, "rr"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getReadReport()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    :cond_f
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasReportAllowed()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 476
    const-string v4, "rpt_a"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getReportAllowed()Z

    move-result v1

    if-eqz v1, :cond_1f

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 479
    :cond_10
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasResponseStatus()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 480
    const-string v1, "resp_st"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getResponseStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    :cond_11
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 484
    const-string v1, "st"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    :cond_12
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasTransactionId()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 488
    const-string v1, "tr_id"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_13
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRetrieveStatus()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 492
    const-string v1, "retr_st"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRetrieveStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    :cond_14
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRetrieveText()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 496
    const-string v1, "retr_txt"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRetrieveText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_15
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRetrieveTextCharset()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 500
    const-string v1, "retr_txt_cs"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRetrieveTextCharset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 503
    :cond_16
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasReadStatus()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 504
    const-string v1, "read_status"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getReadStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    :cond_17
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasContentClass()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 508
    const-string v1, "ct_cls"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentClass()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    :cond_18
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasResponseText()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 512
    const-string v1, "resp_txt"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getResponseText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_19
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasDeliveryTime()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 516
    const-string v1, "d_tm"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getDeliveryTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 519
    :cond_1a
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasDeliveryReport()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 520
    const-string v1, "d_rpt"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getDeliveryReport()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    :cond_1b
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasLocked()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 524
    const-string v4, "locked"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getLocked()Z

    move-result v1

    if-eqz v1, :cond_20

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    :cond_1c
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasSeen()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 528
    const-string v1, "seen"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getSeen()Z

    move-result v4

    if-eqz v4, :cond_21

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    :cond_1d
    iget-object v1, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_1e
    move v1, v3

    .line 424
    goto/16 :goto_0

    :cond_1f
    move v1, v3

    .line 476
    goto/16 :goto_1

    :cond_20
    move v1, v3

    .line 524
    goto :goto_2

    :cond_21
    move v2, v3

    .line 528
    goto :goto_3
.end method

.method private restorePduAddr(JLcom/miui/milk/model/MmsProtos$PduAddr;)Landroid/net/Uri;
    .locals 5
    .parameter "msgId"
    .parameter "addr"

    .prologue
    .line 535
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 536
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduAddr;->hasAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    const-string v2, "address"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_0
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduAddr;->hasType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    const-string v2, "type"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    :cond_1
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduAddr;->hasCharset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 545
    const-string v2, "charset"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getCharset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    :cond_2
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/addr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 549
    .local v0, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private restorePduPart(JLcom/miui/milk/model/MmsProtos$PduPart;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 553
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 554
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasSequence()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    const-string v1, "seq"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getSequence()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 558
    :cond_0
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    const-string v1, "ct"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_1
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 563
    const-string v1, "name"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_2
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasCharset()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 567
    const-string v1, "chset"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getCharset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 570
    :cond_3
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentDisposition()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 571
    const-string v1, "cd"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentDisposition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_4
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasFileName()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 575
    const-string v1, "fn"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_5
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentId()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 579
    const-string v1, "cid"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_6
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentLocation()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 583
    const-string v1, "cl"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_7
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentTypeStart()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 587
    const-string v1, "ctt_s"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentTypeStart()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    :cond_8
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentTypeType()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 591
    const-string v1, "ctt_t"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentTypeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_9
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasText()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 595
    const-string v1, "text"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_a
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/part"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 599
    iget-object v2, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 600
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasData()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 601
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    .line 603
    const/4 v0, 0x0

    .line 605
    :try_start_0
    iget-object v3, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 606
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 610
    if-eqz v0, :cond_b

    .line 612
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 619
    :cond_b
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 614
    const-string v0, "MmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 607
    :catch_1
    move-exception v1

    .line 608
    :try_start_3
    const-string v1, "MmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 610
    if-eqz v0, :cond_b

    .line 612
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 613
    :catch_2
    move-exception v0

    .line 614
    const-string v0, "MmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 610
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v1, :cond_c

    .line 612
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 615
    :cond_c
    :goto_2
    throw v0

    .line 613
    :catch_3
    move-exception v1

    .line 614
    const-string v1, "MmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 610
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method private setBasicPduFields(Lcom/miui/milk/model/MmsProtos$Pdu$Builder;Landroid/database/Cursor;)V
    .locals 8
    .parameter "pdu"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-interface {p2, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 169
    :cond_0
    invoke-interface {p2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setDate(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 172
    :cond_1
    invoke-interface {p2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setServerDate(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 175
    :cond_2
    invoke-interface {p2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 176
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgBox(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 178
    :cond_3
    invoke-interface {p2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 179
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1f

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRead(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 181
    :cond_4
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 182
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMId(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 184
    :cond_5
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 185
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setSubject(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 187
    :cond_6
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 188
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setSubjectCharset(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 190
    :cond_7
    const/16 v0, 0x8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 191
    const/16 v0, 0x8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setContentType(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 193
    :cond_8
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 194
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setContentLocation(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 196
    :cond_9
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 197
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setExpiry(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 199
    :cond_a
    const/16 v0, 0xb

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 200
    const/16 v0, 0xb

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgClass(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 202
    :cond_b
    const/16 v0, 0xc

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 203
    const/16 v0, 0xc

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgType(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 205
    :cond_c
    const/16 v0, 0xd

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 206
    const/16 v0, 0xd

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMmsVersion(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 208
    :cond_d
    const/16 v0, 0xe

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 209
    const/16 v0, 0xe

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgSize(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 211
    :cond_e
    const/16 v0, 0xf

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 212
    const/16 v0, 0xf

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setPriority(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 214
    :cond_f
    const/16 v0, 0x10

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 215
    const/16 v0, 0x10

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setReadReport(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 217
    :cond_10
    const/16 v0, 0x11

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 218
    const/16 v0, 0x11

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_20

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setReportAllowed(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 220
    :cond_11
    const/16 v0, 0x12

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 221
    const/16 v0, 0x12

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setResponseStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 223
    :cond_12
    const/16 v0, 0x13

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 224
    const/16 v0, 0x13

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 226
    :cond_13
    const/16 v0, 0x14

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 227
    const/16 v0, 0x14

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setTransactionId(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 229
    :cond_14
    const/16 v0, 0x15

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 230
    const/16 v0, 0x15

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRetrieveStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 232
    :cond_15
    const/16 v0, 0x16

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 233
    const/16 v0, 0x16

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRetrieveText(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 235
    :cond_16
    const/16 v0, 0x17

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 236
    const/16 v0, 0x17

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRetrieveTextCharset(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 238
    :cond_17
    const/16 v0, 0x18

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 239
    const/16 v0, 0x18

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setReadStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 241
    :cond_18
    const/16 v0, 0x19

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 242
    const/16 v0, 0x19

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setContentClass(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 244
    :cond_19
    const/16 v0, 0x1a

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 245
    const/16 v0, 0x1a

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setResponseText(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 247
    :cond_1a
    const/16 v0, 0x1b

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 248
    const/16 v0, 0x1b

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setDeliveryTime(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 250
    :cond_1b
    const/16 v0, 0x1c

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 251
    const/16 v0, 0x1c

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setDeliveryReport(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 253
    :cond_1c
    const/16 v0, 0x1d

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 254
    const/16 v0, 0x1d

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_21

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setLocked(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 256
    :cond_1d
    const/16 v0, 0x1e

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 257
    const/16 v0, 0x1e

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_22

    :goto_3
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setSeen(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 259
    :cond_1e
    return-void

    :cond_1f
    move v0, v2

    .line 179
    goto/16 :goto_0

    :cond_20
    move v0, v2

    .line 218
    goto/16 :goto_1

    :cond_21
    move v0, v2

    .line 254
    goto :goto_2

    :cond_22
    move v1, v2

    .line 257
    goto :goto_3
.end method


# virtual methods
.method public backupToProtocolBuffer(J)Lcom/miui/milk/model/MmsProtos$Pdu;
    .locals 10
    .parameter "id"

    .prologue
    .line 93
    const-string v0, "MmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading mms: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$Pdu;->newBuilder()Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    move-result-object v9

    .line 97
    .local v9, pdu:Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    const/4 v7, 0x0

    .line 99
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 100
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/milk/source/mms/MmsManager;->PDU_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 101
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, v9, v7}, Lcom/miui/milk/source/mms/MmsManager;->setBasicPduFields(Lcom/miui/milk/model/MmsProtos$Pdu$Builder;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_1
    :try_start_1
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 110
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/milk/source/mms/MmsManager;->PDU_ADDR_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 111
    if-eqz v7, :cond_4

    .line 112
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 113
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    invoke-direct {p0, v7}, Lcom/miui/milk/source/mms/MmsManager;->buildPduAddr(Landroid/database/Cursor;)Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v6

    .line 115
    .local v6, addr:Lcom/miui/milk/model/MmsProtos$PduAddr;
    invoke-virtual {v9, v6}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addAddrs(Lcom/miui/milk/model/MmsProtos$PduAddr;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    .end local v6           #addr:Lcom/miui/milk/model/MmsProtos$PduAddr;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 105
    .end local v1           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 119
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_5
    :try_start_2
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/part"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 124
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/milk/source/mms/MmsManager;->PDU_PART_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 125
    if-eqz v7, :cond_7

    .line 126
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 127
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    invoke-direct {p0, v7}, Lcom/miui/milk/source/mms/MmsManager;->buildPduPart(Landroid/database/Cursor;)Lcom/miui/milk/model/MmsProtos$PduPart;

    move-result-object v8

    .line 129
    .local v8, part:Lcom/miui/milk/model/MmsProtos$PduPart;
    invoke-virtual {v9, v8}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addPduParts(Lcom/miui/milk/model/MmsProtos$PduPart;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 133
    .end local v8           #part:Lcom/miui/milk/model/MmsProtos$PduPart;
    :catchall_2
    move-exception v0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_8
    invoke-virtual {v9}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->build()Lcom/miui/milk/model/MmsProtos$Pdu;

    move-result-object v0

    return-object v0
.end method

.method public exists(J)Z
    .locals 2
    .parameter "date"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mDateSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public prepareAllMmsIds()Ljava/util/Vector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 671
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 681
    if-nez v1, :cond_1

    .line 695
    if-eqz v1, :cond_0

    .line 696
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    .line 699
    :goto_0
    return-object v0

    .line 684
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 688
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 689
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 690
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 691
    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 692
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 695
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 696
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 695
    :cond_3
    if-eqz v1, :cond_4

    .line 696
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    .line 699
    goto :goto_0

    .line 695
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method public prepareMms()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 622
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mDateSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 623
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "date"

    aput-object v1, v2, v0

    .line 624
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 631
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    const-string v0, "date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 638
    .local v9, dateColumnIndex:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 639
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 640
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 641
    .local v7, date:J
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mDateSet:Ljava/util/HashSet;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 644
    .end local v7           #date:J
    :cond_2
    if-eqz v6, :cond_0

    .line 645
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public restoreFromProtocolBuffer(Lcom/miui/milk/model/MmsProtos$Pdu;)Z
    .locals 11
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    const-string v8, "MmsManager"

    const-string v9, "Saving mms"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getDate()J

    move-result-wide v0

    .line 356
    .local v0, date:J
    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/source/mms/MmsManager;->exists(J)Z

    move-result v8

    if-nez v8, :cond_2

    .line 358
    invoke-direct {p0, p1}, Lcom/miui/milk/source/mms/MmsManager;->getOrCreateThreadId(Lcom/miui/milk/model/MmsProtos$Pdu;)J

    move-result-wide v6

    .line 359
    .local v6, threadId:J
    invoke-direct {p0, v6, v7, p1}, Lcom/miui/milk/source/mms/MmsManager;->restorePdu(JLcom/miui/milk/model/MmsProtos$Pdu;)Landroid/net/Uri;

    move-result-object v3

    .line 360
    .local v3, insertedUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 362
    .local v4, msgId:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getAddrsCount()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 363
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/MmsProtos$Pdu;->getAddrs(I)Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v8

    invoke-direct {p0, v4, v5, v8}, Lcom/miui/milk/source/mms/MmsManager;->restorePduAddr(JLcom/miui/milk/model/MmsProtos$PduAddr;)Landroid/net/Uri;

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getPduPartsCount()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 367
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/MmsProtos$Pdu;->getPduParts(I)Lcom/miui/milk/model/MmsProtos$PduPart;

    move-result-object v8

    invoke-direct {p0, v4, v5, v8}, Lcom/miui/milk/source/mms/MmsManager;->restorePduPart(JLcom/miui/milk/model/MmsProtos$PduPart;)V

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 369
    :cond_1
    iget-object v8, p0, Lcom/miui/milk/source/mms/MmsManager;->mDateSet:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 370
    const-string v8, "MmsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The new mms has id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v8, 0x1

    .line 374
    .end local v2           #i:I
    .end local v3           #insertedUri:Landroid/net/Uri;
    .end local v4           #msgId:J
    .end local v6           #threadId:J
    :goto_2
    return v8

    .line 373
    :cond_2
    const-string v8, "MmsManager"

    const-string v9, "Cannot create mms  which is existed in db"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v8, 0x0

    goto :goto_2
.end method
