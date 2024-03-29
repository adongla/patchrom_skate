.class public Lcom/android/phone/MiuiInCallAnswerWidget;
.super Landroid/widget/FrameLayout;
.source "MiuiInCallAnswerWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiInCallAnswerWidget$2;,
        Lcom/android/phone/MiuiInCallAnswerWidget$State;
    }
.end annotation


# instance fields
.field private initialized:Z

.field private mAnswerButton:Landroid/widget/Button;

.field private mDisplayHeight:I

.field private mGestureDetector:Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;

.field private mGrabbedState:I

.field private mIgnoreButton:Landroid/widget/Button;

.field private mIncomingCallWidgetInCall:Landroid/view/View;

.field private mIncomingCallWidgetMain:Landroid/view/View;

.field private mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

.field private mRejectButton:Landroid/widget/Button;

.field private mRejectWithSmsButton:Landroid/widget/Button;

.field private mSlidingBar:Landroid/view/View;

.field private mSlidingBarExtendWith:I

.field private mSlidingDownTargetView:Landroid/view/View;

.field private mSlidingGreenBar:Landroid/widget/ImageView;

.field private mSlidingGreenBarLight:Landroid/widget/ImageView;

.field private mSlidingHintAnim:Landroid/widget/ImageView;

.field private mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTrackingPointerId:I

.field private mTranslationDownTarget:I

