.class Lcom/android/phone/MiuiStorageMonitor$1;
.super Landroid/os/Handler;
.source "MiuiStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiStorageMonitor;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiStorageMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/phone/MiuiStorageMonitor$1;->this$0:Lcom/android/phone/MiuiStorageMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 36
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MiuiStorageMonitor$1;->this$0:Lcom/android/phone/MiuiStorageMonitor;

    invoke-static {v0}, Lcom/android/phone/MiuiStorageMonitor;->access$000(Lcom/android/phone/MiuiStorageMonitor;)V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
