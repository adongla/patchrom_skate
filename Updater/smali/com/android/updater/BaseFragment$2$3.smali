.class Lcom/android/updater/BaseFragment$2$3;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/BaseFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/updater/BaseFragment$2;


# direct methods
.method constructor <init>(Lcom/android/updater/BaseFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/updater/BaseFragment$2$3;->this$1:Lcom/android/updater/BaseFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/updater/BaseFragment$2$3;->this$1:Lcom/android/updater/BaseFragment$2;

    iget-object v0, v0, Lcom/android/updater/BaseFragment$2;->this$0:Lcom/android/updater/BaseFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/updater/BaseFragment;->access$002(Lcom/android/updater/BaseFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 268
    return-void
.end method
