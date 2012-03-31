.class public Lcom/android/phone/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$1;,
        Lcom/android/phone/NotificationMgr$QueryHandler;,
        Lcom/android/phone/NotificationMgr$StatusBarHelper;
    }
.end annotation


# static fields
.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field private static final DBG:Z

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field protected static sInstance:Lcom/android/phone/NotificationMgr;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field


# instance fields
.field protected mApp:Lcom/android/phone/PhoneApp;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field protected mCM:Lcom/android/internal/telephony/CallManager;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mInCallResId:I

.field protected mNotificationManager:Landroid/app/NotificationManager;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field protected mNumberMissedCalls:I
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

.field private mSelectedUnavailableNotify:Z

.field private mShowingMuteIcon:Z

.field private mShowingSpeakerphoneIcon:Z

.field protected mStatusBarManager:Landroid/app/StatusBarManager;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;

.field private mVmNumberRetriesRemaining:I

.field public statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    sput-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 296
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 2
    .parameter "app"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 117
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 122
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    .line 125
    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 135
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    .line 136
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    .line 137
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    .line 139
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 141
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 142
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 143
    new-instance v0, Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    .line 144
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    return-object v0
.end method

.method private cancelMute()V
    .locals 2

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 601
    :cond_0
    return-void
.end method

.method private cancelNetworkSelection()V
    .locals 2

    .prologue
    .line 1298
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelNetworkSelection()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1300
    return-void
.end method

.method private cancelSpeakerphone()V
    .locals 2

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 531
    :cond_0
    return-void
.end method

