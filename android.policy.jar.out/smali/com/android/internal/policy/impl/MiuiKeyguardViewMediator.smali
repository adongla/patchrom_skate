.class public Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;
.super Lcom/android/internal/policy/impl/KeyguardViewMediator;
.source "MiuiKeyguardViewMediator.java"


# static fields
.field private static final BTN_MOUSE:I = 0x110


# instance fields
.field mCameraKeyWakeScreen:Z

.field mScreenOffReason:I

.field mTrackballWakeScreen:Z

.field mVolumeKeyWakeScreen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V
    .locals 0
    .parameter "context"
    .parameter "callback"
    .parameter "powerManager"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    .line 23
    return-void
.end method


# virtual methods
.method adjustStatusBarLocked()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 39
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_2

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, flags:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, -0x8000

    :goto_0
    or-int/2addr v0, v1

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/app/ExtraStatusBarManager;->isExpandableUnderKeyguard(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    :cond_0
    const/high16 v1, 0x9

    or-int/2addr v0, v1

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 55
    .end local v0           #flags:I
    :cond_2
    return-void

    .line 46
    .restart local v0       #flags:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isWakeKeyWhenKeyguardShowing(IZ)Z
    .locals 2
    .parameter "keyCode"
    .parameter "isDocked"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mScreenOffReason:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    .line 67
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isWakeKeyWhenKeyguardShowing(IZ)Z

    move-result v0

    goto :goto_0

    .line 69
    :sswitch_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mTrackballWakeScreen:Z

    goto :goto_0

    .line 73
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mVolumeKeyWakeScreen:Z

    goto :goto_0

    .line 76
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mCameraKeyWakeScreen:Z

    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1b -> :sswitch_2
        0x110 -> :sswitch_0
    .end sparse-switch
.end method

.method public onScreenTurnedOff(I)V
    .locals 2
    .parameter "why"

    .prologue
    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->notifyScreenOffLocked()V

    .line 29
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mScreenOffReason:I

    .line 30
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lmiui/net/FirewallManager;->removeAccessControlPass(Ljava/lang/String;)V

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 33
    return-void

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setWakeKeys(ZZZ)V
    .locals 0
    .parameter "trackball"
    .parameter "cameraKey"
    .parameter "volumeKey"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mTrackballWakeScreen:Z

    .line 59
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mCameraKeyWakeScreen:Z

    .line 60
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mVolumeKeyWakeScreen:Z

    .line 61
    return-void
.end method
