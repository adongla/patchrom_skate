.class Lcom/android/internal/policy/impl/MiuiGlobalActions$5;
.super Landroid/content/BroadcastReceiver;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 644
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 647
    :cond_0
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, reason:Ljava/lang/String;
    const-string v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 649
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$900(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 660
    .end local v1           #reason:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 651
    :cond_2
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 654
    const-string v2, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$000(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 656
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$002(Lcom/android/internal/policy/impl/MiuiGlobalActions;Z)Z

    .line 657
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$200(Lcom/android/internal/policy/impl/MiuiGlobalActions;Z)V

    goto :goto_0
.end method
