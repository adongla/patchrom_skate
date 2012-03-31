.class public Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .parameter
    .parameter "toneId"

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 1425
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1426
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 1427
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1428
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 1433
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1435
    const/4 v8, 0x0

    .line 1438
    .local v8, toneType:I
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v10, v10, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 1440
    .local v3, phoneType:I
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v10, :pswitch_data_0

    .line 1530
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad toneId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1442
    :pswitch_0
    const/16 v8, 0x16

    .line 1443
    const/16 v9, 0x50

    .line 1445
    .local v9, toneVolume:I
    const v7, 0x7fffffeb

    .line 1538
    .local v7, toneLengthMillis:I
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 1539
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v5, 0x6

    .line 1544
    .local v5, stream:I
    :cond_0
    :goto_1
    new-instance v6, Landroid/media/ToneGenerator;

    invoke-direct {v6, v5, v9}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    .end local v5           #stream:I
    .local v6, toneGenerator:Landroid/media/ToneGenerator;
    :goto_2
    const/4 v1, 0x1

    .line 1567
    .local v1, needToStopTone:Z
    const/4 v2, 0x0

    .line 1569
    .local v2, okToPlayTone:Z
    if-eqz v6, :cond_4

    .line 1570
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v10, v10, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 1571
    .local v4, ringerMode:I
    if-ne v3, v14, :cond_12

    .line 1572
    const/16 v10, 0x5d

    if-ne v8, v10, :cond_b

    .line 1573
    if-eqz v4, :cond_2

    if-eq v4, v13, :cond_2

    .line 1575
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$500()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1576
    :cond_1
    const/4 v2, 0x1

    .line 1577
    const/4 v1, 0x0

    .line 1604
    :cond_2
    :goto_3
    monitor-enter p0

    .line 1605
    if-eqz v2, :cond_3

    :try_start_1
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    if-eq v10, v14, :cond_3

    .line 1606
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1607
    invoke-virtual {v6, v8}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1609
    add-int/lit8 v10, v7, 0x14

    int-to-long v10, v10

    :try_start_2
    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1614
    :goto_4
    if-eqz v1, :cond_3

    .line 1615
    :try_start_3
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1619
    :cond_3
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    .line 1620
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1621
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1637
    .end local v4           #ringerMode:I
    :cond_4
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v10, v10, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_5

    .line 1638
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 1640
    :cond_5
    return-void

    .line 1448
    .end local v1           #needToStopTone:Z
    .end local v2           #okToPlayTone:Z
    .end local v6           #toneGenerator:Landroid/media/ToneGenerator;
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_1
    if-ne v3, v14, :cond_6

    .line 1449
    const/16 v8, 0x60

    .line 1450
    const/16 v9, 0x32

    .line 1451
    .restart local v9       #toneVolume:I
    const/16 v7, 0x3e8

    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1452
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_6
    if-eq v3, v13, :cond_7

    const/4 v10, 0x3

    if-ne v3, v10, :cond_8

    .line 1454
    :cond_7
    const/16 v8, 0x11

    .line 1455
    const/16 v9, 0x50

    .line 1456
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1458
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_8
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1462
    :pswitch_2
    const/16 v8, 0x12

    .line 1463
    const/16 v9, 0x50

    .line 1464
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 1465
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1471
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_3
    const/16 v8, 0x19

    .line 1472
    const/16 v9, 0x50

    .line 1473
    .restart local v9       #toneVolume:I
    const/16 v7, 0x3e8

    .line 1474
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1476
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_4
    const/16 v8, 0x1b

    .line 1477
    const/16 v9, 0x50

    .line 1478
    .restart local v9       #toneVolume:I
    const/16 v7, 0xc8

    .line 1479
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1481
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_5
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v10, v10, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    if-ne v10, v13, :cond_9

    .line 1483
    const/16 v8, 0x5d

    .line 1484
    const/16 v9, 0x50

    .line 1485
    .restart local v9       #toneVolume:I
    const/16 v7, 0x2ee

    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1487
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_9
    const/16 v8, 0x1b

    .line 1488
    const/16 v9, 0x50

    .line 1489
    .restart local v9       #toneVolume:I
    const/16 v7, 0xc8

    .line 1491
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1493
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_6
    const/16 v8, 0x56

    .line 1494
    const/16 v9, 0x50

    .line 1495
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1388

    .line 1496
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1498
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_7
    const/16 v8, 0x26

    .line 1499
    const/16 v9, 0x50

    .line 1500
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 1501
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1503
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_8
    const/16 v8, 0x25

    .line 1504
    const/16 v9, 0x32

    .line 1505
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1f4

    .line 1506
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1509
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_9
    const/16 v8, 0x5f

    .line 1510
    const/16 v9, 0x32

    .line 1511
    .restart local v9       #toneVolume:I
    const/16 v7, 0x177

    .line 1512
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1514
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_a
    const/16 v8, 0x57

    .line 1515
    const/16 v9, 0x32

    .line 1516
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1388

    .line 1517
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1519
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_b
    const/16 v8, 0x17

    .line 1520
    const/16 v9, 0x50

    .line 1522
    .restart local v9       #toneVolume:I
    const v7, 0x7fffffeb

    .line 1523
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1525
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_c
    const/16 v8, 0x15

    .line 1526
    const/16 v9, 0x50

    .line 1527
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 1528
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1542
    :cond_a
    const/4 v5, 0x0

    .restart local v5       #stream:I
    goto/16 :goto_1

    .line 1546
    .end local v5           #stream:I
    :catch_0
    move-exception v0

    .line 1547
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const/4 v6, 0x0

    .restart local v6       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_2

    .line 1579
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #needToStopTone:Z
    .restart local v2       #okToPlayTone:Z
    .restart local v4       #ringerMode:I
    :cond_b
    const/16 v10, 0x60

    if-eq v8, v10, :cond_c

    const/16 v10, 0x26

    if-eq v8, v10, :cond_c

    const/16 v10, 0x27

    if-eq v8, v10, :cond_c

    const/16 v10, 0x25

    if-eq v8, v10, :cond_c

    const/16 v10, 0x5f

    if-ne v8, v10, :cond_e

    .line 1584
    :cond_c
    if-eqz v4, :cond_2

    .line 1585
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$500()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1586
    :cond_d
    const/4 v2, 0x1

    .line 1587
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1589
    :cond_e
    const/16 v10, 0x57

    if-eq v8, v10, :cond_f

    const/16 v10, 0x56

    if-ne v8, v10, :cond_11

    .line 1591
    :cond_f
    if-eqz v4, :cond_2

    if-eq v4, v13, :cond_2

    .line 1593
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$500()Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1594
    :cond_10
    const/4 v2, 0x1

    .line 1595
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1598
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1601
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1610
    :catch_1
    move-exception v0

    .line 1611
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer stopped: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1621
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 1440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 1643
    monitor-enter p0

    .line 1644
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1645
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1647
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1648
    monitor-exit p0

    .line 1649
    return-void

    .line 1648
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
