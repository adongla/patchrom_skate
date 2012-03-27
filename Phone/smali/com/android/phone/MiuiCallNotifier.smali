.class public Lcom/android/phone/MiuiCallNotifier;
.super Lcom/android/phone/CallNotifier;
.source "MiuiCallNotifier.java"


# instance fields
.field private mHandonRingerEnable:Z

.field private mHandonTriggered:Z

.field private mHandonTriggeringCount:I

.field private mIsRedialCall:Z

.field private mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

.field private mRedialTimes:I

.field private mRingerSetFlags:I

.field private mRingerVolume:I

.field private mRingerVolumeControlling:Z

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorCount:I

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRunning:Z

.field private mStartZ:F

.field private mTurnoverMuteEnable:Z

.field private mTurnoverTiggeringCount:I

.field private mTurnoverTriggered:Z

.field private final mVibrator:Landroid/os/Vibrator;

.field private queryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# direct methods
.method protected constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V
    .locals 2
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    .line 44
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 45
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    .line 52
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    .line 53
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    .line 58
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerSetFlags:I

    .line 59
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    .line 61
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    .line 62
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    .line 63
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    .line 65
    new-instance v0, Lcom/android/phone/MiuiCallNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiCallNotifier$1;-><init>(Lcom/android/phone/MiuiCallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 610
    new-instance v0, Lcom/android/phone/MiuiCallNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiCallNotifier$2;-><init>(Lcom/android/phone/MiuiCallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->queryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 143
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mVibrator:Landroid/os/Vibrator;

    .line 144
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    .line 145
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensor:Landroid/hardware/Sensor;

    .line 146
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    .line 147
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    return v0
.end method

.method static synthetic access$004(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiCallNotifier;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mStartZ:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/MiuiCallNotifier;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/phone/MiuiCallNotifier;->mStartZ:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverMuteEnable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/MiuiCallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/phone/MiuiCallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    return p1
.end method

.method static synthetic access$404(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonRingerEnable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/MiuiCallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/phone/MiuiCallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    return p1
.end method

.method static synthetic access$704(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/MiuiCallNotifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->decrescendoRingerVolume()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/MiuiCallNotifier;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallNotifier;->processTelephonyFirewall(Lcom/android/internal/telephony/CallerInfo;)V

    return-void
.end method

.method private static addFirewallLog(Ljava/lang/String;IJIJ)V
    .locals 4
    .parameter "number"
    .parameter "presentation"
    .parameter "date"
    .parameter "reason"
    .parameter "duration"

    .prologue
    .line 673
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 674
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "number"

    invoke-static {p1, p0}, Lcom/android/phone/MiuiCallNotifier;->convertPresentationToFilterNumber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v2, "date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 676
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 677
    const-string v2, "reason"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    const-string v2, "data1"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 680
    :try_start_0
    sget-object v2, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v2, v2, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "MiuiCallNotifier"

    const-string v3, "failed to add firewall log"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static convertPresentationToFilterNumber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "presentation"
    .parameter "logNumber"

    .prologue
    .line 689
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p0, v0, :cond_1

    .line 690
    const-string p1, "-2"

    .line 697
    :cond_0
    :goto_0
    return-object p1

    .line 691
    :cond_1
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p0, v0, :cond_2

    .line 692
    const-string p1, "-3"

    goto :goto_0

    .line 693
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne p0, v0, :cond_0

    .line 695
    :cond_3
    const-string p1, "-1"

    goto :goto_0
.end method

.method private crescendoRingerVolumeDelayed()V
    .locals 7

    .prologue
    const/16 v6, 0x191

    const/4 v5, 0x2

    .line 710
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 731
    :cond_0
    return-void

    .line 715
    :cond_1
    iget-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    if-nez v4, :cond_2

    .line 716
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    .line 717
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 721
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 724
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 725
    .local v1, maxVolume:I
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .local v3, volume:I
    const/16 v0, 0x7530

    .line 726
    .local v0, delayTime:I
    :goto_0
    if-gt v3, v1, :cond_0

    .line 727
    invoke-static {p0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 728
    .local v2, message:Landroid/os/Message;
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 729
    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/phone/MiuiCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 726
    add-int/lit8 v3, v3, 0x1

    add-int/lit16 v0, v0, 0x1388

    goto :goto_0
.end method

.method private decrescendoRingerVolume()V
    .locals 6

    .prologue
    const/16 v5, 0x191

    const/4 v4, 0x2

    .line 734
    iget-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    if-nez v3, :cond_0

    .line 735
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    .line 736
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 740
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 742
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, volume:I
    const/4 v0, 0x0

    .line 743
    .local v0, delayTime:I
    :goto_0
    if-ltz v2, :cond_1

    iget v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    add-int/lit8 v3, v3, -0x3

    if-lt v2, v3, :cond_1

    .line 744
    invoke-static {p0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 745
    .local v1, message:Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 746
    int-to-long v3, v0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/phone/MiuiCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 743
    add-int/lit8 v2, v2, -0x1

    add-int/lit16 v0, v0, 0x1f4

    goto :goto_0

    .line 748
    .end local v1           #message:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method static init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    const-class v6, Lcom/android/phone/CallNotifier;

    monitor-enter v6

    .line 115
    :try_start_0
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/android/phone/MiuiCallNotifier;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/MiuiCallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    sput-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 120
    :goto_0
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    monitor-exit v6

    return-object v0

    .line 118
    :cond_0
    const-string v0, "MiuiCallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isSkippingCallLog(I)Z
    .locals 2
    .parameter "firewallCode"

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, skipping:Z
    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/16 v1, 0x101

    if-eq p0, v1, :cond_0

    const/16 v1, 0x102

    if-ne p0, v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v1, v1, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lmiui/provider/ExtraTelephony;->isSkipInCallLogForFirewall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    :cond_1
    const/4 v0, 0x1

    .line 504
    :cond_2
    return v0
.end method

.method static logCall(Lcom/android/internal/telephony/Connection;)V
    .locals 26
    .parameter "c"

    .prologue
    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v20

    .line 425
    .local v20, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    .line 426
    .local v24, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Lmiui/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v21

    .line 428
    .local v21, isEmergencyNumber:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    .line 429
    .local v3, date:J
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v10

    .line 430
    .local v10, ci:Lcom/android/internal/telephony/CallerInfo;
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v10}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v11

    .line 432
    .local v11, logNumber:Ljava/lang/String;
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v10}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v2

    .line 438
    .local v2, presentation:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 439
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v9, :cond_2

    .line 440
    const/4 v13, 0x3

    .line 441
    .local v13, callLogType:I
    invoke-static/range {p0 .. p0}, Lcom/android/phone/MiuiExtraConnectionData;->getRingDurationMillis(Lcom/android/internal/telephony/Connection;)J

    move-result-wide v6

    .line 447
    .local v6, duration:J
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/phone/MiuiExtraConnectionData;->getFirewallCode(Lcom/android/internal/telephony/Connection;)I

    move-result v5

    .line 448
    .local v5, firewallCode:I
    const/4 v9, 0x2

    if-eq v5, v9, :cond_0

    const/16 v9, 0x102

    if-ne v5, v9, :cond_3

    .line 450
    :cond_0
    const/16 v18, 0x2

    .line 459
    .local v18, firewallType:I
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/android/phone/MiuiExtraConnectionData;->isForwarded(Lcom/android/internal/telephony/Connection;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v19, 0x1

    .line 461
    .local v19, forwardedCall:I
    :goto_2
    if-eqz v5, :cond_7

    .line 462
    invoke-static {v5}, Lcom/android/phone/MiuiCallNotifier;->isSkippingCallLog(I)Z

    move-result v25

    .line 464
    .local v25, skipCallLog:Z
    invoke-static/range {v1 .. v7}, Lcom/android/phone/MiuiCallNotifier;->addFirewallLog(Ljava/lang/String;IJIJ)V

    .line 477
    .end local v5           #firewallCode:I
    :goto_3
    invoke-static/range {v24 .. v24}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v22, 0x1

    .line 481
    .local v22, isOtaspNumber:Z
    :goto_4
    if-nez v22, :cond_a

    if-nez v25, :cond_a

    const/16 v23, 0x1

    .line 485
    .local v23, okToLogThisCall:Z
    :goto_5
    if-eqz v23, :cond_1

    .line 486
    new-instance v8, Lcom/android/phone/CallLogAsync$AddCallArgs;

    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v9, v9, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move v12, v2

    move-wide v14, v3

    move-wide/from16 v16, v6

    invoke-direct/range {v8 .. v19}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V

    .line 490
    .local v8, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v9, v9, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v9, v8}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 492
    .end local v8           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :cond_1
    return-void

    .line 443
    .end local v6           #duration:J
    .end local v13           #callLogType:I
    .end local v18           #firewallType:I
    .end local v19           #forwardedCall:I
    .end local v22           #isOtaspNumber:Z
    .end local v23           #okToLogThisCall:Z
    .end local v25           #skipCallLog:Z
    :cond_2
    const/4 v13, 0x1

    .line 444
    .restart local v13       #callLogType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .restart local v6       #duration:J
    goto :goto_0

    .line 451
    .restart local v5       #firewallCode:I
    :cond_3
    const/4 v9, 0x1

    if-eq v5, v9, :cond_4

    const/16 v9, 0x101

    if-eq v5, v9, :cond_4

    const/4 v9, 0x7

    if-ne v5, v9, :cond_5

    .line 454
    :cond_4
    const/16 v18, 0x1

    .restart local v18       #firewallType:I
    goto :goto_1

    .line 456
    .end local v18           #firewallType:I
    :cond_5
    const/16 v18, 0x0

    .restart local v18       #firewallType:I
    goto :goto_1

    .line 459
    :cond_6
    const/16 v19, 0x0

    goto :goto_2

    .line 466
    .restart local v19       #forwardedCall:I
    :cond_7
    const/16 v25, 0x0

    .restart local v25       #skipCallLog:Z
    goto :goto_3

    .line 469
    .end local v5           #firewallCode:I
    .end local v6           #duration:J
    .end local v13           #callLogType:I
    .end local v18           #firewallType:I
    .end local v19           #forwardedCall:I
    .end local v25           #skipCallLog:Z
    :cond_8
    const/4 v13, 0x2

    .line 470
    .restart local v13       #callLogType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .line 471
    .restart local v6       #duration:J
    const/16 v18, 0x0

    .line 472
    .restart local v18       #firewallType:I
    const/16 v19, 0x0

    .line 473
    .restart local v19       #forwardedCall:I
    const/16 v25, 0x0

    .restart local v25       #skipCallLog:Z
    goto :goto_3

    .line 477
    :cond_9
    const/16 v22, 0x0

    goto :goto_4

    .line 481
    .restart local v22       #isOtaspNumber:Z
    :cond_a
    const/16 v23, 0x0

    goto :goto_5
.end method

.method public static onNewPhoneRegisterToCallManager(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 129
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    const/16 v1, 0x192

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 130
    return-void
.end method

.method public static onPhoneUnregisterToCallManager(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 137
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 138
    return-void
.end method

.method private onSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 653
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 658
    .local v1, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    if-eqz v1, :cond_0

    .line 659
    iget v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-nez v2, :cond_2

    .line 661
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 662
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 663
    invoke-static {v0, v1}, Lcom/android/phone/MiuiExtraConnectionData;->setSuppServiceNotification(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    goto :goto_0

    .line 667
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_2
    invoke-static {v1}, Lcom/android/phone/MiuiExtraConnectionData;->setIncomingCallSuppServiceNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    goto :goto_0
.end method

.method private processTelephonyFirewall(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .parameter "ci"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 560
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 561
    .local v2, c:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_0

    .line 562
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 565
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiCallNotifier;->getTelephonyFirewallBlockType(Lcom/android/internal/telephony/CallerInfo;)I

    move-result v4

    .line 566
    .local v4, ret:I
    if-ne v4, v6, :cond_4

    .line 568
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v5}, Lmiui/provider/ExtraTelephony;->getCallAct(Landroid/content/Context;)I

    move-result v1

    .line 569
    .local v1, blacklist_act:I
    if-nez v1, :cond_3

    .line 570
    const-string v5, "Rejected incoming call for caller in blacklist"

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 571
    if-eqz v2, :cond_1

    .line 572
    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 574
    :cond_1
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 608
    .end local v1           #blacklist_act:I
    .end local v4           #ret:I
    :cond_2
    :goto_0
    return-void

    .line 576
    .restart local v1       #blacklist_act:I
    .restart local v4       #ret:I
    :cond_3
    if-ne v1, v6, :cond_2

    .line 577
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 578
    const-string v5, "Muted incoming call for caller in blacklist"

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 579
    const/4 v5, 0x2

    invoke-static {v2, v5}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 580
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v5, Lcom/android/phone/MiuiRinger;

    invoke-virtual {v5}, Lcom/android/phone/MiuiRinger;->mute()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 605
    .end local v1           #blacklist_act:I
    .end local v4           #ret:I
    :catch_0
    move-exception v3

    .line 606
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v5, "MiuiCallNotifier"

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    .end local v3           #e:Ljava/lang/RuntimeException;
    .restart local v4       #ret:I
    :cond_4
    if-ne v4, v7, :cond_2

    .line 587
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v5}, Lmiui/provider/ExtraTelephony;->getCallAct(Landroid/content/Context;)I

    move-result v0

    .line 588
    .local v0, act:I
    if-nez v0, :cond_6

    .line 589
    const-string v5, "Rejected incoming call for caller not in whitelist"

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 590
    if-eqz v2, :cond_5

    .line 591
    const/16 v5, 0x101

    invoke-static {v2, v5}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 593
    :cond_5
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 595
    :cond_6
    if-ne v0, v6, :cond_2

    .line 596
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 597
    const-string v5, "Muted incoming call for caller not in whitelist"

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 598
    const/16 v5, 0x102

    invoke-static {v2, v5}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 599
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v5, Lcom/android/phone/MiuiRinger;

    invoke-virtual {v5}, Lcom/android/phone/MiuiRinger;->mute()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private resetRingerVolume()V
    .locals 4

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    if-eqz v0, :cond_0

    .line 703
    const/16 v0, 0x191

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 704
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    iget v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerSetFlags:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 707
    :cond_0
    return-void
.end method

.method private startAutoAnswer()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 751
    iget-object v11, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 752
    .local v4, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 753
    .local v2, bgCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 756
    .local v7, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v11

    if-nez v11, :cond_3

    .line 789
    :cond_2
    :goto_0
    return-void

    .line 763
    :cond_3
    iget-object v11, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 764
    .local v6, pref:Landroid/content/SharedPreferences;
    const-string v11, "button_auto_answer"

    invoke-interface {v6, v11, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 765
    const-string v11, "button_auto_answer_scenario"

    invoke-interface {v6, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 766
    .local v8, scenario:I
    const/4 v1, 0x0

    .line 767
    .local v1, autoAnswer:Z
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    check-cast v0, Lcom/android/phone/MiuiPhoneApp;

    .line 768
    .local v0, app:Lcom/android/phone/MiuiPhoneApp;
    packed-switch v8, :pswitch_data_0

    .line 779
    const/4 v1, 0x1

    .line 782
    :goto_1
    if-eqz v1, :cond_2

    .line 783
    const-string v9, "button_auto_answer_delay"

    const-string v10, "3"

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 784
    .local v3, delay:I
    const/16 v9, 0x194

    invoke-static {p0, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 785
    .local v5, msg:Landroid/os/Message;
    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 786
    mul-int/lit16 v9, v3, 0x3e8

    int-to-long v9, v9

    invoke-virtual {p0, v5, v9, v10}, Lcom/android/phone/MiuiCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 770
    .end local v3           #delay:I
    .end local v5           #msg:Landroid/os/Message;
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isBluetoothAvailable()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v11

    if-nez v11, :cond_4

    move v1, v9

    .line 771
    :goto_2
    goto :goto_1

    :cond_4
    move v1, v10

    .line 770
    goto :goto_2

    .line 773
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isBluetoothAvailable()Z

    move-result v11

    if-nez v11, :cond_5

    move v1, v9

    .line 774
    :goto_3
    goto :goto_1

    :cond_5
    move v1, v10

    .line 773
    goto :goto_3

    .line 776
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isBluetoothAvailable()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    move v1, v9

    .line 777
    :goto_4
    goto :goto_1

    :cond_7
    move v1, v10

    .line 776
    goto :goto_4

    .line 768
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startSensor()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 805
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 806
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "button_turnover_mute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverMuteEnable:Z

    .line 807
    const-string v1, "button_handon_ringer"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonRingerEnable:Z

    .line 808
    iget-boolean v1, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverMuteEnable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonRingerEnable:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    if-nez v1, :cond_1

    .line 810
    iput-boolean v2, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    .line 811
    iput-boolean v2, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    .line 812
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 813
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    .line 815
    :cond_1
    return-void
.end method

.method private stopSensor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 792
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 795
    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    .line 796
    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    .line 797
    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    .line 798
    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    .line 799
    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    .line 800
    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    .line 802
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .parameter "conn"

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 547
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 548
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 552
    .end local v1           #o:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0

    .line 549
    .restart local v1       #o:Ljava/lang/Object;
    :cond_2
    instance-of v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_1

    .line 550
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1           #o:Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method protected getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 2
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 533
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    :cond_0
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getOrigDialAddress(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, logNumber:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 538
    .end local v0           #logNumber:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #logNumber:Ljava/lang/String;
    goto :goto_0
.end method

.method getRedialTimes()I
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getTelephonyFirewallBlockType(Lcom/android/internal/telephony/CallerInfo;)I
    .locals 3
    .parameter "ci"

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lmiui/provider/ExtraTelephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 152
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 177
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->handleMessage(Landroid/os/Message;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerSetFlags:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/phone/MiuiCallNotifier;->onSuppServiceNotification(Landroid/os/AsyncResult;)V

    .line 159
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallNotifier;->resetAudioStateAfterDisconnect()V

    goto :goto_0

    .line 169
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 170
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-ne v1, v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDisconnect(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "r"

    .prologue
    const/4 v11, 0x0

    .line 337
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSensor()V

    .line 338
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->resetRingerVolume()V

    .line 340
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 341
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_6

    .line 342
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 343
    .local v2, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v8, :cond_2

    .line 344
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 345
    .local v1, call:Lcom/android/internal/telephony/Call;
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    if-ne v1, v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    if-ne v1, v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_2

    .line 348
    :cond_1
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "button_connect_disconnect_vibrate"

    const-string v10, "100"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 352
    .local v7, vibrateDuration:I
    if-lez v7, :cond_2

    .line 353
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mVibrator:Landroid/os/Vibrator;

    int-to-long v9, v7

    invoke-virtual {v8, v9, v10}, Landroid/os/Vibrator;->vibrate(J)V

    .line 358
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v7           #vibrateDuration:I
    :cond_2
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v8, :cond_3

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v8, :cond_4

    .line 360
    :cond_3
    iput-boolean v11, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 363
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Lmiui/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    .line 365
    .local v3, isEmergencyNumber:Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 366
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v8

    if-eqz v8, :cond_a

    if-nez v3, :cond_a

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v8, :cond_a

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v8, :cond_a

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v8, :cond_a

    .line 371
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 372
    .local v6, pref:Landroid/content/SharedPreferences;
    const-string v8, "button_auto_redial"

    invoke-interface {v6, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 373
    iget-boolean v8, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    if-nez v8, :cond_5

    .line 374
    iput v11, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    .line 375
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 377
    :cond_5
    iget v8, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    const/16 v9, 0xa

    if-ge v8, v9, :cond_8

    .line 378
    iget v8, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    .line 379
    invoke-static {v5, v4, v0}, Lcom/android/phone/MiuiPhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Connection;)I

    .line 391
    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v3           #isEmergencyNumber:Z
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #phone:Lcom/android/internal/telephony/Phone;
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    .line 393
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v9, :cond_7

    .line 394
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 395
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 397
    :cond_7
    return-void

    .line 381
    .restart local v2       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v3       #isEmergencyNumber:Z
    .restart local v4       #number:Ljava/lang/String;
    .restart local v5       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v6       #pref:Landroid/content/SharedPreferences;
    :cond_8
    iput-boolean v11, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    goto :goto_0

    .line 384
    :cond_9
    iput-boolean v11, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    goto :goto_0

    .line 387
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :cond_a
    iput-boolean v11, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    goto :goto_0
.end method

.method protected onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "r"

    .prologue
    const/4 v9, 0x0

    .line 184
    iput-boolean v9, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 186
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 187
    .local v0, c:Lcom/android/internal/telephony/Connection;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNewRingingConnection(): state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", conn = { "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " }"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 188
    if-nez v0, :cond_1

    .line 189
    const-string v7, "MiuiCallNotifier"

    const-string v8, "CallNotifier.onNewRingingConnection(): null connection!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->onIncomingCall(Lcom/android/internal/telephony/Connection;)V

    .line 196
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 197
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 200
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 205
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v7

    if-nez v7, :cond_3

    .line 210
    const-string v7, "MiuiCallNotifier"

    const-string v8, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_3
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v7}, Lmiui/provider/ExtraTelephony;->isAntiPrivateEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 221
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, number:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 223
    .local v4, presentation:I
    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v4, v7, :cond_4

    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v4, v7, :cond_4

    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-eq v4, v7, :cond_4

    const-string v7, "-1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "-2"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "-3"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 229
    :cond_4
    const-string v7, "Rejected incoming call for caller is private number/unknown number"

    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 230
    if-eqz v0, :cond_5

    .line 231
    const/4 v7, 0x7

    invoke-static {v0, v7}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 233
    :cond_5
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 239
    .end local v2           #number:Ljava/lang/String;
    .end local v4           #presentation:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSignalInfoTone()V

    .line 241
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 243
    .local v6, state:Lcom/android/internal/telephony/Call$State;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- connection is ringing!  state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 272
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v8, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 276
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 278
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->crescendoRingerVolumeDelayed()V

    .line 279
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->startSensor()V

    .line 280
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->startAutoAnswer()V

    goto/16 :goto_0

    .line 283
    :cond_7
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->queryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v7, v0, v8, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v1

    .line 286
    .local v1, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v7, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v7, :cond_0

    .line 287
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->queryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget-object v8, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-interface {v7, v9, p0, v8}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    goto/16 :goto_0
.end method

.method protected onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "r"

    .prologue
    .line 306
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 307
    .local v1, foreCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 308
    .local v0, backCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v4, :cond_1

    .line 310
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "button_connect_disconnect_vibrate"

    const-string v6, "100"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 314
    .local v3, vibrateDuration:I
    if-lez v3, :cond_0

    .line 315
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mVibrator:Landroid/os/Vibrator;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 318
    :cond_0
    iget-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    if-eqz v4, :cond_1

    .line 319
    const/16 v2, 0xb

    .line 320
    .local v2, toneToPlay:I
    new-instance v4, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v4, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 321
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 324
    .end local v2           #toneToPlay:I
    .end local v3           #vibrateDuration:I
    :cond_1
    iput-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    .line 325
    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

    .line 327
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_2

    .line 328
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSensor()V

    .line 329
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->resetRingerVolume()V

    .line 332
    :cond_2
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 333
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 629
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 630
    invoke-virtual {p0, p3}, Lcom/android/phone/MiuiCallNotifier;->getTelephonyFirewallBlockType(Lcom/android/internal/telephony/CallerInfo;)I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->isSkippingCallLog(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    instance-of v1, p2, Lcom/android/phone/CallNotifier;

    if-eqz v1, :cond_0

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, isQueryExecutionTimeOK:Z
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 636
    const/16 v1, 0x64

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallNotifier;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 637
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 638
    const/4 v0, 0x1

    .line 640
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    if-eqz v0, :cond_3

    .line 642
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v1, Lcom/android/phone/MiuiRinger;

    invoke-virtual {v1}, Lcom/android/phone/MiuiRinger;->unMute()V

    .line 643
    invoke-direct {p0, p3}, Lcom/android/phone/MiuiCallNotifier;->processTelephonyFirewall(Lcom/android/internal/telephony/CallerInfo;)V

    .line 646
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v1, Lcom/android/phone/MiuiRinger;

    iget-boolean v2, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2}, Lmiui/provider/ExtraTelephony;->isAntiStrangerEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/phone/MiuiRinger;->setAntiStranger(Z)V

    .line 648
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    goto :goto_0

    .line 640
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 646
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected registerForNotifications()V
    .locals 4

    .prologue
    .line 517
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 518
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 519
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const/16 v2, 0x192

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 521
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method

.method protected resetAudioStateAfterDisconnect()V
    .locals 2

    .prologue
    .line 401
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    const/16 v0, 0x193

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 7
    .parameter "c"
    .parameter "date"

    .prologue
    .line 411
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getFirewallCode(Lcom/android/internal/telephony/Connection;)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/MiuiCallNotifier;->isSkippingCallLog(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiCallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v6

    .line 413
    .local v6, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v6}, Lcom/android/phone/MiuiPhoneUtils;->getDisplayName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0, p1, v6}, Lcom/android/phone/MiuiCallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v6, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 417
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_0
    return-void
.end method

.method silenceRinger()V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSensor()V

    .line 526
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 527
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->resetRingerVolume()V

    .line 528
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 3

    .prologue
    .line 509
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 510
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 511
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    goto :goto_0

    .line 513
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method
