.class Lcom/android/internal/policy/impl/MiuiGlobalActions$2;
.super Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;II)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 177
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$400(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 179
    .local v0, ringerMode:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$400(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 180
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method
