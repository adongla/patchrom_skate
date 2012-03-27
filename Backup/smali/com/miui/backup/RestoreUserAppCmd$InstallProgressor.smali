.class Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;
.super Ljava/lang/Object;
.source "RestoreCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/RestoreUserAppCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallProgressor"
.end annotation


# instance fields
.field private mFileSize:J

.field private mProgress:D

.field private mProgressPerWait:D

.field private mUpdateCount:I

.field private mWaitInterval:I

.field final synthetic this$0:Lcom/miui/backup/RestoreUserAppCmd;


# direct methods
.method constructor <init>(Lcom/miui/backup/RestoreUserAppCmd;JI)V
    .locals 8
    .parameter
    .parameter "fileSize"
    .parameter "waitInterval"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 290
    iput-object p1, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->this$0:Lcom/miui/backup/RestoreUserAppCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-wide v2, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mProgress:D

    .line 285
    iput-wide v2, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mProgressPerWait:D

    .line 286
    iput v4, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mUpdateCount:I

    .line 287
    iput v4, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mWaitInterval:I

    .line 288
    iput-wide v6, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mFileSize:J

    .line 291
    iput-wide p2, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mFileSize:J

    .line 292
    iput p4, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mWaitInterval:I

    .line 293
    iget-wide v2, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mFileSize:J

    long-to-double v2, v2

    invoke-static {}, Lcom/miui/backup/RestoreUserAppCmd;->access$200()D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-long v0, v2

    .line 294
    .local v0, totalTime:J
    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    .line 295
    iget v2, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mWaitInterval:I

    mul-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    div-long/2addr v2, v0

    long-to-double v2, v2

    iput-wide v2, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mProgressPerWait:D

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    const-wide/high16 v2, 0x4059

    iput-wide v2, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mProgressPerWait:D

    goto :goto_0
.end method

.method private modulateInstallRate()V
    .locals 6

    .prologue
    .line 319
    invoke-static {}, Lcom/miui/backup/RestoreUserAppCmd;->access$200()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-static {}, Lcom/miui/backup/RestoreUserAppCmd;->access$300()J

    move-result-wide v4

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mFileSize:J

    add-long v0, v2, v4

    .line 320
    .local v0, elapsedSize:J
    iget v2, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mUpdateCount:I

    iget v3, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mWaitInterval:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/miui/backup/RestoreUserAppCmd;->access$314(J)J

    .line 321
    invoke-static {}, Lcom/miui/backup/RestoreUserAppCmd;->access$300()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 322
    invoke-static {}, Lcom/miui/backup/RestoreUserAppCmd;->access$300()J

    move-result-wide v2

    div-long v2, v0, v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/miui/backup/RestoreUserAppCmd;->access$202(D)D

    .line 324
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 314
    const-wide/high16 v0, 0x4059

    iput-wide v0, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mProgress:D

    .line 315
    invoke-direct {p0}, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->modulateInstallRate()V

    .line 316
    return-void
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 302
    iget-wide v0, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mProgress:D

    double-to-int v0, v0

    return v0
.end method

.method public update()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4059

    .line 306
    iget-wide v0, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mProgress:D

    iget-wide v2, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mProgressPerWait:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mProgress:D

    .line 307
    iget-wide v0, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mProgress:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    .line 308
    iput-wide v4, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mProgress:D

    .line 310
    :cond_0
    iget v0, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallProgressor;->mUpdateCount:I

    .line 311
    return-void
.end method
