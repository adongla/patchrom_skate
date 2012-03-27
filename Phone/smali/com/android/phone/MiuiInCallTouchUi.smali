.class public Lcom/android/phone/MiuiInCallTouchUi;
.super Lcom/android/phone/InCallTouchUi;
.source "MiuiInCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiInCallTouchUi$3;,
        Lcom/android/phone/MiuiInCallTouchUi$Handler;,
        Lcom/android/phone/MiuiInCallTouchUi$PanelState;,
        Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;
    }
.end annotation


# instance fields
.field private mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mAddButton:Landroid/widget/Button;

.field protected mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

.field private mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

.field private mAudioModeButton:Landroid/widget/ToggleButton;

.field private mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

.field private mAudioModePanel:Landroid/view/View;

.field private mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

.field private mCallRecordPrompt:Landroid/widget/TextView;

.field private mCallRecordTimer:Landroid/widget/Chronometer;

.field private mCdmaFlashButton:Landroid/widget/Button;

.field private mContactButton:Landroid/widget/Button;

.field private mDampingInterpolator:Lmiui/animation/DampingInterpolator;

.field private mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

.field private mDialerButton:Landroid/widget/ToggleButton;

.field private mEndButton:Landroid/widget/Button;

.field private mHoldButton:Landroid/widget/ToggleButton;

.field private mInCallControlsMask:Landroid/view/View;

.field protected mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

.field private mIsAutoHideAudioModePanel:Z

.field private mLastClickTime:J

.field mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

.field private mMergeButton:Landroid/widget/Button;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mNoteButton:Landroid/widget/Button;

.field private mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mStartRecordButton:Landroid/widget/Button;

.field private mStopRecordButton:Landroid/view/View;

.field private mSwapButton:Landroid/widget/Button;

.field private mToolsButton:Landroid/widget/ToggleButton;

