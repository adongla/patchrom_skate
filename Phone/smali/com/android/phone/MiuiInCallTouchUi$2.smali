.class Lcom/android/phone/MiuiInCallTouchUi$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiInCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiInCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiInCallTouchUi;)V
    .locals 0
    .parameter

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 842
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    invoke-static {v0}, Lcom/android/phone/MiuiInCallTouchUi;->access$000(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 843
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    invoke-static {v0}, Lcom/android/phone/MiuiInCallTouchUi;->access$200(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    invoke-static {v0}, Lcom/android/phone/MiuiInCallTouchUi;->access$100(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 844
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    invoke-static {v0}, Lcom/android/phone/MiuiInCallTouchUi;->access$400(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    invoke-static {v3}, Lcom/android/phone/MiuiInCallTouchUi;->access$300(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 845
    return-void

    :cond_0
    move v0, v2

    .line 842
    goto :goto_0

    :cond_1
    move v0, v2

    .line 843
    goto :goto_1

    :cond_2
    move v1, v2

    .line 844
    goto :goto_2
.end method
