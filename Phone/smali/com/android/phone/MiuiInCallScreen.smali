.class public Lcom/android/phone/MiuiInCallScreen;
.super Lcom/android/phone/InCallScreen;
.source "MiuiInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiInCallScreen$Handler;
    }
.end annotation


# static fields
.field private static final mDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private mCallRecorder:Landroid/media/MediaRecorder;

.field private mCurrentRecordFileName:Ljava/lang/String;

.field private mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/MiuiInCallScreen;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 78
    new-instance v0, Lcom/android/phone/MiuiInCallScreen$Handler;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiInCallScreen$Handler;-><init>(Lcom/android/phone/MiuiInCallScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mHandler:Landroid/os/Handler;

    .line 79
    sget-object v0, Lcom/android/phone/MiuiInCallScreen;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->startCallRecord()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiInCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiInCallScreen;->stopCallRecord(I)V

    return-void
.end method

.method public static getCallEndedDisplayDelay(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection$DisconnectCause;)I
    .locals 3
    .parameter "incallScreen"
    .parameter "cause"

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v1, :cond_1

    const/16 v0, 0x14

    .line 165
    .local v0, delay:I
    :cond_0
    :goto_0
    return v0

    .line 156
    .end local v0           #delay:I
    :cond_1
    const/16 v0, 0xc8

    goto :goto_0

    .line 159
    :cond_2
    const/16 v0, 0xc8

    .line 160
    .restart local v0       #delay:I
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->getNetworkType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const/16 v0, 0xfa0

    :goto_1
    goto :goto_0

    :cond_3
    const/16 v0, 0x7d0

    goto :goto_1
.end method

.method private onContactClick()V
    .locals 2

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 298
    return-void
.end method

.method private onNoteClick()V
    .locals 8

    .prologue
    .line 263
    iget-object v6, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 264
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v6, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v7, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v7, v0}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, number:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 276
    const-string v6, "number is null when record through note"

    invoke-virtual {p0, v6}, Lcom/android/phone/MiuiInCallScreen;->log(Ljava/lang/String;)V

    .line 279
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    .line 281
    .local v1, date:J
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v5, sendIntent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 283
    const-string v6, "vnd.android.cursor.item/call_note"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v6, "android.intent.extra.PHONE_NUMBER"

    if-nez v4, :cond_2

    const-string v4, ""

    .end local v4           #number:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v6, "com.miui.notes.call_date"

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 287
    iget-object v6, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    check-cast v6, Lcom/android/phone/MiuiPhoneApp;

    invoke-virtual {v6, v5}, Lcom/android/phone/MiuiPhoneApp;->setIntentAfterCall(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    .end local v5           #sendIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 289
    .local v3, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "MiuiInCallScreen"

    const-string v7, "Note activity not found "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startCallRecord()V
    .locals 15

    .prologue
    const/4 v12, -0x1

    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 301
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallRecording()Z

    move-result v10

    if-nez v10, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    if-nez v10, :cond_2

    .line 306
    new-instance v10, Lcom/android/phone/MiuiStorageMonitor;

    iget-object v11, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/phone/MiuiStorageMonitor;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    .line 309
    :cond_2
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    new-instance v11, Lcom/android/phone/MiuiInCallScreen$1;

    invoke-direct {v11, p0}, Lcom/android/phone/MiuiInCallScreen$1;-><init>(Lcom/android/phone/MiuiInCallScreen;)V

    invoke-virtual {v10, v11}, Lcom/android/phone/MiuiStorageMonitor;->startMonitor(Lcom/android/phone/MiuiStorageMonitor$Listener;)I

    move-result v3

    .line 316
    .local v3, error:I
    if-eqz v3, :cond_6

    .line 317
    if-ne v3, v13, :cond_3

    .line 318
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v10}, Lcom/android/phone/MiuiStorageMonitor;->isUsingExternalStorage()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 319
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0c02ba

    invoke-static {v10, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 326
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v10, :cond_4

    .line 327
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v10, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v10}, Lcom/android/phone/MiuiInCallTouchUi;->onStopCallRecord()V

    .line 329
    :cond_4
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v10}, Lcom/android/phone/MiuiStorageMonitor;->stopMonitor()V

    goto :goto_0

    .line 321
    :cond_5
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x30c003a

    invoke-static {v10, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 333
    :cond_6
    new-instance v9, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v10}, Lcom/android/phone/MiuiStorageMonitor;->isUsingExternalStorage()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {}, Lmiui/os/Environment;->getMIUIExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/sound_recorder/call_rec"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .local v9, sampleDir:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_9

    .line 338
    const/16 v10, 0x1ff

    invoke-static {v9, v10, v12, v12}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v10

    if-nez v10, :cond_9

    .line 339
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0c02b9

    invoke-static {v10, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 341
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v10, :cond_7

    .line 342
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v10, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v10}, Lcom/android/phone/MiuiInCallTouchUi;->onStopCallRecord()V

    .line 344
    :cond_7
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v10}, Lcom/android/phone/MiuiStorageMonitor;->stopMonitor()V

    goto/16 :goto_0

    .line 333
    .end local v9           #sampleDir:Ljava/io/File;
    :cond_8
    invoke-static {}, Lmiui/os/Environment;->getMIUIInternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 349
    .restart local v9       #sampleDir:Ljava/io/File;
    :cond_9
    const-string v10, "start CallRecord!"

    invoke-virtual {p0, v10}, Lcom/android/phone/MiuiInCallScreen;->log(Ljava/lang/String;)V

    .line 350
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-nez v10, :cond_a

    .line 351
    new-instance v10, Landroid/media/MediaRecorder;

    invoke-direct {v10}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 353
    :cond_a
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10}, Landroid/media/MediaRecorder;->reset()V

    .line 354
    sget-boolean v10, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v10, :cond_e

    .line 355
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 359
    :goto_3
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 360
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10, v13}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 362
    :try_start_0
    sget-object v10, Lcom/android/phone/MiuiInCallScreen;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, date:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v4, fileNameBuilder:Ljava/lang/StringBuilder;
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0c02b8

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const/16 v10, 0x5f

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    const/4 v5, 0x1

    .line 368
    .local v5, firstNumber:Z
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 369
    .local v0, c:Lcom/android/internal/telephony/Connection;
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v7

    .line 370
    .local v7, number:Ljava/lang/String;
    if-nez v5, :cond_b

    .line 371
    const/16 v10, 0x5f

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    :cond_b
    const/4 v5, 0x0

    .line 374
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 398
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #date:Ljava/lang/String;
    .end local v4           #fileNameBuilder:Ljava/lang/StringBuilder;
    .end local v5           #firstNumber:Z
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #number:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 399
    .local v2, e:Ljava/lang/Exception;
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10}, Landroid/media/MediaRecorder;->reset()V

    .line 400
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10}, Landroid/media/MediaRecorder;->release()V

    .line 401
    iput-object v14, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 402
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v10, :cond_c

    .line 403
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v10, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v10}, Lcom/android/phone/MiuiInCallTouchUi;->onStopCallRecord()V

    .line 405
    :cond_c
    iput-object v14, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    .line 406
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v10}, Lcom/android/phone/MiuiStorageMonitor;->stopMonitor()V

    .line 409
    .end local v2           #e:Ljava/lang/Exception;
    :cond_d
    :goto_5
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v10}, Lcom/android/phone/MiuiStorageMonitor;->isUsingExternalStorage()Z

    move-result v10

    if-nez v10, :cond_0

    .line 410
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x30c0039

    invoke-static {v10, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 357
    :cond_e
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10, v13}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    goto/16 :goto_3

    .line 376
    .restart local v1       #date:Ljava/lang/String;
    .restart local v4       #fileNameBuilder:Ljava/lang/StringBuilder;
    .restart local v5       #firstNumber:Z
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_f
    :try_start_1
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 377
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v7

    .line 378
    .restart local v7       #number:Ljava/lang/String;
    if-nez v5, :cond_10

    .line 379
    const/16 v10, 0x5f

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    :cond_10
    const/4 v5, 0x0

    .line 382
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 384
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v7           #number:Ljava/lang/String;
    :cond_11
    const-string v10, ".amr"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    new-instance v8, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2c

    const/16 v12, 0x70

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    const-string v11, "+"

    const-string v12, "00"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2a

    const/16 v12, 0x73

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 388
    .local v8, recordFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    .line 389
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    iget-object v11, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 390
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10}, Landroid/media/MediaRecorder;->prepare()V

    .line 391
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10}, Landroid/media/MediaRecorder;->start()V

    .line 392
    const-string v10, "CallRecord is started!"

    invoke-virtual {p0, v10}, Lcom/android/phone/MiuiInCallScreen;->log(Ljava/lang/String;)V

    .line 393
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v10, :cond_d

    .line 394
    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v10, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v10}, Lcom/android/phone/MiuiInCallTouchUi;->onStartCallRecord()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method private stopCallRecord()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->stopCallRecord(I)V

    .line 418
    return-void
