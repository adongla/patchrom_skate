.class Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;
.super Landroid/os/Handler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 691
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 693
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    move-result-object v1

    .line 694
    .local v1, result:Landroid/bluetooth/AtCommandResult;
    if-eqz v1, :cond_0

    .line 695
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v3, v3, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto :goto_0

    .line 699
    .end local v1           #result:Landroid/bluetooth/AtCommandResult;
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v2, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ServiceState;

    .line 700
    .local v2, state:Landroid/telephony/ServiceState;
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v4

    invoke-static {v3, v4, v2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLandroid/telephony/ServiceState;)V

    goto :goto_0

    .line 704
    .end local v2           #state:Landroid/telephony/ServiceState;
    :pswitch_2
    const/4 v0, 0x0

    .line 705
    .local v0, connection:Lcom/android/internal/telephony/Connection;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/Connection;

    if-eqz v3, :cond_1

    .line 706
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0           #connection:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 708
    .restart local v0       #connection:Lcom/android/internal/telephony/Connection;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v4

    invoke-static {v3, v4, v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 691
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
