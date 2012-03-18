.class public Lcom/android/internal/telephony/Smdk4210RIL;
.super Lcom/android/internal/telephony/RIL;
.source "Smdk4210RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Smdk4210RIL$1;,
        Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;
    }
.end annotation


# static fields
.field static final RIL_REQUEST_DIAL_EMERGENCY:I = 0x2720

.field static final RIL_UNSOL_DEVICE_READY_NOTI:I = 0x2b00

.field static final RIL_UNSOL_HSDPA_STATE_CHANGED:I = 0x2b08

.field static final RIL_UNSOL_O2_HOME_ZONE_INFO:I = 0x2aff

.field static final RIL_UNSOL_SAMSUNG_UNKNOWN_MAGIC_REQUEST_1:I = 0x2b02

.field static final RIL_UNSOL_SAMSUNG_UNKNOWN_MAGIC_REQUEST_2:I = 0x2b03

.field static final RIL_UNSOL_SAMSUNG_UNKNOWN_MAGIC_REQUEST_3:I = 0x2b04

.field static final RIL_UNSOL_STK_SEND_SMS_RESULT:I = 0x2afa


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 78
    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/Smdk4210RIL;ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/Smdk4210RIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    return-void
.end method

.method private notifyRegistrantsRilConnectionChanged(I)V
    .locals 4
    .parameter "rilVer"

    .prologue
    const/4 v3, 0x0

    .line 786
    iput p1, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mRilVersion:I

    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 791
    :cond_0
    return-void
.end method