.end method

.method private stopCallRecord(I)V
    .locals 10
    .parameter "errorCode"

    .prologue
    const/16 v9, 0x1ff

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 421
    const-string v0, "stop CallRecord!"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->log(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_5

    .line 423
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v0}, Lcom/android/phone/MiuiStorageMonitor;->stopMonitor()V

    .line 424
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 425
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 426
    iput-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 427
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->onStopCallRecord()V

    .line 432
    :cond_0
    if-nez p1, :cond_3

    .line 433
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "button_call_recording_notification"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MiuiNotificationMgr;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c02b4

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/phone/MiuiNotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-static {v0, v9, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 450
    :cond_2
    :goto_0
    iput-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    .line 454
    :goto_1
    return-void

    .line 440
    :cond_3
    if-ne p1, v5, :cond_4

    .line 441
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MiuiNotificationMgr;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c02b3

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/phone/MiuiNotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-static {v0, v9, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0

    .line 445
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MiuiNotificationMgr;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c02b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1, v8}, Lcom/android/phone/MiuiNotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_5
    const-string v0, "CallRecord is stopped already!"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected createDialer()Lcom/android/phone/DTMFTwelveKeyDialer;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    return-object v0
.end method

.method protected createInCallControlState()Lcom/android/phone/InCallControlState;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/android/phone/MiuiInCallControlState;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiInCallControlState;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    return-object v0
.end method

.method protected createManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/android/phone/MiuiManageConferenceUtils;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiManageConferenceUtils;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    return-object v0
.end method

.method protected createRespondViaSmsManager()Lcom/android/phone/RespondViaSmsManager;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/android/phone/MiuiRespondViaSmsManager;

    invoke-direct {v0}, Lcom/android/phone/MiuiRespondViaSmsManager;-><init>()V

    return-object v0
.end method

.method protected delayedCleanupAfterDisconnect()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    .line 201
    invoke-static {}, Lcom/android/phone/MiuiExtraConnectionData;->clearDisconnected()V

    .line 202
    return-void
.end method

.method protected endInCallScreenSession(Z)V
    .locals 1
    .parameter "forceFinish"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->dismissAllDialogs()V

    .line 133
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-super {p0, p1}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f04001c

    return v0
.end method

.method handleOnscreenButtonClick(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 223
    packed-switch p1, :pswitch_data_0

    .line 249
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 251
    :goto_0
    return-void

    .line 225
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->onNoteClick()V

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->startCallRecord()V

    goto :goto_0

    .line 231
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->stopCallRecord()V

    goto :goto_0

    .line 234
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->onContactClick()V

    goto :goto_0

    .line 237
    :pswitch_5
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 240
    :pswitch_6
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 243
    :pswitch_7
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 246
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->toggleSpeaker()V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700b1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 2
    .parameter "r"
    .parameter "ch"

    .prologue
    .line 170
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 171
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    check-cast v1, Lcom/android/phone/MiuiCallCard;

    invoke-virtual {v1, v0}, Lcom/android/phone/MiuiCallCard;->updateForPostDialCharProcessed(Lcom/android/internal/telephony/Connection;)V

    .line 174
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    .line 175
    return-void
.end method

.method protected hideDialpadInternal(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->showDialerPanel(Z)V

    .line 212
    return-void
.end method

.method isCallRecording()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->isDialerPanelOpened()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->isToolsPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->showToolsPanel(Z)V

    .line 151
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->isAudioModePanelOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-super {p0}, Lcom/android/phone/InCallScreen;->onBackPressed()V

    goto :goto_0
.end method

.method onBluetoothAvailabilityChanged()V
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup()V

    .line 459
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->updateInCallTouchUi()V

    .line 461
    :cond_0
    return-void
.end method

.method protected onDisconnect(Landroid/os/AsyncResult;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->stopCallRecord()V

    .line 195
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    .line 196
    return-void
.end method

.method onHeadsetAvailabilityChanged()V
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup()V

    .line 466
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->updateInCallTouchUi()V

    .line 468
    :cond_0
    return-void
.end method

.method protected onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 179
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "button_auto_record_call"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->isCallRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 186
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 187
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/phone/InCallScreen;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    check-cast v0, Lcom/android/phone/MiuiCallCard;

    invoke-virtual {v0}, Lcom/android/phone/MiuiCallCard;->updateLockScreenWallpaper()V

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ENTER_INCALL_SCREEN_DURING_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MiuiInCallScreen;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 125
    :cond_0
    invoke-super {p0}, Lcom/android/phone/InCallScreen;->onStop()V

    .line 126
    return-void
.end method

.method protected showDialpadInternal(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->showDialerPanel(Z)V

    .line 207
    return-void
.end method

.method protected updateDialpadVisibility()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->hideDialpadInternal(Z)V

    .line 219
    :cond_0
    return-void
.end method
