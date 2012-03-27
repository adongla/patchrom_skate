.class Lcom/miui/backup/ScriptStrategy;
.super Lcom/miui/backup/BackupRestoreStrategy;
.source "BackupRestoreStrategy.java"


# instance fields
.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/ScriptItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreStrategy;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cmd"
    .parameter "opt1"
    .parameter "opt2"

    .prologue
    .line 241
    iget-object v1, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    .line 245
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/miui/backup/ScriptItemFactory;->createItem(ILjava/lang/String;Ljava/lang/String;)Lcom/miui/backup/ScriptItem;

    move-result-object v0

    .line 246
    .local v0, item:Lcom/miui/backup/ScriptItem;
    iget-object v1, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method protected execute_()V
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/miui/backup/ScriptStrategy;->genScript()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, backupScript:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/miui/backup/SysUtils;->runExecSh([Ljava/lang/String;)Z

    .line 196
    :cond_0
    return-void
.end method

.method protected genScript()Ljava/lang/String;
    .locals 4

    .prologue
    .line 250
    iget-object v3, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 251
    :cond_0
    const/4 v3, 0x0

    .line 260
    :goto_0
    return-object v3

    .line 254
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x50

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 255
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 256
    .local v2, itemSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 257
    iget-object v3, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/backup/ScriptItem;

    invoke-virtual {v3}, Lcom/miui/backup/ScriptItem;->genScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 260
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected getFinishedSize()J
    .locals 6

    .prologue
    .line 213
    iget-object v4, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 214
    :cond_0
    const-wide/16 v0, 0x0

    .line 222
    :cond_1
    return-wide v0

    .line 217
    :cond_2
    const-wide/16 v0, 0x0

    .line 218
    .local v0, finishedSize:J
    iget-object v4, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 219
    .local v3, itemSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 220
    iget-object v4, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/backup/ScriptItem;

    invoke-virtual {v4}, Lcom/miui/backup/ScriptItem;->getFinishedSize()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected getTotalSize()J
    .locals 6

    .prologue
    .line 199
    iget-object v4, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 200
    :cond_0
    const-wide/16 v2, 0x0

    .line 208
    :cond_1
    return-wide v2

    .line 203
    :cond_2
    const-wide/16 v2, 0x0

    .line 204
    .local v2, totalSize:J
    iget-object v4, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 205
    .local v1, itemSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 206
    iget-object v4, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/backup/ScriptItem;

    invoke-virtual {v4}, Lcom/miui/backup/ScriptItem;->getTotalSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isSucceeded()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v2, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 237
    :goto_0
    return v2

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 232
    .local v1, itemSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 233
    iget-object v2, p0, Lcom/miui/backup/ScriptStrategy;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/backup/ScriptItem;

    invoke-virtual {v2}, Lcom/miui/backup/ScriptItem;->isSucceeded()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 234
    goto :goto_0

    .line 232
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method
