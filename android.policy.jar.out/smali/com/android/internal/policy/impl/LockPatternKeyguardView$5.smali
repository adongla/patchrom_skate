.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;
.super Lcom/android/internal/policy/IFaceLockCallback$Stub;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Lcom/android/internal/policy/IFaceLockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 1406
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 1407
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 1408
    return-void
.end method

.method public exposeFallback()V
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 1426
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 1433
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1808(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)I

    .line 1416
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 1417
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 1418
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 1419
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 1394
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 1396
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 1397
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 1398
    return-void
.end method