.method private sendPreferedNetworktype(ILandroid/os/Message;)V
    .locals 3
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 109
    const/16 v1, 0x49

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 112
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/Smdk4210RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->riljLog(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Smdk4210RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected processSolicited(Landroid/os/Parcel;)V
    .locals 10
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    .line 209
    const/4 v1, 0x0

    .line 211
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 212
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/Smdk4210RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 218
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_0

    .line 219
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

    .line 385
    :goto_0
    return-void

    .line 224
    :cond_0
    const/4 v2, 0x0

    .line 226
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_3

    .line 228
    :cond_1
    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_0

    .line 336
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

    .line 338
    :catch_0
    move-exception v5

    .line 341
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

    invoke-static {v8}, Lcom/android/internal/telephony/Smdk4210RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_2

    .line 346
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 347
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 349
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 230
    .end local v5           #tr:Ljava/lang/Throwable;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 354
    .end local v2           #ret:Ljava/lang/Object;
    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    .line 356
    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v7, 0x19

    if-eq v6, v7, :cond_5

    .line 358
    :cond_4
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 359
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 231
    .restart local v2       #ret:Ljava/lang/Object;
    :pswitch_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 232
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 233
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 234
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 235
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 236
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 237
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 238
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 239
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 240
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 241
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 242
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 243
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 244
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 245
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 246
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 247
    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 248
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 249
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 250
    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 251
    :pswitch_15
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 252
    :pswitch_16
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 253
    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 254
    :pswitch_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 255
    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 256
    :pswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 257
    :pswitch_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 258
    :pswitch_1c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 259
    :pswitch_1d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 260
    :pswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 261
    :pswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 262
    :pswitch_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 263
    :pswitch_21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 264
    :pswitch_22
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 265
    :pswitch_23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 266
    :pswitch_24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 267
    :pswitch_25
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 268
    :pswitch_26
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 269
    :pswitch_27
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 270
    :pswitch_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 271
    :pswitch_29
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 272
    :pswitch_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 273
    :pswitch_2b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 274
    :pswitch_2c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 275
    :pswitch_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 276
    :pswitch_2e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 277
    :pswitch_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 278
    :pswitch_30
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 279
    :pswitch_31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 280
    :pswitch_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 281
    :pswitch_33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 282
    :pswitch_34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 283
    :pswitch_35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 284
    :pswitch_36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 285
    :pswitch_37
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 286
    :pswitch_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 287
    :pswitch_39
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 288
    :pswitch_3a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 289
    :pswitch_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 290
    :pswitch_3c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 291
    :pswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 292
    :pswitch_3e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 293
    :pswitch_3f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 294
    :pswitch_40
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 295
    :pswitch_41
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 296
    :pswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 297
    :pswitch_43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 298
    :pswitch_44
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 299
    :pswitch_45
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 300
    :pswitch_46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 301
    :pswitch_47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 302
    :pswitch_48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 303
    :pswitch_49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 304
    :pswitch_4a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 305
    :pswitch_4b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 306
    :pswitch_4c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 307
    :pswitch_4d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 308
    :pswitch_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 309
    :pswitch_4f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 310
    :pswitch_50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 311
    :pswitch_51
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 312
    :pswitch_52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 313
    :pswitch_53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 314
    :pswitch_54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 315
    :pswitch_55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 316
    :pswitch_56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 317
    :pswitch_57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 318
    :pswitch_58
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 319
    :pswitch_59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 320
    :pswitch_5a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 321
    :pswitch_5b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 322
    :pswitch_5c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 323
    :pswitch_5d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 324
    :pswitch_5e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 325
    :pswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 326
    :pswitch_60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 327
    :pswitch_61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 328
    :pswitch_62
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 329
    :pswitch_63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 330
    :pswitch_64
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 331
    :pswitch_65
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 332
    :pswitch_66
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 333
    :pswitch_67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 334
    :pswitch_68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 364
    .end local v2           #ret:Ljava/lang/Object;
    :cond_5
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 376
    :cond_6
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

    invoke-static {v7}, Lcom/android/internal/telephony/Smdk4210RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telephony/Smdk4210RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/Smdk4210RIL;->riljLog(Ljava/lang/String;)V

    .line 379
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_7

    .line 380
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 381
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 384
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 365
    :catch_1
    move-exception v5

    .line 366
    .restart local v5       #tr:Ljava/lang/Throwable;
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

    invoke-static {v8}, Lcom/android/internal/telephony/Smdk4210RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, Processing Samsung SMS fix "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 370
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 228
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
    .end packed-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 25
    .parameter "p"

    .prologue
    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 395
    .local v14, response:I
    sparse-switch v14, :sswitch_data_0

    .line 438
    :try_start_0
    new-instance v20, Ljava/lang/RuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unrecognized unsol response: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :catch_0
    move-exception v19

    .line 441
    .local v19, tr:Ljava/lang/Throwable;
    const-string v20, "RILJ"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception processing unsol response: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 778
    .end local v19           #tr:Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 397
    :sswitch_0
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 446
    :goto_1
    packed-switch v14, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 449
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    .line 450
    .local v8, newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 452
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/Smdk4210RIL;->switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 398
    .end local v8           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_1
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .local v16, ret:Ljava/lang/Object;
    goto :goto_1

    .line 399
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 400
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 401
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 402
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 403
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 404
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 405
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 406
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 407
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 408
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 409
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 410
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_d
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 411
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 412
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 413
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_10
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 414
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_11
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 415
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_12
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 416
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_13
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 417
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_14
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 418
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_15
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 419
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_16
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 420
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_17
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 421
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_18
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 422
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_19
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 423
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_1a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v16

    .local v16, ret:Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 424
    .end local v16           #ret:Ljava/util/ArrayList;
    :sswitch_1b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .local v16, ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 425
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_1c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 426
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_1d
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 427
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_1e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 428
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_1f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 429
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_20
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 430
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_21
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 433
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_22
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 434
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_23
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 435
    .end local v16           #ret:Ljava/lang/Object;
    :sswitch_24
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v16

    .restart local v16       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 455
    .end local v16           #ret:Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 461
    :pswitch_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 467
    :pswitch_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 470
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v4, v0, [Ljava/lang/String;

    .line 472
    .local v4, a:[Ljava/lang/String;
    const/16 v20, 0x1

    check-cast v16, Ljava/lang/String;

    aput-object v16, v4, v20

    .line 476
    invoke-static {v4}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v17

    .line 477
    .local v17, sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

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

    .line 484
    .end local v4           #a:[Ljava/lang/String;
    .end local v17           #sms:Landroid/telephony/SmsMessage;
    :pswitch_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

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

    .line 492
    :pswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 494
    check-cast v16, [I

    move-object/from16 v18, v16

    check-cast v18, [I

    .line 496
    .local v18, smsIndex:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 502
    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " NEW_SMS_ON_SIM ERROR with wrong length "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v18           #smsIndex:[I
    :pswitch_7
    move-object/from16 v20, v16

    .line 507
    check-cast v20, [Ljava/lang/String;

    move-object/from16 v13, v20

    check-cast v13, [Ljava/lang/String;

    .line 509
    .local v13, resp:[Ljava/lang/String;
    array-length v0, v13

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 510
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v13, v0, [Ljava/lang/String;

    .line 511
    const/16 v20, 0x0

    check-cast v16, [Ljava/lang/String;

    check-cast v16, [Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v21, v16, v21

    aput-object v21, v13, v20

    .line 512
    const/16 v20, 0x1

    const/16 v21, 0x0

    aput-object v21, v13, v20

    .line 514
    :cond_2
    const/16 v20, 0x0

    aget-object v20, v13, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 521
    .end local v13           #resp:[Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 525
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 527
    .local v9, nitzReceiveTime:J
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v15, v0, [Ljava/lang/Object;

    .line 529
    .local v15, result:[Ljava/lang/Object;
    const/16 v20, 0x0

    aput-object v16, v15, v20

    .line 530
    const/16 v20, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v15, v20

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

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

    .line 538
    :cond_3
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto/16 :goto_0

    .line 547
    .end local v9           #nitzReceiveTime:J
    .end local v15           #result:[Ljava/lang/Object;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

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

    .line 553
    :pswitch_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 559
    :pswitch_b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mSsnRegistrant:Landroid/os/Registrant;

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

    .line 568
    :pswitch_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

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

    .line 577
    :pswitch_d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

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

    .line 586
    :pswitch_e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatEventRegistrant:Landroid/os/Registrant;

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

    .line 595
    :pswitch_f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

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

    .line 604
    :pswitch_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 612
    :pswitch_11
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 621
    :pswitch_12
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mRingRegistrant:Landroid/os/Registrant;

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

    .line 630
    :pswitch_13
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

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

    .line 638
    :pswitch_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 646
    :pswitch_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    move-object/from16 v17, v16

    .line 648
    check-cast v17, Landroid/telephony/SmsMessage;

    .line 650
    .restart local v17       #sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

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

    .line 657
    .end local v17           #sms:Landroid/telephony/SmsMessage;
    :pswitch_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

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

    .line 666
    :pswitch_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 674
    :pswitch_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLog(I)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 682
    :pswitch_19
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 691
    :pswitch_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 703
    :pswitch_1b
    :try_start_3
    move-object/from16 v0, v16

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    .line 709
    .local v7, listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 710
    .local v12, rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 711
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/Smdk4210RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_2

    .line 704
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v12           #rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :catch_1
    move-exception v5

    .line 705
    .local v5, e:Ljava/lang/ClassCastException;
    const-string v20, "RILJ"

    const-string v21, "Unexpected exception casting to listInfoRecs"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v5           #e:Ljava/lang/ClassCastException;
    :pswitch_1c
    move-object/from16 v20, v16

    .line 716
    check-cast v20, [B

    check-cast v20, [B

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

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

    .line 723
    :pswitch_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 725
    check-cast v16, [I

    check-cast v16, [I

    const/16 v20, 0x0

    aget v20, v16, v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/4 v11, 0x1

    .line 726
    .local v11, playtone:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 725
    .end local v11           #playtone:Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 732
    :pswitch_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 741
    :pswitch_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 750
    :pswitch_20
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 759
    :pswitch_21
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 768
    :pswitch_22
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 771
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Smdk4210RIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 772
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mPreferredNetworkType:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Smdk4210RIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    .line 773
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mCdmaSubscription:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Smdk4210RIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 774
    check-cast v16, [I

    check-cast v16, [I

    const/16 v20, 0x0

    aget v20, v16, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/Smdk4210RIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto/16 :goto_0

    .line 395
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_6
        0x3f0 -> :sswitch_7
        0x3f1 -> :sswitch_8
        0x3f2 -> :sswitch_9
        0x3f3 -> :sswitch_a
        0x3f4 -> :sswitch_b
        0x3f5 -> :sswitch_c
        0x3f6 -> :sswitch_d
        0x3f7 -> :sswitch_e
        0x3f8 -> :sswitch_f
        0x3f9 -> :sswitch_10
        0x3fa -> :sswitch_11
        0x3fb -> :sswitch_13
        0x3fc -> :sswitch_14
        0x3fd -> :sswitch_15
        0x3fe -> :sswitch_16
        0x3ff -> :sswitch_12
        0x400 -> :sswitch_17
        0x401 -> :sswitch_18
        0x402 -> :sswitch_19
        0x403 -> :sswitch_1a
        0x404 -> :sswitch_1b
        0x405 -> :sswitch_1c
        0x406 -> :sswitch_1d
        0x407 -> :sswitch_1e
        0x408 -> :sswitch_1f
        0x409 -> :sswitch_20
        0x40a -> :sswitch_21
        0x2b02 -> :sswitch_22
        0x2b03 -> :sswitch_23
        0x2b04 -> :sswitch_24
    .end sparse-switch

    .line 446
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
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
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_13
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
    .end packed-switch
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 17
    .parameter "p"

    .prologue
    .line 800
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    .line 801
    .local v1, dataAvail:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    .line 802
    .local v6, pos:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataSize()I

    move-result v8

    .line 804
    .local v8, size:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel pos = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel dataAvail = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 811
    .local v5, num:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "num = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 814
    .local v7, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_6

    .line 816
    new-instance v2, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 818
    .local v2, dc:Lcom/android/internal/telephony/DriverCall;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 819
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 821
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "index = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 823
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 825
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isMpty = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 827
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isMT = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 829
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "als = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->als:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 831
    .local v11, voiceSettings:I
    if-nez v11, :cond_2

    const/4 v12, 0x0

    :goto_3
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 832
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVoice = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_4
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 835
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 837
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Samsung magic = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 839
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "number = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 841
    .local v4, np:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "np = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-static {v4}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 843
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 844
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "name = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 846
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "namePresentation = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 848
    .local v10, uusInfoPresent:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "uusInfoPresent = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v12, 0x1

    if-ne v10, v12, :cond_4

    .line 851
    new-instance v12, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v12}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 852
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 853
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 854
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 855
    .local v9, userData:[B
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12, v9}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 856
    const-string v12, "RILJ"

    const-string v13, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incoming UUS : data (string)="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v15}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incoming UUS : data (hex): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v14}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    .end local v9           #userData:[B
    :goto_5
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v13, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v12, v13}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 871
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    iget-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v12, :cond_5

    .line 874
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 875
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is enabled"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 824
    .end local v4           #np:I
    .end local v10           #uusInfoPresent:I
    .end local v11           #voiceSettings:I
    :cond_0
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 826
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 831
    .restart local v11       #voiceSettings:I
    :cond_2
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 833
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 865
    .restart local v4       #np:I
    .restart local v10       #uusInfoPresent:I
    :cond_4
    const-string v12, "RILJ"

    const-string v13, "Incoming UUS : NOT present!"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 877
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/Smdk4210RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 878
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is disabled"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 882
    .end local v2           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v4           #np:I
    .end local v10           #uusInfoPresent:I
    .end local v11           #voiceSettings:I
    :cond_6
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 884
    return-object v7
.end method

.method protected responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 889
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 891
    .local v0, response:[I
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 895
    aget v1, v0, v3

    iput v1, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mPreferredNetworkType:I

    .line 899
    :cond_0
    aget v1, v0, v3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 900
    const-string v1, "RILJ"

    const-string v2, "Overriding network type response from GLOBAL to WCDMA preferred"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    aput v3, v0, v3

    .line 904
    :cond_1
    return-object v0
.end method

.method protected responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8
    .parameter "p"

    .prologue
    .line 910
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Smdk4210RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 913
    .local v2, strings:[Ljava/lang/String;
    array-length v3, v2

    rem-int/lit8 v3, v3, 0x5

    if-eqz v3, :cond_0

    .line 914
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL_REQUEST_QUERY_AVAILABLE_NETWORKS: invalid response. Got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " strings, expected multible of 5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 919
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v2

    div-int/lit8 v3, v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 921
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 922
    new-instance v3, Lcom/android/internal/telephony/OperatorInfo;

    add-int/lit8 v4, v0, 0x0

    aget-object v4, v2, v4

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v2, v5

    add-int/lit8 v6, v0, 0x2

    aget-object v6, v2, v6

    add-int/lit8 v7, v0, 0x3

    aget-object v7, v2, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 930
    :cond_1
    return-object v1
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11
    .parameter "p"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, -0x1

    .line 936
    const/16 v1, 0xc

    .line 940
    .local v1, numInts:I
    new-array v2, v1, [I

    .line 941
    .local v2, response:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 942
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 941
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 946
    :cond_0
    const/4 v0, 0x7

    :goto_1
    if-ge v0, v1, :cond_1

    .line 947
    aput v4, v2, v0

    .line 946
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 952
    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    aget v5, v2, v5

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x8

    mul-int/lit8 v5, v5, 0x3

    aput v5, v2, v3

    .line 953
    const/4 v3, 0x1

    aput v4, v2, v3

    .line 954
    aget v3, v2, v7

    if-gez v3, :cond_4

    const/16 v3, -0x78

    :goto_2
    aput v3, v2, v7

    .line 955
    aget v3, v2, v8

    if-gez v3, :cond_5

    const/16 v3, -0xa0

    :goto_3
    aput v3, v2, v8

    .line 956
    aget v3, v2, v9

    if-gez v3, :cond_6

    const/16 v3, -0x78

    :goto_4
    aput v3, v2, v9

    .line 957
    aget v3, v2, v10

    if-gez v3, :cond_7

    move v3, v4

    :goto_5
    aput v3, v2, v10

    .line 958
    const/4 v3, 0x6

    aget v3, v2, v3

    if-ltz v3, :cond_2

    const/4 v3, 0x6

    aget v3, v2, v3

    const/16 v5, 0x8

    if-le v3, v5, :cond_3

    .line 959
    :cond_2
    const/4 v3, 0x6

    aput v4, v2, v3

    .line 962
    :cond_3
    return-object v2

    .line 954
    :cond_4
    aget v3, v2, v7

    neg-int v3, v3

    goto :goto_2

    .line 955
    :cond_5
    aget v3, v2, v8

    neg-int v3, v3

    goto :goto_3

    .line 956
    :cond_6
    aget v3, v2, v9

    neg-int v3, v3

    goto :goto_4

    .line 957
    :cond_7
    aget v3, v2, v10

    neg-int v3, v3

    goto :goto_5
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "setCurrentPreferredNetworkType IGNORED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Smdk4210RIL;->riljLog(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 4
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 95
    iget-object v2, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 98
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    new-instance v1, Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/Smdk4210RIL;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;-><init>(Lcom/android/internal/telephony/Smdk4210RIL;Landroid/content/Context;)V

    .line 101
    .local v1, handler:Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;->setPreferedNetworkType(ILandroid/os/Message;)V

    .line 105
    .end local v1           #handler:Lcom/android/internal/telephony/Smdk4210RIL$ConnectivityHandler;
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/Smdk4210RIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    goto :goto_0
.end method
