.class public Lcom/miui/milk/source/sms/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# instance fields
.field private COLUMN_ADDRESS:Ljava/lang/String;

.field private COLUMN_DATE:Ljava/lang/String;

.field private COLUMN_ID:Ljava/lang/String;

.field private CONTENT_URI:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDate2Address:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mThreadIdCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    .line 29
    const-string v0, "_id"

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ID:Ljava/lang/String;

    .line 30
    const-string v0, "date"

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_DATE:Ljava/lang/String;

    .line 31
    const-string v0, "address"

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ADDRESS:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/miui/milk/source/sms/SmsManager;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mDate2Address:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mThreadIdCache:Ljava/util/HashMap;

    .line 39
    return-void
.end method

.method private prepareContentValues(Lcom/miui/milk/model/SmsProtos$Sms;)Landroid/content/ContentValues;
    .locals 7
    .parameter "sms"

    .prologue
    .line 195
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getType()I

    move-result v2

    .line 198
    .local v2, type:I
    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    .line 199
    :cond_0
    const/4 v2, 0x5

    .line 202
    :cond_1
    const-string v4, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 205
    const-string v4, "address"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v4, p0, Lcom/miui/milk/source/sms/SmsManager;->mThreadIdCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 208
    .local v1, threadId:Ljava/lang/Long;
    if-nez v1, :cond_2

    .line 209
    iget-object v4, p0, Lcom/miui/milk/source/sms/SmsManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_2

    .line 211
    iget-object v4, p0, Lcom/miui/milk/source/sms/SmsManager;->mThreadIdCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_2
    if-eqz v1, :cond_3

    .line 215
    const-string v4, "thread_id"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 218
    .end local v1           #threadId:Ljava/lang/Long;
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getSubject()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 219
    const-string v4, "subject"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getBody()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 222
    const-string v4, "body"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_5
    const-string v4, "date"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    const-string v4, "read"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getRead()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 226
    const-string v4, "seen"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getSeen()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 227
    const-string v4, "status"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string v4, "date_sent"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getServerDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getServiceCenter()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 231
    const-string v4, "service_center"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getServiceCenter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_6
    const-string v4, "protocol"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getProtocol()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v4, "reply_path_present"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getReplyPathPresent()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 235
    const-string v4, "locked"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getLocked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 236
    return-object v3
.end method

