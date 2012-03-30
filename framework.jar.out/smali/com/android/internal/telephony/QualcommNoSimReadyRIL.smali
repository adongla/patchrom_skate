.class public Lcom/android/internal/telephony/QualcommNoSimReadyRIL;
.super Lcom/android/internal/telephony/RIL;
.source "QualcommNoSimReadyRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/QualcommNoSimReadyRIL$1;,
        Lcom/android/internal/telephony/QualcommNoSimReadyRIL$IccHandler;
    }
.end annotation


# instance fields
.field private final RIL_INT_RADIO_OFF:I

.field private final RIL_INT_RADIO_ON:I

.field private final RIL_INT_RADIO_UNAVALIABLE:I

.field protected mIccHandler:Lcom/android/internal/telephony/QualcommNoSimReadyRIL$IccHandler;

.field protected mIccThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->RIL_INT_RADIO_OFF:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->RIL_INT_RADIO_UNAVALIABLE:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->RIL_INT_RADIO_ON:I

    .line 55
    return-void
.end method

.method private setRadioStateFromRILInt(I)V
    .locals 6
    .parameter "stateCode"

    .prologue
    .line 613
    packed-switch p1, :pswitch_data_0

    .line 639
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized RIL_RadioState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 615
    :pswitch_0
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 642
    .local v2, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 643
    return-void

    .line 618
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 619
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 621
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommNoSimReadyRIL$IccHandler;

    if-nez v3, :cond_0

    .line 622
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "IccHandler"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 623
    .local v0, handlerThread:Landroid/os/HandlerThread;
    iput-object v0, p0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 625
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 627
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 628
    .local v1, looper:Landroid/os/Looper;
    new-instance v3, Lcom/android/internal/telephony/QualcommNoSimReadyRIL$IccHandler;

    invoke-direct {v3, p0, p0, v1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL$IccHandler;-><init>(Lcom/android/internal/telephony/QualcommNoSimReadyRIL;Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommNoSimReadyRIL$IccHandler;

    .line 629
    iget-object v3, p0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommNoSimReadyRIL$IccHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL$IccHandler;->run()V

    .line 631
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    .end local v1           #looper:Landroid/os/Looper;
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mPhoneType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 632
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 636
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 634
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_1

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected processSolicited(Landroid/os/Parcel;)V
    .locals 10
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 64
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 70
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_0

    .line 71
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected solicited response! sn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v2, 0x0

    .line 78
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_3

    .line 80
    :cond_1
    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_0

    .line 196
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized solicited response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :catch_0
    move-exception v5

    .line 201
    .local v5, tr:Ljava/lang/Throwable;
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_2

    .line 206
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 207
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 209
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 86
    .end local v5           #tr:Ljava/lang/Throwable;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 214
    .end local v2           #ret:Ljava/lang/Object;
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 215
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 216
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 87
    .restart local v2       #ret:Ljava/lang/Object;
    :pswitch_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 88
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 89
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 90
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 91
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 92
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 93
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 94
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 95
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 96
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 97
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 98
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 99
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 100
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 101
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 102
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 103
    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 104
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 105
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 106
    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 107
    :pswitch_15
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 108
    :pswitch_16
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 109
    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 110
    :pswitch_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 111
    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 112
    :pswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 113
    :pswitch_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 114
    :pswitch_1c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 115
    :pswitch_1d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 116
    :pswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 117
    :pswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 118
    :pswitch_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 119
    :pswitch_21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 120
    :pswitch_22
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 121
    :pswitch_23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 122
    :pswitch_24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 123
    :pswitch_25
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 124
    :pswitch_26
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 125
    :pswitch_27
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 126
    :pswitch_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 127
    :pswitch_29
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 128
    :pswitch_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 129
    :pswitch_2b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 130
    :pswitch_2c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 131
    :pswitch_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 132
    :pswitch_2e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 133
    :pswitch_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 134
    :pswitch_30
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 135
    :pswitch_31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 136
    :pswitch_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 137
    :pswitch_33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 138
    :pswitch_34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 139
    :pswitch_35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 140
    :pswitch_36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 141
    :pswitch_37
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 142
    :pswitch_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 143
    :pswitch_39
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 144
    :pswitch_3a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 145
    :pswitch_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 146
    :pswitch_3c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 147
    :pswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 148
    :pswitch_3e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 149
    :pswitch_3f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 150
    :pswitch_40
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 151
    :pswitch_41
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 152
    :pswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 153
    :pswitch_43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 154
    :pswitch_44
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 155
    :pswitch_45
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 156
    :pswitch_46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 157
    :pswitch_47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 158
    :pswitch_48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 159
    :pswitch_49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 160
    :pswitch_4a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 161
    :pswitch_4b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 162
    :pswitch_4c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 163
    :pswitch_4d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 164
    :pswitch_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 165
    :pswitch_4f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 166
    :pswitch_50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 167
    :pswitch_51
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 168
    :pswitch_52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 169
    :pswitch_53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 170
    :pswitch_54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 171
    :pswitch_55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 172
    :pswitch_56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 173
    :pswitch_57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 174
    :pswitch_58
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 175
    :pswitch_59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 176
    :pswitch_5a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 177
    :pswitch_5b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 178
    :pswitch_5c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 179
    :pswitch_5d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 180
    :pswitch_5e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 181
    :pswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 182
    :pswitch_60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 183
    :pswitch_61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 184
    :pswitch_62
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 185
    :pswitch_63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 186
    :pswitch_64
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 187
    :pswitch_65
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 188
    :pswitch_66
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 189
    :pswitch_67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 190
    :pswitch_68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 191
    :pswitch_69
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 192
    :pswitch_6a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 193
    :pswitch_6b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 220
    .end local v2           #ret:Ljava/lang/Object;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->riljLog(Ljava/lang/String;)V

    .line 223
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_5

    .line 224
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 225
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 228
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_5d
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_64
        :pswitch_62
        :pswitch_63
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
    .end packed-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 25
    .parameter "p"

    .prologue
    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 239
    .local v13, response:I
    packed-switch v13, :pswitch_data_0

    .line 285
    :pswitch_0
    :try_start_0
    new-instance v20, Ljava/lang/RuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unrecognized unsol response: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :catch_0
    move-exception v19

    .line 288
    .local v19, tr:Ljava/lang/Throwable;
    const-string v20, "RILJ"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception processing unsol response: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "Exception:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    .end local v19           #tr:Ljava/lang/Throwable;
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 246
    :pswitch_2
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    .line 293
    :goto_1
    packed-switch v13, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 295
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 296
    .local v18, state:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->setRadioStateFromRILInt(I)V

    goto :goto_0

    .line 247
    .end local v18           #state:I
    :pswitch_5
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .local v15, ret:Ljava/lang/Object;
    goto :goto_1

    .line 248
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 249
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 250
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 251
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 252
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 253
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 254
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 255
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_d
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 256
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 257
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 258
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_10
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 259
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_11
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 260
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_12
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 261
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_13
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 262
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_14
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 263
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_15
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 264
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_16
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 265
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_17
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 266
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_18
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 267
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_19
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 268
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_1a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 269
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_1b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 270
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_1c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 271
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_1d
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 272
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_1e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v15

    .local v15, ret:Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 273
    .end local v15           #ret:Ljava/util/ArrayList;
    :pswitch_1f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .local v15, ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 274
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_20
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 275
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_21
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 276
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_22
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 277
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_23
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 278
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_24
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 279
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_25
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 280
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_26
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 281
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_27
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 282
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_28
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 299
    .end local v15           #ret:Ljava/lang/Object;
    :pswitch_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLog(I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 305
    :pswitch_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLog(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 311
    :pswitch_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLog(I)V

    .line 314
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v4, v0, [Ljava/lang/String;

    .line 316
    .local v4, a:[Ljava/lang/String;
    const/16 v20, 0x1

    check-cast v15, Ljava/lang/String;

    aput-object v15, v4, v20

    .line 320
    invoke-static {v4}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v16

    .line 321
    .local v16, sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 328
    .end local v4           #a:[Ljava/lang/String;
    .end local v16           #sms:Landroid/telephony/SmsMessage;
    :pswitch_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 336
    :pswitch_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 338
    check-cast v15, [I

    move-object/from16 v17, v15

    check-cast v17, [I

    .line 340
    .local v17, smsIndex:[I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 346
    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " NEW_SMS_ON_SIM ERROR with wrong length "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v17           #smsIndex:[I
    :pswitch_2e
    move-object/from16 v20, v15

    .line 351
    check-cast v20, [Ljava/lang/String;

    move-object/from16 v12, v20

    check-cast v12, [Ljava/lang/String;

    .line 353
    .local v12, resp:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 354
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v12, v0, [Ljava/lang/String;

    .line 355
    const/16 v20, 0x0

    check-cast v15, [Ljava/lang/String;

    check-cast v15, [Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v21, v15, v21

    aput-object v21, v12, v20

    .line 356
    const/16 v20, 0x1

    const/16 v21, 0x0

    aput-object v21, v12, v20

    .line 358
    :cond_2
    const/16 v20, 0x0

    aget-object v20, v12, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v12, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 365
    .end local v12           #resp:[Ljava/lang/String;
    :pswitch_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 371
    .local v8, nitzReceiveTime:J
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/Object;

    .line 373
    .local v14, result:[Ljava/lang/Object;
    const/16 v20, 0x0

    aput-object v15, v14, v20

    .line 374
    const/16 v20, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v14, v20

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v14, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 382
    :cond_3
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto/16 :goto_0

    .line 391
    .end local v8           #nitzReceiveTime:J
    .end local v14           #result:[Ljava/lang/Object;
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 397
    :pswitch_31
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 403
    :pswitch_32
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 412
    :pswitch_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLog(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 421
    :pswitch_34
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 430
    :pswitch_35
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 439
    :pswitch_36
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 448
    :pswitch_37
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLog(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 456
    :pswitch_38
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 465
    :pswitch_39
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 474
    :pswitch_3a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 482
    :pswitch_3b
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLog(I)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 490
    :pswitch_3c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLog(I)V

    move-object/from16 v16, v15

    .line 492
    check-cast v16, Landroid/telephony/SmsMessage;

    .line 494
    .restart local v16       #sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 501
    .end local v16           #sms:Landroid/telephony/SmsMessage;
    :pswitch_3d
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLog(I)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 510
    :pswitch_3e
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLog(I)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 518
    :pswitch_3f
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLog(I)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 526
    :pswitch_40
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 535
    :pswitch_41
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 547
    :pswitch_42
    :try_start_3
    move-object v0, v15

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    .line 553
    .local v7, listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 554
    .local v11, rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 555
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_2

    .line 548
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v11           #rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :catch_1
    move-exception v5

    .line 549
    .local v5, e:Ljava/lang/ClassCastException;
    const-string v20, "RILJ"

    const-string v21, "Unexpected exception casting to listInfoRecs"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v5           #e:Ljava/lang/ClassCastException;
    :pswitch_43
    move-object/from16 v20, v15

    .line 560
    check-cast v20, [B

    check-cast v20, [B

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 567
    :pswitch_44
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 569
    check-cast v15, [I

    check-cast v15, [I

    const/16 v20, 0x0

    aget v20, v15, v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/4 v10, 0x1

    .line 570
    .local v10, playtone:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 569
    .end local v10           #playtone:Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 576
    :pswitch_45
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 597
    :pswitch_46
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QualcommNoSimReadyRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_16
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
    .end packed-switch

    .line 293
    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_3
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3a
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_46
    .end packed-switch
.end method
