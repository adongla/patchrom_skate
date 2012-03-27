.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
.super Lmiui/app/screenelement/ScreenElementRoot;
.source "LockScreenRoot.java"

# interfaces
.implements Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreenRoot"

.field private static final TAG_NAME_BATTERYFULL:Ljava/lang/String; = "BatteryFull"

.field private static final TAG_NAME_CHARGING:Ljava/lang/String; = "Charging"

.field private static final TAG_NAME_LOWBATTERY:Ljava/lang/String; = "BatteryLow"

.field private static final TAG_NAME_NORMAL:Ljava/lang/String; = "Normal"


# instance fields
.field private curCategory:Ljava/lang/String;

.field private mBatteryState:Lmiui/app/screenelement/IndexedNumberVariable;

.field private mDisplayDesktop:Z

.field private final mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;)V
    .locals 3
    .parameter "c"
    .parameter "unlockerCallback"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    .line 46
    const-string v0, "Normal"

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iput-object p0, v0, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 55
    iput-object p2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    .line 56
    new-instance v0, Lmiui/app/screenelement/IndexedNumberVariable;

    const-string v1, "battery_state"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/Variables;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/app/screenelement/IndexedNumberVariable;

    .line 57
    return-void
.end method

.method private updateBatteryInfo()V
    .locals 5

    .prologue
    .line 97
    const-string v0, "Normal"

    .line 98
    .local v0, newCategory:Ljava/lang/String;
    const/4 v1, 0x0

    .line 99
    .local v1, state:I
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-boolean v2, v2, Lmiui/app/screenelement/ScreenContext;->mShowingBatteryInfo:Z

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-boolean v2, v2, Lmiui/app/screenelement/ScreenContext;->mPluggedIn:Z

    if-eqz v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget v2, v2, Lmiui/app/screenelement/ScreenContext;->mBatteryLevel:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    .line 102
    const-string v0, "BatteryFull"

    .line 103
    const/4 v1, 0x3

    .line 115
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    if-ne v0, v2, :cond_3

    .line 122
    :goto_1
    return-void

    .line 105
    :cond_1
    const-string v0, "Charging"

    .line 106
    const/4 v1, 0x1

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "BatteryLow"

    .line 110
    const/4 v1, 0x2

    goto :goto_0

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/app/screenelement/IndexedNumberVariable;

    int-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/IndexedNumberVariable;->set(D)V

    .line 119
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/ElementGroup;

    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 120
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/ElementGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lmiui/app/screenelement/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 121
    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method protected createElementGroup(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)Lmiui/app/screenelement/ElementGroup;
    .locals 2
    .parameter "root"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v0, p1, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    return-object v0
.end method

.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/ElementGroup;

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 148
    :cond_0
    return-void
.end method

.method public findTask(Ljava/lang/String;)Lmiui/app/screenelement/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->findTask(Ljava/lang/String;)Lmiui/app/screenelement/Task;

    move-result-object v0

    return-object v0
.end method

.method public haptic(I)V
    .locals 1
    .parameter "effectId"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->haptic(I)V

    .line 89
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-super {p0}, Lmiui/app/screenelement/ScreenElementRoot;->init()V

    .line 127
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/ElementGroup;

    const-string v1, "BatteryFull"

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 129
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/ElementGroup;

    const-string v1, "Charging"

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 130
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/ElementGroup;

    const-string v1, "BatteryLow"

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public isDisplayDesktop()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mDisplayDesktop:Z

    return v0
.end method

.method public onButtonInteractive(Lmiui/app/screenelement/ButtonScreenElement;Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;)V
    .locals 1
    .parameter "e"
    .parameter "a"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    .line 163
    return-void
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 1
    .parameter "root"

    .prologue
    .line 135
    const-string v0, "displayDesktop"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mDisplayDesktop:Z

    .line 136
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mVariableBinderManager:Lmiui/app/screenelement/VariableBinderManager;

    invoke-static {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BuiltinVariableBinders;->fill(Lmiui/app/screenelement/VariableBinderManager;)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/ElementGroup;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;)V

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    .line 79
    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->isSoundEnable()Z

    move-result v0

    return v0
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/ElementGroup;

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 154
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/ScreenElementRoot;->tick(J)V

    .line 62
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->updateBatteryInfo()V

    .line 65
    :cond_0
    return-void
.end method
