.class Lcom/android/updater/BaseFragment$2$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 259
    iput-object p1, p0, Lcom/android/updater/BaseFragment$2$1;->this$1:Lcom/android/updater/BaseFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/updater/BaseFragment$2$1;->this$1:Lcom/android/updater/BaseFragment$2;

    iget-object v0, v0, Lcom/android/updater/BaseFragment$2;->this$0:Lcom/android/updater/BaseFragment;

    invoke-virtual {v0}, Lcom/android/updater/BaseFragment;->applyUpdate()V

    .line 262
    return-void
.end method
