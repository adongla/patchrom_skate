.class Lcom/android/phone/BluetoothHandsfree$26;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 2619
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$26;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2622
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$26;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2623
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2645
    :goto_0
    return-object v1

    .line 2625
    :cond_0
    array-length v1, p1

    if-lt v1, v3, :cond_2

    aget-object v1, p1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2626
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$26;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 2627
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$26;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$7000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$26;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$7100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$26;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4000(Lcom/android/phone/BluetoothHandsfree;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 2631
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$26;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$7200()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2635
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$26;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$7300(Lcom/android/phone/BluetoothHandsfree;)V

    .line 2637
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2638
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 2632
    :catch_0
    move-exception v0

    .line 2633
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_3
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    monitor-exit v2

    goto :goto_0

    .line 2637
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 2639
    :cond_2
    array-length v1, p1

    if-lt v1, v3, :cond_4

    aget-object v1, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2640
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$26;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$7000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2641
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$26;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 2643
    :cond_3
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 2645
    :cond_4
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 2649
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+BVRA: (0-1)"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
