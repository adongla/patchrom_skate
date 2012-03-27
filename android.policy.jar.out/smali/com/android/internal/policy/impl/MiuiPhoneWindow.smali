.class public Lcom/android/internal/policy/impl/MiuiPhoneWindow;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "MiuiPhoneWindow.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method


# virtual methods
.method protected handleCameraKeyEvent(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/KeyEvent;I)Z
    .locals 11
    .parameter "decorView"
    .parameter "event"
    .parameter "featureId"

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 47
    .local v4, keyCode:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_3

    const/4 v3, 0x1

    .line 48
    .local v3, isDown:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 49
    .local v0, cb:Landroid/view/Window$Callback;
    const/4 v1, 0x0

    .line 53
    .local v1, handled:Z
    const/16 v8, 0x1b

    if-ne v4, v8, :cond_2

    if-nez v3, :cond_2

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, id:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "camera_key_preferred_action_type"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 58
    .local v7, type:I
    const/4 v8, 0x1

    if-ne v8, v7, :cond_0

    .line 59
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "camera_key_preferred_action_shortcut_id"

    const/4 v10, -0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 62
    :cond_0
    const/4 v6, 0x0

    .line 63
    .local v6, mappedKeyCode:I
    packed-switch v2, :pswitch_data_0

    .line 72
    :goto_1
    if-eqz v6, :cond_2

    .line 73
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    invoke-direct {v5, v8, v6}, Landroid/view/KeyEvent;-><init>(II)V

    .line 74
    .local v5, mappedEvent:Landroid/view/KeyEvent;
    if-eqz v0, :cond_4

    if-gez p3, :cond_4

    invoke-interface {v0, v5}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 77
    :goto_2
    new-instance v5, Landroid/view/KeyEvent;

    .end local v5           #mappedEvent:Landroid/view/KeyEvent;
    const/4 v8, 0x1

    invoke-direct {v5, v8, v6}, Landroid/view/KeyEvent;-><init>(II)V

    .line 78
    .restart local v5       #mappedEvent:Landroid/view/KeyEvent;
    if-eqz v0, :cond_5

    if-gez p3, :cond_5

    invoke-interface {v0, v5}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_1
    const/4 v1, 0x1

    .line 83
    .end local v2           #id:I
    .end local v5           #mappedEvent:Landroid/view/KeyEvent;
    .end local v6           #mappedKeyCode:I
    .end local v7           #type:I
    :cond_2
    :goto_3
    return v1

    .line 47
    .end local v0           #cb:Landroid/view/Window$Callback;
    .end local v1           #handled:Z
    .end local v3           #isDown:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 65
    .restart local v0       #cb:Landroid/view/Window$Callback;
    .restart local v1       #handled:Z
    .restart local v2       #id:I
    .restart local v3       #isDown:Z
    .restart local v6       #mappedKeyCode:I
    .restart local v7       #type:I
    :pswitch_0
    const/4 v6, 0x5

    .line 66
    goto :goto_1

    .line 68
    :pswitch_1
    const/16 v6, 0x54

    goto :goto_1

    .line 74
    .restart local v5       #mappedEvent:Landroid/view/KeyEvent;
    :cond_4
    invoke-virtual {p1, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_2

    .line 78
    :cond_5
    invoke-virtual {p1, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_6
    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_3

    .line 63
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "featureId"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v0

    .line 32
    .local v0, result:Z
    const/16 v1, 0x1b

    if-ne v1, p2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.app.ExtraStatusBarManager.TRIGGER_CAMERA_KEY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 38
    :cond_0
    const/4 v0, 0x1

    .line 41
    .end local v0           #result:Z
    :cond_1
    return v0
.end method