.method private createClearMissedCallsIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 502
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/ClearMissedCallsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    const-string v1, "com.android.phone.intent.CLEAR_MISSED_CALLS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/NotificationMgr;
    .locals 4
    .parameter
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {p0}, Lcom/android/phone/MiuiNotificationMgr;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/NotificationMgr;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 159
    :cond_0
    const-class v1, Lcom/android/phone/NotificationMgr;

    monitor-enter v1

    .line 160
    :try_start_0
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Lcom/android/phone/NotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr;-><init>(Lcom/android/phone/PhoneApp;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    .line 163
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 167
    :goto_1
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    monitor-exit v1

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 165
    :cond_1
    :try_start_1
    const-string v0, "NotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1349
    const-string v0, "NotificationMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    return-void
.end method

.method private notifyMute()V
    .locals 6

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    const v2, 0x1080076

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0262

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 594
    :cond_0
    return-void
.end method

.method private notifySpeakerphone()V
    .locals 6

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    const v2, 0x1080087

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0261

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 524
    :cond_0
    return-void
.end method

.method private showNetworkSelection(Ljava/lang/String;)V
    .locals 9
    .parameter "operator"

    .prologue
    const/4 v8, 0x0

    .line 1267
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showNetworkSelection("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1269
    :cond_0
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0181

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1271
    .local v4, titleText:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0182

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1274
    .local v0, expandedText:Ljava/lang/String;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1275
    .local v2, notification:Landroid/app/Notification;
    const v5, 0x108008a

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 1276
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 1277
    const/4 v5, 0x2

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 1278
    const/4 v5, 0x0

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1281
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1282
    .local v1, intent:Landroid/content/Intent;
    const/high16 v5, 0x1020

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1285
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.NetworkSetting"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1287
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1289
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v4, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1291
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1292
    return-void
.end method


# virtual methods
.method cancelCallInProgressNotifications()V
    .locals 2

    .prologue
    .line 1053
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelCallInProgressNotifications()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1054
    :cond_0
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    if-nez v0, :cond_1

    .line 1062
    :goto_0
    return-void

    .line 1058
    :cond_1
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCallInProgressNotifications: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1059
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 1060
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 1061
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method

.method protected cancelInCall()V
    .locals 2
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1043
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelInCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1045
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 1046
    return-void
.end method

.method cancelMissedCallNotification()V
    .locals 2

    .prologue
    .line 514
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 515
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 516
    return-void
.end method

.method protected configureLedNotification(Landroid/app/Notification;)V
    .locals 1
    .parameter "note"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 425
    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 426
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 427
    return-void
.end method

.method protected getInCallNotificationDisplayName(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 4
    .parameter "currentCall"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 991
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 993
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v3, 0x7f0c016e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1005
    .local v1, expandedViewLine2:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 996
    .end local v1           #expandedViewLine2:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 998
    .local v0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v2}, Lcom/android/phone/MiuiPhoneUtils;->getDisplayName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #expandedViewLine2:Ljava/lang/String;
    goto :goto_0
.end method

.method hideDataDisconnectedRoaming()V
    .locals 2

    .prologue
    .line 1258
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hideDataDisconnectedRoaming()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1260
    return-void
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 13
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 438
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v2

    .line 443
    .local v2, callLogIntent:Landroid/content/Intent;
    sget-boolean v8, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v8, :cond_1

    .line 444
    sget-boolean v8, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "notifyMissedCall: non-voice-capable device, not posting notification"

    invoke-direct {p0, v8}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget v8, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 458
    if-eqz p1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 459
    move-object v3, p1

    .line 474
    .local v3, callName:Ljava/lang/String;
    :cond_2
    :goto_1
    iget v8, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 475
    const v7, 0x7f0c0176

    .line 476
    .local v7, titleResId:I
    move-object v4, v3

    .line 484
    .local v4, expandedText:Ljava/lang/String;
    :goto_2
    new-instance v5, Landroid/app/Notification;

    const v8, 0x108007f

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0c0179

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v0, p4

    invoke-direct {v5, v8, v9, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 489
    .local v5, note:Landroid/app/Notification;
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v2, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v4, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 491
    iget v8, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v5, Landroid/app/Notification;->flags:I

    .line 494
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->createClearMissedCallsIntent()Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 496
    invoke-virtual {p0, v5}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 497
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 460
    .end local v3           #callName:Ljava/lang/String;
    .end local v4           #expandedText:Ljava/lang/String;
    .end local v5           #note:Landroid/app/Notification;
    .end local v7           #titleResId:I
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 461
    move-object v3, p2

    .line 462
    .restart local v3       #callName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v8, p2}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, telocation:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 464
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 468
    .end local v3           #callName:Ljava/lang/String;
    .end local v6           #telocation:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0004

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #callName:Ljava/lang/String;
    goto/16 :goto_1

    .line 478
    :cond_5
    const v7, 0x7f0c0177

    .line 479
    .restart local v7       #titleResId:I
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0178

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #expandedText:Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 1013
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallerInfo query complete (for NotificationMgr), updating in-call notification.."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1015
    :cond_0
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1016
    :cond_1
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- ci: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1018
    :cond_2
    if-ne p2, p0, :cond_5

    .line 1024
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- compactName is now: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {p3, v1}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1029
    :cond_3
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "- updating notification after query complete..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1030
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1035
    :goto_0
    return-void

    .line 1032
    :cond_5
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: caller-id query from unknown source! cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method postTransientNotification(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "notifyId"
    .parameter "msg"

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    .line 1345
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1346
    return-void
.end method

.method showDataDisconnectedRoaming()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1234
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showDataDisconnectedRoaming()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1236
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/Settings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1239
    new-instance v1, Landroid/app/Notification;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1243
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0c00ab

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00ae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1249
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1252
    return-void
.end method

.method updateCfi(Z)V
    .locals 9
    .parameter "visible"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x0

    .line 1179
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCfi(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1180
    :cond_0
    if-eqz p1, :cond_1

    .line 1193
    const/4 v2, 0x1

    .line 1195
    .local v2, showExpandedNotification:Z
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1197
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    new-instance v1, Landroid/app/Notification;

    const v3, 0x7f0200dd

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1205
    .local v1, notification:Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0063

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0066

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1218
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 1220
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1226
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #showExpandedNotification:Z
    :goto_0
    return-void

    .line 1224
    :cond_1
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public updateInCallNotification()V
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    .line 641
    return-void
.end method

.method protected updateInCallNotification(Z)V
    .locals 27
    .parameter "allowFullScreenIntent"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 697
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInCallNotification(allowFullScreenIntent = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ")..."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 703
    :cond_0
    sget-boolean v3, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v3, :cond_2

    .line 704
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "- non-voice-capable device; suppressing notification."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 982
    :cond_1
    :goto_0
    return-void

    .line 710
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v7, :cond_3

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 712
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 713
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0

    .line 717
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v17

    .line 718
    .local v17, hasRingingCall:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v15

    .line 719
    .local v15, hasActiveCall:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v16

    .line 720
    .local v16, hasHoldingCall:Z
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_4

    .line 721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  - hasRingingCall = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  - hasActiveCall = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  - hasHoldingCall = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 730
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v22

    .line 741
    .local v22, suppressNotification:Z
    if-eqz v17, :cond_5

    const/16 v22, 0x0

    .line 745
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->getVoicePrivacyState()Z

    move-result v12

    .line 746
    .local v12, enhancedVoicePrivacy:Z
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInCallNotification: enhancedVoicePrivacy = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 747
    :cond_6
    if-eqz v12, :cond_7

    const/16 v22, 0x0

    .line 749
    :cond_7
    if-eqz v22, :cond_8

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 753
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 754
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto/16 :goto_0

    .line 762
    :cond_8
    if-eqz v17, :cond_11

    .line 764
    const v20, 0x7f0200e2

    .line 793
    .local v20, resId:I
    :goto_1
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- Updating status bar icon: resId = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 794
    :cond_9
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 797
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 808
    .local v13, expandedViewIcon:I
    if-eqz v17, :cond_17

    .line 809
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 815
    .local v10, currentCall:Lcom/android/internal/telephony/Call;
    :goto_2
    invoke-static {v10}, Lcom/android/phone/MiuiPhoneUtils;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v11

    .line 817
    .local v11, currentConn:Lcom/android/internal/telephony/Connection;
    new-instance v19, Landroid/app/Notification;

    invoke-direct/range {v19 .. v19}, Landroid/app/Notification;-><init>()V

    .line 818
    .local v19, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/app/Notification;->icon:I

    .line 819
    move-object/from16 v0, v19

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v19

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v3, v7, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 829
    .local v18, inCallPendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 838
    new-instance v2, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f040022

    invoke-direct {v2, v3, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 840
    .local v2, contentView:Landroid/widget/RemoteViews;
    const v3, 0x7f0700cd

    invoke-virtual {v2, v3, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 842
    const-wide/16 v4, 0x0

    .line 846
    .local v4, chronometerBaseTime:J
    if-eqz v11, :cond_1d

    .line 856
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v8

    .line 857
    .local v8, callDurationMsec:J
    const-wide/16 v23, 0x0

    cmp-long v3, v8, v23

    if-nez v3, :cond_19

    .line 858
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    invoke-static {v11}, Lcom/android/phone/MiuiExtraConnectionData;->getRingDurationMillis(Lcom/android/internal/telephony/Connection;)J

    move-result-wide v25

    sub-long v4, v23, v25

    .line 865
    :goto_3
    if-eqz v17, :cond_1a

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0c017c

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 886
    .local v6, expandedViewLine1:Ljava/lang/String;
    :goto_4
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_a

    const-string v3, "- Updating expanded view: line 1 \'xxxxxxx\'"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 891
    :cond_a
    const v3, 0x7f0700d2

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 904
    .end local v6           #expandedViewLine1:Ljava/lang/String;
    .end local v8           #callDurationMsec:J
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/phone/NotificationMgr;->getInCallNotificationDisplayName(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v14

    .line 906
    .local v14, expandedViewLine2:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_c

    const-string v3, "- Updating expanded view: line 2 \'xxxxxxx\'"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 907
    :cond_c
    const v3, 0x7f0700cf

    invoke-virtual {v2, v3, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 908
    move-object/from16 v0, v19

    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 918
    if-eqz v17, :cond_f

    .line 919
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_d

    const-string v3, "- Using hi-pri notification for ringing call!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 923
    :cond_d
    move-object/from16 v0, v19

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v3, v3, 0x80

    move-object/from16 v0, v19

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 931
    move-object/from16 v0, v19

    iput-object v14, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 933
    if-eqz p1, :cond_f

    .line 939
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- Setting fullScreenIntent: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 940
    :cond_e
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 962
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    .line 963
    .local v21, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v7, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v3

    if-nez v3, :cond_f

    .line 964
    const-string v3, "NotificationMgr"

    const-string v7, "updateInCallNotification: call-waiting! force relaunch..."

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 973
    .end local v21           #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_f
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 974
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v7, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v3, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    goto/16 :goto_0

    .line 765
    .end local v2           #contentView:Landroid/widget/RemoteViews;
    .end local v4           #chronometerBaseTime:J
    .end local v10           #currentCall:Lcom/android/internal/telephony/Call;
    .end local v11           #currentConn:Lcom/android/internal/telephony/Connection;
    .end local v13           #expandedViewIcon:I
    .end local v14           #expandedViewLine2:Ljava/lang/String;
    .end local v18           #inCallPendingIntent:Landroid/app/PendingIntent;
    .end local v19           #notification:Landroid/app/Notification;
    .end local v20           #resId:I
    :cond_11
    if-nez v15, :cond_13

    if-eqz v16, :cond_13

    .line 767
    if-eqz v12, :cond_12

    .line 768
    const v20, 0x7f0200e8

    .restart local v20       #resId:I
    goto/16 :goto_1

    .line 770
    .end local v20           #resId:I
    :cond_12
    const v20, 0x7f0200e0

    .restart local v20       #resId:I
    goto/16 :goto_1

    .line 772
    .end local v20           #resId:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 774
    if-eqz v12, :cond_14

    .line 775
    const v20, 0x7f0200e5

    .restart local v20       #resId:I
    goto/16 :goto_1

    .line 777
    .end local v20           #resId:I
    :cond_14
    const v20, 0x7f0200db

    .restart local v20       #resId:I
    goto/16 :goto_1

    .line 780
    .end local v20           #resId:I
    :cond_15
    if-eqz v12, :cond_16

    .line 781
    const v20, 0x7f0200e6

    .restart local v20       #resId:I
    goto/16 :goto_1

    .line 783
    .end local v20           #resId:I
    :cond_16
    const v20, 0x7f0200de

    .restart local v20       #resId:I
    goto/16 :goto_1

    .line 810
    .restart local v13       #expandedViewIcon:I
    :cond_17
    if-eqz v15, :cond_18

    .line 811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .restart local v10       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 813
    .end local v10           #currentCall:Lcom/android/internal/telephony/Call;
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .restart local v10       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 860
    .restart local v2       #contentView:Landroid/widget/RemoteViews;
    .restart local v4       #chronometerBaseTime:J
    .restart local v8       #callDurationMsec:J
    .restart local v11       #currentConn:Lcom/android/internal/telephony/Connection;
    .restart local v18       #inCallPendingIntent:Landroid/app/PendingIntent;
    .restart local v19       #notification:Landroid/app/Notification;
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    sub-long v4, v23, v8

    goto/16 :goto_3

    .line 872
    :cond_1a
    if-eqz v16, :cond_1b

    if-nez v15, :cond_1b

    .line 875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0c017b

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_4

    .line 879
    .end local v6           #expandedViewLine1:Ljava/lang/String;
    :cond_1b
    const-wide/16 v23, 0x0

    cmp-long v3, v8, v23

    if-lez v3, :cond_1c

    .line 880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0c017a

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_4

    .line 882
    .end local v6           #expandedViewLine1:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0c0334

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_4

    .line 895
    .end local v6           #expandedViewLine1:Ljava/lang/String;
    .end local v8           #callDurationMsec:J
    :cond_1d
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_b

    .line 896
    const-string v3, "NotificationMgr"

    const-string v7, "updateInCallNotification: null connection, can\'t set exp view line 1."

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method updateMuteNotification()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 627
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "updateMuteNotification: MUTED"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 622
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifyMute()V

    goto :goto_0

    .line 624
    :cond_2
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "updateMuteNotification: not muted (or not offhook)"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 625
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto :goto_0
.end method

.method updateMwi(Z)V
    .locals 13
    .parameter "visible"

    .prologue
    .line 1070
    sget-boolean v9, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMwi(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1071
    :cond_0
    if-eqz p1, :cond_8

    .line 1072
    const v5, 0x108007e

    .line 1084
    .local v5, resId:I
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0c017d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1085
    .local v3, notificationTitle:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v8

    .line 1086
    .local v8, vmNumber:Ljava/lang/String;
    sget-boolean v9, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- got vm number: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1103
    :cond_1
    if-nez v8, :cond_5

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1104
    sget-boolean v9, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v9, :cond_2

    const-string v9, "- Null vm number: SIM records not loaded (yet)..."

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1117
    :cond_2
    iget v9, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    add-int/lit8 v10, v9, -0x1

    iput v10, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    if-lez v9, :cond_4

    .line 1118
    sget-boolean v9, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "  - Retrying in 10000 msec..."

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1119
    :cond_3
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    const-wide/16 v10, 0x2710

    invoke-virtual {v9, v10, v11}, Lcom/android/phone/CallNotifier;->sendMwiChangedDelayed(J)V

    .line 1170
    .end local v3           #notificationTitle:Ljava/lang/String;
    .end local v5           #resId:I
    .end local v8           #vmNumber:Ljava/lang/String;
    :goto_0
    return-void

    .line 1122
    .restart local v3       #notificationTitle:Ljava/lang/String;
    .restart local v5       #resId:I
    .restart local v8       #vmNumber:Ljava/lang/String;
    :cond_4
    const-string v9, "NotificationMgr"

    const-string v10, "NotificationMgr.updateMwi: getVoiceMailNumber() failed after 5 retries; giving up."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_5
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v9}, Lcom/android/phone/TelephonyCapabilities;->supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1130
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v7

    .line 1131
    .local v7, vmCount:I
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0c017e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1132
    .local v6, titleFormat:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1136
    .end local v6           #titleFormat:Ljava/lang/String;
    .end local v7           #vmCount:I
    :cond_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1137
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0c0180

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1145
    .local v2, notificationText:Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL"

    const-string v10, "voicemail"

    const-string v11, ""

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1147
    .local v0, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v0, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1149
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification;

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v1, v5, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1156
    .local v1, notification:Landroid/app/Notification;
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9, v3, v2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1162
    iget v9, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v1, Landroid/app/Notification;->defaults:I

    .line 1163
    iget v9, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v1, Landroid/app/Notification;->defaults:I

    .line 1164
    iget v9, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v1, Landroid/app/Notification;->flags:I

    .line 1165
    invoke-virtual {p0, v1}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 1166
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v10, 0x5

    invoke-virtual {v9, v10, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1140
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #notificationText:Ljava/lang/String;
    .end local v4           #pendingIntent:Landroid/app/PendingIntent;
    :cond_7
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0c017f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #notificationText:Ljava/lang/String;
    goto :goto_1

    .line 1168
    .end local v2           #notificationText:Ljava/lang/String;
    .end local v3           #notificationTitle:Ljava/lang/String;
    .end local v5           #resId:I
    .end local v8           #vmNumber:Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method updateNetworkSelection(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1308
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/TelephonyCapabilities;->supportsNetworkSelection(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1312
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1314
    const-string v0, "network_selection_name_key"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1316
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1317
    const-string v0, "network_selection_key"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1321
    :cond_0
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkSelection()...state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1324
    :cond_1
    if-ne p1, v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1326
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-nez v1, :cond_2

    .line 1327
    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;)V

    .line 1328
    iput-boolean v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 1337
    :cond_2
    :goto_0
    return-void

    .line 1331
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-eqz v0, :cond_2

    .line 1332
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    .line 1333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    goto :goto_0
.end method

.method public updateNotificationAndLaunchIncomingCallUi()V
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    .line 678
    return-void
.end method

.method protected updateNotificationsAtStartup()V
    .locals 9
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 271
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateNotificationsAtStartup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 274
    :cond_0
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 277
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .local v8, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    const-string v0, " AND new=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- start call log query..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/4 v1, -0x1

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- updating in-call notification at startup..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 288
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 293
    return-void
.end method

.method public updateSpeakerNotification()V
    .locals 4

    .prologue
    .line 545
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 546
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 549
    .local v1, showNotification:Z
    :goto_0
    sget-boolean v2, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    const-string v2, "updateSpeakerNotification: speaker ON"

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 553
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification(Z)V

    .line 554
    return-void

    .line 546
    .end local v1           #showNotification:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 549
    .restart local v1       #showNotification:Z
    :cond_2
    const-string v2, "updateSpeakerNotification: speaker OFF (or not offhook)"

    goto :goto_1
.end method

.method public updateSpeakerNotification(Z)V
    .locals 2
    .parameter "showNotification"

    .prologue
    .line 569
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSpeakerNotification("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 586
    :goto_0
    return-void

    .line 581
    :cond_1
    if-eqz p1, :cond_2

    .line 582
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    goto :goto_0

    .line 584
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method
