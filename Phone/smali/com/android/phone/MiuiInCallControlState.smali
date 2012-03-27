.class public Lcom/android/phone/MiuiInCallControlState;
.super Lcom/android/phone/InCallControlState;
.source "MiuiInCallControlState.java"


# instance fields
.field public canRecordCall:Z

.field public isCallRecording:Z

.field public popupToolsPanel:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallControlState;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    .line 14
    return-void
.end method


# virtual methods
.method public update()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 18
    iget-boolean v0, p0, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    .line 19
    .local v0, oldCanAddCall:Z
    iget-boolean v1, p0, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    .line 20
    .local v1, oldCanSwap:Z
    invoke-super {p0}, Lcom/android/phone/InCallControlState;->update()V

    .line 31
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/MiuiInCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez v1, :cond_3

    iget-boolean v2, p0, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    if-eqz v2, :cond_3

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/phone/MiuiInCallControlState;->popupToolsPanel:Z

    .line 34
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallRecording()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/MiuiInCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/MiuiInCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v5, :cond_4

    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/android/phone/MiuiInCallControlState;->canRecordCall:Z

    .line 36
    iget-object v2, p0, Lcom/android/phone/MiuiInCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    check-cast v2, Lcom/android/phone/MiuiInCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/MiuiInCallScreen;->isCallRecording()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/MiuiInCallControlState;->isCallRecording:Z

    .line 37
    return-void

    :cond_3
    move v2, v4

    .line 31
    goto :goto_0

    :cond_4
    move v3, v4

    .line 34
    goto :goto_1
.end method
