.class Lcom/android/internal/policy/impl/MiuiGlobalActions$6;
.super Landroid/telephony/PhoneStateListener;
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
    .line 663
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 666
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 667
    .local v0, inAirplaneMode:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    :goto_1
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$302(Lcom/android/internal/policy/impl/MiuiGlobalActions;Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    .line 668
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$1000(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$300(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;)V

    .line 669
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$1100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 670
    return-void

    .line 666
    .end local v0           #inAirplaneMode:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 667
    .restart local v0       #inAirplaneMode:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    goto :goto_1
.end method