.field private mTranslationUpTarget:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGrabbedState:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    .line 82
    iput-boolean v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->initialized:Z

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTempRect:Landroid/graphics/Rect;

    .line 96
    sget-object v0, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Init:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    .line 108
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mDisplayHeight:I

    .line 110
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingBarExtendWith:I

    .line 113
    new-instance v0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;-><init>(Landroid/content/Context;Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;)V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGestureDetector:Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->initialized:Z

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiInCallAnswerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/MiuiInCallAnswerWidget;Lcom/android/phone/MiuiInCallAnswerWidget$State;)Lcom/android/phone/MiuiInCallAnswerWidget$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiInCallAnswerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiInCallAnswerWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiInCallAnswerWidget;->setGrabbedState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiInCallAnswerWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiInCallAnswerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBarLight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiInCallAnswerWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationDownTarget:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/MiuiInCallAnswerWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiInCallAnswerWidget;->dispatchTriggerEvent(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/MiuiInCallAnswerWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingDownTargetView:Landroid/view/View;

    return-object v0
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "InCallAnswerWidget"

    const-string v1, "dispatchTriggerEvent: calling onTrigger() of listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 300
    :cond_0
    return-void
.end method

.method private hitDownThreshold()Z
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationDownTarget:I

    add-int/lit8 v1, v1, -0x28

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hitUpThreshold()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    sget-object v3, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Up:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    add-int/lit8 v3, v3, 0x78

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    add-int/lit8 v3, v3, 0x28

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private movePanel(F)V
    .locals 4
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x4

    .line 246
    move v0, p1

    .line 247
    .local v0, translationY:F
    sget-object v1, Lcom/android/phone/MiuiInCallAnswerWidget$2;->$SwitchMap$com$android$phone$MiuiInCallAnswerWidget$State:[I

    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    invoke-virtual {v2}, Lcom/android/phone/MiuiInCallAnswerWidget$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 256
    :goto_0
    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationDownTarget:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 257
    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->setTranslationY(F)V

    .line 261
    const/high16 v1, 0x4040

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingDownTargetView:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/CallCard$Fade;->show(Landroid/view/View;)V

    .line 268
    :cond_0
    :goto_1
    return-void

    .line 249
    :pswitch_0
    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    int-to-float v1, v1

    add-float v0, v1, p1

    .line 250
    goto :goto_0

    .line 252
    :pswitch_1
    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationDownTarget:I

    int-to-float v1, v1

    add-float v0, v1, p1

    goto :goto_0

    .line 263
    :cond_1
    const/high16 v1, -0x3fc0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingDownTargetView:Landroid/view/View;

    invoke-static {v1, v3}, Lcom/android/phone/CallCard$Fade;->hide(Landroid/view/View;I)V

    .line 265
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lcom/android/phone/CallCard$Fade;->hide(Landroid/view/View;I)V

    .line 266
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_1

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 307
    iget v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 309
    iget v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGrabbedState:I

    if-nez v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    .line 317
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGrabbedState:I

    .line 319
    :cond_1
    return-void

    .line 311
    :cond_2
    if-nez p1, :cond_3

    .line 312
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    goto :goto_0

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private startAnimation(FF)V
    .locals 5
    .parameter "translationY"
    .parameter "velocity"

    .prologue
    .line 322
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    .line 323
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->getTranslationY()F

    move-result v3

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 324
    .local v0, distance:F
    const/high16 v3, 0x44fa

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 325
    const/high16 v3, 0x447a

    mul-float/2addr v3, v0

    div-float/2addr v3, p2

    float-to-long v1, v3

    .line 326
    .local v1, duration:J
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 327
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 328
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mVibrator:Landroid/os/Vibrator;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCancel(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "eDown"
    .parameter "eUp"

    .prologue
    const/4 v1, 0x0

    .line 467
    iget v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    if-ltz v0, :cond_1

    .line 469
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->hitUpThreshold()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    int-to-float v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->startAnimation(FF)V

    .line 474
    :goto_0
    const/4 v0, 0x1

    .line 476
    :goto_1
    return v0

    .line 472
    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->startAnimation(FF)V

    goto :goto_0

    .line 476
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 481
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 493
    :goto_0
    :pswitch_0
    return-void

    .line 483
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->dispatchTriggerEvent(I)V

    goto :goto_0

    .line 487
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->dispatchTriggerEvent(I)V

    goto :goto_0

    .line 490
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->dispatchTriggerEvent(I)V

    goto :goto_0

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x7f070085
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 397
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->vibrate(J)V

    .line 398
    invoke-direct {p0, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->setGrabbedState(I)V

    .line 401
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingDownTargetView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBarLight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    return v3
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 120
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIncomingCallWidgetInCall:Landroid/view/View;

    .line 121
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIncomingCallWidgetMain:Landroid/view/View;

    .line 123
    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mAnswerButton:Landroid/widget/Button;

    .line 124
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mAnswerButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIgnoreButton:Landroid/widget/Button;

    .line 126
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIgnoreButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectButton:Landroid/widget/Button;

    .line 128
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectWithSmsButton:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectWithSmsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBar:Landroid/widget/ImageView;

    .line 133
    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBarLight:Landroid/widget/ImageView;

    .line 134
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingBar:Landroid/view/View;

    .line 138
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MiuiInCallAnswerWidget$1;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiInCallAnswerWidget$1;-><init>(Lcom/android/phone/MiuiInCallAnswerWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 171
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "eDown"
    .parameter "eUp"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v4, 0x4396

    const/4 v3, 0x0

    .line 410
    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 411
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/MiuiInCallAnswerWidget;->onCancel(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 436
    :goto_0
    return v1

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->getTranslationY()F

    move-result v0

    .line 415
    .local v0, currentTranslationY:F
    cmpg-float v1, v0, v3

    if-gtz v1, :cond_1

    .line 417
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    .line 418
    cmpg-float v1, p4, v3

    if-gez v1, :cond_3

    .line 420
    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    int-to-float v1, v1

    invoke-direct {p0, v1, p4}, Lcom/android/phone/MiuiInCallAnswerWidget;->startAnimation(FF)V

    .line 427
    :cond_1
    :goto_1
    cmpl-float v1, v0, v3

    if-ltz v1, :cond_2

    .line 429
    cmpl-float v1, p4, v3

    if-lez v1, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 431
    const-wide/16 v1, 0x28

    invoke-direct {p0, v1, v2}, Lcom/android/phone/MiuiInCallAnswerWidget;->vibrate(J)V

    .line 432
    const-string v1, "InCallAnswerWidget"

    const-string v2, "user trying to accept the call by flinging the panel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationDownTarget:I

    int-to-float v1, v1

    invoke-direct {p0, v1, p4}, Lcom/android/phone/MiuiInCallAnswerWidget;->startAnimation(FF)V

    .line 436
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 423
    :cond_3
    invoke-direct {p0, v3, p4}, Lcom/android/phone/MiuiInCallAnswerWidget;->startAnimation(FF)V

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 193
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIncomingCallWidgetMain:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    iget v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    if-ltz v2, :cond_2

    move v0, v1

    .line 199
    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 203
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingBarExtendWith:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 204
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingBarExtendWith:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 205
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    move v0, v1

    .line 207
    goto :goto_0
.end method

.method public onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "eDown"
    .parameter "eMove"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 442
    iget v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 443
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/MiuiInCallAnswerWidget;->onCancel(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 462
    :goto_0
    return v3

    .line 447
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 448
    .local v0, deltaY:I
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->hitDownThreshold()Z

    move-result v1

    .line 449
    .local v1, hitDown:Z
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->hitUpThreshold()Z

    move-result v2

    .line 450
    .local v2, hitUp:Z
    if-eqz v1, :cond_5

    .line 452
    const-wide/16 v3, 0x28

    invoke-direct {p0, v3, v4}, Lcom/android/phone/MiuiInCallAnswerWidget;->vibrate(J)V

    .line 453
    const-string v3, "InCallAnswerWidget"

    const-string v4, "user trying to accept the call by moving the panel to target"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationDownTarget:I

    int-to-float v3, v3

    invoke-direct {p0, v3, p4}, Lcom/android/phone/MiuiInCallAnswerWidget;->startAnimation(FF)V

    .line 459
    :cond_1
    :goto_1
    if-lez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-gez v0, :cond_4

    if-nez v2, :cond_4

    .line 460
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->movePanel(F)V

    .line 462
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 455
    :cond_5
    const/4 v3, -0x3

    if-ge v0, v3, :cond_1

    if-eqz v2, :cond_1

    .line 457
    iget v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    int-to-float v3, v3

    invoke-direct {p0, v3, p4}, Lcom/android/phone/MiuiInCallAnswerWidget;->startAnimation(FF)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 216
    iget v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGestureDetector:Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 381
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 382
    if-ne p1, p0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->initialized:Z

    if-eqz v0, :cond_0

    .line 383
    sget-object v0, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Init:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->setTranslationY(F)V

    .line 387
    :cond_0
    if-eqz p2, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 392
    :cond_1
    return-void
.end method

.method public reset(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    const/4 v5, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 331
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingDownTargetView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 333
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiInCallAnswerWidget;->setVisibility(I)V

    .line 337
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 377
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->setVisibility(I)V

    .line 343
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    sget-object v2, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Up:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    if-eq v1, v2, :cond_5

    .line 344
    sget-object v1, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Init:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    .line 345
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBarLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    :goto_1
    const/4 v0, 0x0

    .line 351
    .local v0, currentCalls:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_2

    .line 352
    add-int/lit8 v0, v0, 0x1

    .line 354
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_3

    .line 355
    add-int/lit8 v0, v0, 0x1

    .line 358
    :cond_3
    if-nez v0, :cond_6

    .line 359
    const-string v1, "InCallAnswerWidget"

    const-string v2, "show incoming call widget for single call mode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIncomingCallWidgetMain:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIncomingCallWidgetInCall:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectWithSmsButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 364
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 365
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectWithSmsButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 368
    :cond_4
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 347
    .end local v0           #currentCalls:I
    :cond_5
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBarLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 371
    .restart local v0       #currentCalls:I
    :cond_6
    const-string v1, "InCallAnswerWidget"

    const-string v2, "show incoming call widget for in call mode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIncomingCallWidgetMain:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIncomingCallWidgetInCall:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mAnswerButton:Landroid/widget/Button;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const v1, 0x7f0c0281

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(I)V

    .line 375
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_0

    .line 374
    :cond_7
    const v1, 0x7f0c027f

    goto :goto_2
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    .line 288
    return-void
.end method

.method public setSlidingTarget(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .parameter "downTarget"
    .parameter "upTarget"

    .prologue
    const/4 v4, 0x0

    .line 174
    iput-object p1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingDownTargetView:Landroid/view/View;

    .line 176
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x30a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 178
    .local v1, statusBarHeight:I
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/view/View;->measure(II)V

    .line 180
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 182
    .local v0, mSlidingUpTarget:I
    iget v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mDisplayHeight:I

    add-int/lit16 v2, v2, -0x108

    sub-int v2, v0, v2

    iput v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    .line 183
    const/16 v2, 0x108

    iput v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationDownTarget:I

    .line 185
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mDisplayHeight:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    rsub-int v3, v3, 0x108

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 187
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiInCallAnswerWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->requestLayout()V

    .line 189
    return-void
.end method
