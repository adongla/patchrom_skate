.class Lcom/android/phone/MiuiInCallTouchUi$1;
.super Ljava/lang/Object;
.source "MiuiInCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiInCallTouchUi;->onFinishInflate()V
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
    .line 152
    iput-object p1, p0, Lcom/android/phone/MiuiInCallTouchUi$1;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method