.field private mToolsPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallTouchUi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Lmiui/animation/DampingInterpolator;

    const/high16 v1, 0x4120

    invoke-direct {v0, v1}, Lmiui/animation/DampingInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    .line 59
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 61
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Vertical:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastClickTime:J

    .line 759
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 128
    new-instance v0, Lcom/android/phone/MiuiInCallTouchUi$Handler;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiInCallTouchUi$Handler;-><init>(Lcom/android/phone/MiuiInCallTouchUi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    .line 130
    sget-object v0, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 131
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x64

    const/4 v10, 0x2

    const/4 v1, 0x1

    const v9, 0x3c03126f

    const/4 v8, 0x0

    .line 762
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v0, :cond_0

    .line 877
    :goto_0
    return-void

    .line 766
    :cond_0
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq v0, v2, :cond_1

    .line 767
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 768
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    goto :goto_0

    .line 772
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 773
    iput-object p1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 774
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v0, :cond_3

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 778
    :cond_3
    const/4 v0, 0x0

    .line 779
    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 782
    :cond_4
    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v3, :cond_5

    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq v3, v4, :cond_5

    move v0, v1

    .line 786
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 788
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v4, :cond_9

    .line 789
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 790
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-static {v4, v10, v8, v9}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    .line 794
    if-eqz v0, :cond_8

    .line 795
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 799
    :goto_1
    invoke-virtual {v4}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerClose()V

    .line 801
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 828
    :cond_6
    :goto_2
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v4, :cond_e

    .line 829
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 830
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, v2, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-static {v2, v10, v9, v8}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v2

    .line 832
    if-eqz v0, :cond_d

    .line 833
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 837
    :goto_3
    invoke-virtual {v2}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerOpen()V

    .line 839
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v1, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 863
    :cond_7
    :goto_4
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 864
    new-instance v1, Lcom/android/phone/MiuiInCallTouchUi$2;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiInCallTouchUi$2;-><init>(Lcom/android/phone/MiuiInCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 872
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 873
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 876
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    goto/16 :goto_0

    .line 797
    :cond_8
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_1

    .line 802
    :cond_9
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v4, :cond_b

    .line 803
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 804
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    invoke-static {v4, v10, v8, v9}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    .line 808
    if-eqz v0, :cond_a

    .line 809
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 813
    :goto_5
    invoke-virtual {v4}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 811
    :cond_a
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_5

    .line 814
    :cond_b
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v4, :cond_6

    .line 815
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 816
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    invoke-static {v4, v10, v8, v9}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    .line 820
    if-eqz v0, :cond_c

    .line 821
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 825
    :goto_6
    invoke-virtual {v4}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 823
    :cond_c
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_6

    .line 835
    :cond_d
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v2, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto/16 :goto_3

    .line 840
    :cond_e
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v4, :cond_10

    .line 841
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 842
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    invoke-static {v1, v10, v9, v8}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v1

    .line 844
    if-eqz v0, :cond_f

    .line 845
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 849
    :goto_7
    invoke-virtual {v1}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 847
    :cond_f
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v1, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_7

    .line 850
    :cond_10
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v4, :cond_7

    .line 851
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 852
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    invoke-static {v1, v10, v9, v8}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v1

    .line 854
    if-eqz v0, :cond_11

    .line 855
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 859
    :goto_8
    invoke-virtual {v1}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    iput-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    goto/16 :goto_4

    .line 857
    :cond_11
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v1, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_8
.end method

.method private showAudioModePopup(I)V
    .locals 4
    .parameter "delay"

    .prologue
    const/16 v3, 0x64

    .line 619
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    .line 621
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 623
    return-void
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .locals 0

    .prologue
    .line 616
    return-void
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 136
    const v0, 0x7f04001e

    return v0
.end method

.method protected getIncomingCallWidget()Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 627
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "button_answer_widget"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Vertical:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    :goto_0
    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    .line 631
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Vertical:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    if-nez v1, :cond_1

    .line 632
    const v1, 0x7f0700ae

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 633
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 634
    const v1, 0x7f070083

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MiuiInCallAnswerWidget;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    .line 635
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    invoke-virtual {v1, p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 636
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x7f070098

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f070032

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->setSlidingTarget(Landroid/view/View;Landroid/view/View;)V

    .line 638
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    .line 660
    .end local v0           #stub:Landroid/view/ViewStub;
    :goto_1
    return-object v1

    .line 627
    :cond_0
    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Horizontal:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    goto :goto_0

    .line 639
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Horizontal:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-nez v1, :cond_2

    .line 640
    const v1, 0x7f0700ad

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 641
    .restart local v0       #stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 642
    const v1, 0x7f070082

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 643
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 644
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTranslationY(F)V

    .line 645
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    goto :goto_1

    .line 648
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_2
    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$3;->$SwitchMap$com$android$phone$MiuiInCallTouchUi$AnswerWidgetType:[I

    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    invoke-virtual {v2}, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 660
    const/4 v1, 0x0

    goto :goto_1

    .line 650
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-eqz v1, :cond_3

    .line 651
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setVisibility(I)V

    .line 653
    :cond_3
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    goto :goto_1

    .line 655
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    if-eqz v1, :cond_4

    .line 656
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    invoke-virtual {v1, v4}, Lcom/android/phone/MiuiInCallAnswerWidget;->setVisibility(I)V

    .line 658
    :cond_4
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    goto :goto_1

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isAudioModePanelOpened()Z
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialerPanelOpened()Z
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToolsPanelOpened()Z
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 273
    .local v1, now:J
    iget-wide v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastClickTime:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x12c

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    .line 315
    :goto_0
    return-void

    .line 276
    :cond_0
    iput-wide v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastClickTime:J

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 279
    .local v0, id:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 313
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 286
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 290
    :pswitch_2
    sget-object v3, Lcom/android/phone/MiuiConstants$AudioMode;->Bluetooth:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 291
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 294
    :pswitch_3
    sget-object v3, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 295
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 298
    :pswitch_4
    sget-object v3, Lcom/android/phone/MiuiConstants$AudioMode;->Speaker:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 299
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 303
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isAudioModePanelOpened()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 306
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isToolsPanelOpened()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiInCallTouchUi;->showToolsPanel(Z)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_2

    .line 309
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isDialerPanelOpened()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiInCallTouchUi;->showDialerPanel(Z)V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_3

    .line 279
    :pswitch_data_0
    .packed-switch 0x7f0700b1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 150
    const v1, 0x7f07009a

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 151
    const v1, 0x7f0700c0

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    .line 152
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    new-instance v2, Lcom/android/phone/MiuiInCallTouchUi$1;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiInCallTouchUi$1;-><init>(Lcom/android/phone/MiuiInCallTouchUi;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    .line 162
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    .line 164
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    .line 166
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    .line 168
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    .line 170
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 172
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    .line 174
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    .line 176
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    .line 178
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordPrompt:Landroid/widget/TextView;

    .line 182
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    .line 183
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    .line 185
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mNoteButton:Landroid/widget/Button;

    .line 189
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mNoteButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    .line 193
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    .line 197
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    const v2, 0x7f0c032e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCdmaFlashButton:Landroid/widget/Button;

    .line 208
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCdmaFlashButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    new-instance v0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;-><init>(Lcom/android/phone/InCallTouchUi;)V

    .line 211
    .local v0, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCdmaFlashButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mNoteButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    .line 223
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    .line 224
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    .line 226
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    .line 228
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v1, 0x7f0700af

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    .line 233
    const v1, 0x7f0700b7

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    .line 234
    return-void

    .line 203
    .end local v0           #smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    const v2, 0x7f0c0334

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 611
    const/4 v0, 0x1

    return v0
.end method

.method onStartCallRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 742
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 744
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 745
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 746
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_DEFY:Z

    if-nez v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 749
    :cond_0
    return-void
.end method

.method onStopCallRecord()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 752
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 753
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 754
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 756
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getIncomingCallWidget()Landroid/view/View;

    .line 143
    return-void
.end method

.method protected setInCallWidgetResources(Z)V
    .locals 2
    .parameter "allowRespondViaSms"

    .prologue
    .line 665
    if-eqz p1, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 669
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f06002b

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 671
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f06002c

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 681
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f06002d

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 676
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 678
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_0
.end method

.method public showAudioModePanel(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 722
    if-eqz p1, :cond_1

    .line 723
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isAudioModePanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    goto :goto_0
.end method

.method protected showAudioModePopup()V
    .locals 1

    .prologue
    .line 606
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup(I)V

    .line 607
    return-void
.end method

.method public showDialerPanel(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 710
    if-eqz p1, :cond_1

    .line 711
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isDialerPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    goto :goto_0
.end method

.method protected showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "ringingCall"

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getIncomingCallWidget()Landroid/view/View;

    move-result-object v1

    .line 686
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    if-ne v1, v2, :cond_1

    .line 687
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 688
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 690
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 692
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->reset(Lcom/android/internal/telephony/CallManager;)V

    .line 696
    .end local v0           #anim:Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 694
    :cond_1
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method public showToolsPanel(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 734
    if-eqz p1, :cond_1

    .line 735
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isToolsPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    goto :goto_0
.end method

.method public triggerPing()V
    .locals 2

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getIncomingCallWidget()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-ne v0, v1, :cond_0

    .line 701
    invoke-super {p0}, Lcom/android/phone/InCallTouchUi;->triggerPing()V

    .line 703
    :cond_0
    return-void
.end method

.method protected updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 7
    .parameter "inCallControlState"

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 552
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v5, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 553
    iget-boolean v4, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-nez v4, :cond_1

    .line 554
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 555
    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    .line 556
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 557
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v3, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 560
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 561
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 562
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isAudioModePanelOpened()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 564
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 565
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0327

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 567
    .local v0, buttonText:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    const v5, 0x7f020046

    invoke-virtual {v4, v5, v3, v3, v3}, Landroid/widget/ToggleButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 580
    :goto_1
    const/4 v1, 0x0

    .line 581
    .local v1, switchAudioModeFinished:Z
    iget-boolean v4, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v4, :cond_4

    .line 582
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 583
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 584
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 585
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Bluetooth:Lcom/android/phone/MiuiConstants$AudioMode;

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 597
    :goto_2
    if-eqz v1, :cond_0

    .line 598
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup(I)V

    .line 599
    sget-object v2, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    goto :goto_0

    .line 572
    .end local v0           #buttonText:Ljava/lang/CharSequence;
    .end local v1           #switchAudioModeFinished:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0326

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 574
    .restart local v0       #buttonText:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    const v5, 0x7f020043

    invoke-virtual {v4, v5, v3, v3, v3}, Landroid/widget/ToggleButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_1

    .restart local v1       #switchAudioModeFinished:Z
    :cond_3
    move v1, v3

    .line 585
    goto :goto_2

    .line 586
    :cond_4
    iget-boolean v4, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v4, :cond_6

    .line 587
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 588
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 589
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 590
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Speaker:Lcom/android/phone/MiuiConstants$AudioMode;

    if-ne v4, v5, :cond_5

    move v1, v2

    :goto_3
    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    .line 592
    :cond_6
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 593
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 594
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 595
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    if-ne v4, v5, :cond_7

    move v1, v2

    :goto_4
    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_4
.end method

.method updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 10
    .parameter "cm"

    .prologue
    .line 324
    const/4 v3, 0x0

    .line 326
    .local v3, curCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 327
    .local v1, activeFgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 328
    .local v0, activeBgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_8

    .line 331
    move-object v3, v1

    .line 341
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 355
    .local v5, phoneType:I
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v4

    check-cast v4, Lcom/android/phone/MiuiInCallControlState;

    .line 361
    .local v4, inCallControlState:Lcom/android/phone/MiuiInCallControlState;
    iget-boolean v7, v4, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    if-eqz v7, :cond_a

    .line 362
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 363
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 364
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e003b

    invoke-static {v7, v8, v9}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 365
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 394
    :goto_1
    iget-boolean v7, v4, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v4, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    if-eqz v7, :cond_1

    .line 395
    const/4 v7, 0x1

    if-eq v5, v7, :cond_0

    const/4 v7, 0x3

    if-ne v5, v7, :cond_f

    .line 402
    :cond_0
    const-string v7, "MiuiInCallTouchUi"

    const-string v8, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    iget-boolean v8, v4, Lcom/android/phone/MiuiInCallControlState;->canEndCall:Z

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 417
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 418
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e003b

    invoke-static {v7, v8, v9}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 421
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 422
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isDialerPanelOpened()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 425
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 426
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isToolsPanelOpened()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 429
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiInCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 432
    iget-boolean v7, v4, Lcom/android/phone/MiuiInCallControlState;->canRecordCall:Z

    if-nez v7, :cond_10

    .line 433
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 434
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 435
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e003c

    invoke-static {v7, v8, v9}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 436
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :goto_2
    iget-boolean v7, v4, Lcom/android/phone/MiuiInCallControlState;->canMute:Z

    if-eqz v7, :cond_12

    .line 451
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 452
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e003b

    invoke-static {v7, v8, v9}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 453
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v8, v4, Lcom/android/phone/MiuiInCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 466
    :goto_3
    iget-boolean v7, v4, Lcom/android/phone/MiuiInCallControlState;->canHold:Z

    if-eqz v7, :cond_13

    .line 467
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 468
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e003b

    invoke-static {v7, v8, v9}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 469
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    iget-boolean v8, v4, Lcom/android/phone/MiuiInCallControlState;->onHold:Z

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 470
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 479
    :goto_4
    iget-object v8, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    iget-boolean v7, v4, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    if-eqz v7, :cond_14

    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 485
    const/4 v7, 0x2

    if-ne v5, v7, :cond_15

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_15

    const/4 v6, 0x1

    .line 487
    .local v6, showCdmaFlash:Z
    :goto_6
    if-eqz v6, :cond_16

    .line 488
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCdmaFlashButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 489
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 490
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 495
    :goto_7
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCdmaFlashButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    .line 499
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 500
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 501
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e003c

    invoke-static {v7, v8, v9}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 504
    :cond_2
    iget-boolean v7, v4, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    if-eqz v7, :cond_3

    iget-boolean v7, v4, Lcom/android/phone/MiuiInCallControlState;->canHold:Z

    if-eqz v7, :cond_3

    .line 510
    const-string v7, "MiuiInCallTouchUi"

    const-string v8, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_3
    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    .line 514
    iget-boolean v7, v4, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    if-eqz v7, :cond_4

    iget-boolean v7, v4, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    if-eqz v7, :cond_4

    .line 520
    const-string v7, "MiuiInCallTouchUi"

    const-string v8, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 526
    .local v2, callState:Lcom/android/internal/telephony/Call$State;
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_17

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v7, :cond_5

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v7, :cond_17

    .line 528
    :cond_5
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 529
    sget-object v7, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v7}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 530
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 535
    :goto_8
    iget-boolean v7, v4, Lcom/android/phone/MiuiInCallControlState;->bluetoothEnabled:Z

    if-eqz v7, :cond_18

    iget-boolean v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    if-eqz v7, :cond_18

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_18

    .line 538
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    .line 539
    const/16 v7, 0x1388

    invoke-direct {p0, v7}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup(I)V

    .line 544
    :cond_6
    :goto_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_7

    .line 546
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    .line 548
    :cond_7
    return-void

    .line 332
    .end local v2           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v4           #inCallControlState:Lcom/android/phone/MiuiInCallControlState;
    .end local v5           #phoneType:I
    .end local v6           #showCdmaFlash:Z
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_9

    .line 335
    move-object v3, v0

    goto/16 :goto_0

    .line 338
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto/16 :goto_0

    .line 366
    .restart local v4       #inCallControlState:Lcom/android/phone/MiuiInCallControlState;
    .restart local v5       #phoneType:I
    :cond_a
    iget-boolean v7, v4, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    if-eqz v7, :cond_e

    .line 367
    const/4 v7, 0x2

    if-ne v5, v7, :cond_b

    .line 371
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 372
    :cond_b
    const/4 v7, 0x1

    if-eq v5, v7, :cond_c

    const/4 v7, 0x3

    if-ne v5, v7, :cond_d

    .line 374
    :cond_c
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 375
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 376
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e003b

    invoke-static {v7, v8, v9}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 377
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 379
    :cond_d
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 389
    :cond_e
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 390
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 391
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e003c

    invoke-static {v7, v8, v9}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 392
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 404
    :cond_f
    const/4 v7, 0x2

    if-eq v5, v7, :cond_1

    .line 409
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 438
    :cond_10
    iget-boolean v7, v4, Lcom/android/phone/MiuiInCallControlState;->isCallRecording:Z

    if-eqz v7, :cond_11

    .line 439
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 440
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 442
    :cond_11
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 443
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 444
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e003b

    invoke-static {v7, v8, v9}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 445
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 455
    :cond_12
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 456
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e003c

    invoke-static {v7, v8, v9}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 457
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_3

    .line 472
    :cond_13
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 473
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_4

    .line 479
    :cond_14
    const/16 v7, 0x8

    goto/16 :goto_5

    .line 485
    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 492
    .restart local v6       #showCdmaFlash:Z
    :cond_16
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCdmaFlashButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 532
    .restart local v2       #callState:Lcom/android/internal/telephony/Call$State;
    :cond_17
    iget-object v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 540
    :cond_18
    iget-boolean v7, v4, Lcom/android/phone/MiuiInCallControlState;->popupToolsPanel:Z

    if-eqz v7, :cond_6

    .line 541
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiInCallTouchUi;->showToolsPanel(Z)V

    goto/16 :goto_9
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 11
    .parameter "cm"

    .prologue
    const-wide/16 v9, 0x64

    const/4 v8, 0x2

    const v7, 0x3b03126f

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 238
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 239
    .local v1, oldVisiblity:I
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 240
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_0

    .line 241
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_0
    if-ne v1, v6, :cond_2

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 245
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-static {v3, v8, v7, v5}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v3, v4}, Lmiui/animation/ViewPropertyAnimator$Builder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lmiui/animation/ViewPropertyAnimator$Builder;->setDuration(J)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/ViewPropertyAnimator$Builder;->start()Landroid/animation/Animator;

    .line 268
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 251
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-static {v3, v8, v5, v7}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/ViewPropertyAnimator$Builder;->animator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 258
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    invoke-static {v3, v8, v5, v7}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/ViewPropertyAnimator$Builder;->animator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 264
    .local v2, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 265
    invoke-static {v2}, Lmiui/animation/AnimatorBuilder;->of(Landroid/animation/Animator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v3, v4}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/AnimatorBuilder;->start()Landroid/animation/Animator;

    .line 266
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
