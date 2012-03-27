.class Lcom/android/updater/BaseFragment$4;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/BaseFragment;->validateRomFile(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/BaseFragment;


# direct methods
.method constructor <init>(Lcom/android/updater/BaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/updater/BaseFragment$4;->this$0:Lcom/android/updater/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/updater/BaseFragment$4;->this$0:Lcom/android/updater/BaseFragment;

    invoke-static {v0}, Lcom/android/updater/BaseFragment;->access$100(Lcom/android/updater/BaseFragment;)Lcom/android/updater/BaseFragment$MD5CheckerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/updater/BaseFragment$4;->this$0:Lcom/android/updater/BaseFragment;

    invoke-static {v0}, Lcom/android/updater/BaseFragment;->access$100(Lcom/android/updater/BaseFragment;)Lcom/android/updater/BaseFragment$MD5CheckerTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/updater/BaseFragment$MD5CheckerTask;->cancel(Z)Z

    .line 359
    iget-object v0, p0, Lcom/android/updater/BaseFragment$4;->this$0:Lcom/android/updater/BaseFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/updater/BaseFragment;->access$102(Lcom/android/updater/BaseFragment;Lcom/android/updater/BaseFragment$MD5CheckerTask;)Lcom/android/updater/BaseFragment$MD5CheckerTask;

    .line 361
    :cond_0
    return-void
.end method
