.class Lcom/miui/backup/RestoreUserAppCmd$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "RestoreCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/RestoreUserAppCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/RestoreUserAppCmd;


# direct methods
.method constructor <init>(Lcom/miui/backup/RestoreUserAppCmd;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/miui/backup/RestoreUserAppCmd$PackageInstallObserver;->this$0:Lcom/miui/backup/RestoreUserAppCmd;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    const/4 v0, 0x1

    .line 276
    iget-object v1, p0, Lcom/miui/backup/RestoreUserAppCmd$PackageInstallObserver;->this$0:Lcom/miui/backup/RestoreUserAppCmd;

    invoke-static {v1}, Lcom/miui/backup/RestoreUserAppCmd;->access$000(Lcom/miui/backup/RestoreUserAppCmd;)Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;->finish()V

    .line 277
    iget-object v1, p0, Lcom/miui/backup/RestoreUserAppCmd$PackageInstallObserver;->this$0:Lcom/miui/backup/RestoreUserAppCmd;

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/miui/backup/RestoreUserAppCmd;->access$102(Lcom/miui/backup/RestoreUserAppCmd;Z)Z

    .line 278
    return-void

    .line 277
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