.method private setSmsField(Lcom/miui/milk/model/SmsProtos$Sms$Builder;Landroid/database/Cursor;I)V
    .locals 5
    .parameter "sms"
    .parameter "cursor"
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, columnName:Ljava/lang/String;
    const-string v4, "_id"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string v4, "type"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 149
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 150
    .local v1, type:I
    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 151
    :cond_2
    const/4 v1, 0x5

    .line 153
    :cond_3
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setType(I)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    .line 155
    .end local v1           #type:I
    :cond_4
    const-string v4, "address"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 156
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setAddress(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    .line 158
    :cond_5
    const-string v4, "subject"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 159
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setSubject(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    .line 161
    :cond_6
    const-string v4, "body"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 162
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setBody(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    .line 164
    :cond_7
    const-string v4, "date"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 165
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setDate(J)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    .line 167
    :cond_8
    const-string v4, "read"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 168
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_9

    :goto_1
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setRead(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    :cond_9
    move v2, v3

    goto :goto_1

    .line 170
    :cond_a
    const-string v4, "seen"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 171
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_b

    :goto_2
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setSeen(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    :cond_b
    move v2, v3

    goto :goto_2

    .line 173
    :cond_c
    const-string v4, "status"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 174
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setStatus(I)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    .line 176
    :cond_d
    const-string v4, "date_sent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 178
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setServerDate(J)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    .line 180
    :cond_e
    const-string v4, "service_center"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 181
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setServiceCenter(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    .line 183
    :cond_f
    const-string v4, "protocol"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 184
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setProtocol(I)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    .line 186
    :cond_10
    const-string v4, "reply_path_present"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 187
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_11

    :goto_3
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setReplyPathPresent(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    :cond_11
    move v2, v3

    goto :goto_3

    .line 189
    :cond_12
    const-string v4, "locked"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 190
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_13

    :goto_4
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setLocked(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    :cond_13
    move v2, v3

    goto :goto_4
.end method


# virtual methods
.method public add(Lcom/miui/milk/model/SmsProtos$Sms;)J
    .locals 10
    .parameter "sms"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const-string v7, "SmsManager"

    const-string v8, "Saving sms"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getDate()J

    move-result-wide v1

    .line 95
    .local v1, date:J
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v0}, Lcom/miui/milk/source/sms/SmsManager;->exists(JLjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 99
    invoke-direct {p0, p1}, Lcom/miui/milk/source/sms/SmsManager;->prepareContentValues(Lcom/miui/milk/model/SmsProtos$Sms;)Landroid/content/ContentValues;

    move-result-object v6

    .line 100
    .local v6, values:Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 101
    .local v5, insertedUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 102
    .local v3, id:J
    iget-object v7, p0, Lcom/miui/milk/source/sms/SmsManager;->mDate2Address:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v7, "SmsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The new sms has id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-wide v3

    .line 106
    .end local v3           #id:J
    .end local v5           #insertedUri:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Cannot create sms  which is existed in db"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public exists(JLjava/lang/String;)Z
    .locals 4
    .parameter "date"
    .parameter "address"

    .prologue
    .line 240
    iget-object v2, p0, Lcom/miui/milk/source/sms/SmsManager;->mDate2Address:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 241
    .local v1, existAddress:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 242
    .local v0, exist:Z
    :goto_0
    return v0

    .line 241
    .end local v0           #exist:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 246
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 249
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 252
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v7, 0x0

    .line 258
    .local v7, empty:Z
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 259
    return v7

    .line 255
    .end local v7           #empty:Z
    :cond_0
    const/4 v7, 0x1

    .restart local v7       #empty:Z
    goto :goto_0
.end method

.method public load(J)Lcom/miui/milk/model/SmsProtos$Sms;
    .locals 10
    .parameter "id"

    .prologue
    .line 42
    const-string v0, "SmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading sms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$Sms;->newBuilder()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v8

    .line 46
    .local v8, sms:Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    const/4 v6, 0x0

    .line 48
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 53
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, index:I
    :goto_0
    if-ltz v7, :cond_0

    .line 55
    invoke-direct {p0, v8, v6, v7}, Lcom/miui/milk/source/sms/SmsManager;->setSmsField(Lcom/miui/milk/model/SmsProtos$Sms$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 59
    .end local v7           #index:I
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_1
    invoke-virtual {v8}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->build()Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v0

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public load(JLjava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms;
    .locals 10
    .parameter "date"
    .parameter "address"

    .prologue
    .line 67
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$Sms;->newBuilder()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v8

    .line 69
    .local v8, sms:Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    const/4 v6, 0x0

    .line 71
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_DATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ADDRESS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, index:I
    :goto_0
    if-ltz v7, :cond_0

    .line 80
    invoke-direct {p0, v8, v6, v7}, Lcom/miui/milk/source/sms/SmsManager;->setSmsField(Lcom/miui/milk/model/SmsProtos$Sms$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 84
    .end local v7           #index:I
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_1
    invoke-virtual {v8}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->build()Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v0

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public prepareAllSmsIds()Ljava/util/Vector;
    .locals 10
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
    .line 263
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 264
    .local v9, smsIds:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 266
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

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
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 272
    if-nez v6, :cond_1

    .line 286
    if-eqz v6, :cond_0

    .line 287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_0
    :goto_0
    return-object v9

    .line 275
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 277
    .local v8, idColumnIndex:I
    const/4 v7, 0x0

    .line 279
    .local v7, cursorId:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 280
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 281
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-virtual {v9, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 286
    .end local v7           #cursorId:Ljava/lang/String;
    .end local v8           #idColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 286
    .restart local v7       #cursorId:Ljava/lang/String;
    .restart local v8       #idColumnIndex:I
    :cond_3
    if-eqz v6, :cond_0

    .line 287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public prepareSms()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 112
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mDate2Address:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 113
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_DATE:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ADDRESS:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 114
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 121
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_DATE:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 126
    .local v11, dateColumnIndex:I
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ADDRESS:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 130
    .local v7, addressColumnIndex:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 133
    .local v9, date:J
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, address:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mDate2Address:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 137
    .end local v6           #address:Ljava/lang/String;
    .end local v9           #date:J
    :cond_2
    if-eqz v8, :cond_0

    .line 138
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
