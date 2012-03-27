.class Lcom/miui/backup/ScriptGetPropItem;
.super Lcom/miui/backup/ScriptItem;
.source "BackupRestoreStrategy.java"


# instance fields
.field private mDestFilePath:Ljava/lang/String;

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "destFilePath"

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/miui/backup/ScriptItem;-><init>()V

    .line 615
    iput-object p1, p0, Lcom/miui/backup/ScriptGetPropItem;->mKey:Ljava/lang/String;

    .line 616
    iput-object p2, p0, Lcom/miui/backup/ScriptGetPropItem;->mDestFilePath:Ljava/lang/String;

    .line 617
    return-void
.end method


# virtual methods
.method public genScript()Ljava/lang/String;
    .locals 3

    .prologue
    .line 622
    iget-object v1, p0, Lcom/miui/backup/ScriptGetPropItem;->mKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/backup/ScriptGetPropItem;->getCmdStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/backup/ScriptGetPropItem;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, cmd:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 625
    .end local v0           #cmd:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/backup/ScriptGetPropItem;->getCmdStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/backup/ScriptGetPropItem;->mDestFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #cmd:Ljava/lang/String;
    goto :goto_0
.end method

.method protected getCmdStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    const-string v0, "getprop "

    return-object v0
.end method
