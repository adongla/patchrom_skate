.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;
.super Landroid/database/ContentObserver;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    .line 518
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 519
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 522
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 523
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "trackball_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 525
    const-string v1, "camera_key_preferred_action_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 527
    const-string v1, "camera_key_preferred_action_shortcut_id"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 529
    const-string v1, "volumekey_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 531
    const-string v1, "screen_buttons_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 534
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(Z)V

    .line 535
    return-void
.end method

.method public onChange(Z)V
    .locals 11
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 538
    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v7, v6, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 539
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 540
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const-string v6, "screen_buttons_state"

    const/4 v9, 0x0

    invoke-static {v1, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v6, v4

    :goto_0
    iput-boolean v6, v8, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    .line 543
    const-string v6, "trackball_wake_screen"

    const/4 v8, 0x0

    invoke-static {v1, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v2, v4

    .line 545
    .local v2, trackballWakeScreen:Z
    :goto_1
    const-string v6, "volumekey_wake_screen"

    const/4 v8, 0x0

    invoke-static {v1, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v3, v4

    .line 548
    .local v3, volumeKeyWakeScreen:Z
    :goto_2
    const-string v6, "camera_key_preferred_action_type"

    const/4 v8, 0x0

    invoke-static {v1, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 551
    .local v0, cameraKeyActionType:I
    if-ne v4, v0, :cond_4

    .line 552
    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v8, 0x4

    const-string v9, "camera_key_preferred_action_shortcut_id"

    const/4 v10, -0x1

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_3

    :goto_3
    iput-boolean v4, v6, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 562
    :goto_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    check-cast v4, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    invoke-virtual {v4, v2, v5, v3}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->setWakeKeys(ZZZ)V

    .line 566
    monitor-exit v7

    .line 567
    return-void

    .end local v0           #cameraKeyActionType:I
    .end local v2           #trackballWakeScreen:Z
    .end local v3           #volumeKeyWakeScreen:Z
    :cond_0
    move v6, v5

    .line 540
    goto :goto_0

    :cond_1
    move v2, v5

    .line 543
    goto :goto_1

    .restart local v2       #trackballWakeScreen:Z
    :cond_2
    move v3, v5

    .line 545
    goto :goto_2

    .restart local v0       #cameraKeyActionType:I
    .restart local v3       #volumeKeyWakeScreen:Z
    :cond_3
    move v4, v5

    .line 552
    goto :goto_3

    .line 559
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    goto :goto_4

    .line 566
    .end local v0           #cameraKeyActionType:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #trackballWakeScreen:Z
    .end local v3           #volumeKeyWakeScreen:Z
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
