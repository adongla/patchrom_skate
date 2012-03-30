.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 80
    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 807
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 808
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 810
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 812
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 76
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    return-void
.end method

.method public run()V
    .locals 105

    .prologue
    .line 95
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 98
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 100
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 103
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 104
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 108
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .line 110
    .local v86, shutdownAction:Ljava/lang/String;
    if-eqz v86, :cond_0

    invoke-virtual/range {v86 .. v86}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 111
    const/4 v3, 0x0

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_a

    const/16 v83, 0x1

    .line 114
    .local v83, reboot:Z
    :goto_0
    invoke-virtual/range {v86 .. v86}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_b

    .line 115
    const/4 v3, 0x1

    invoke-virtual/range {v86 .. v86}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v86

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v82

    .line 120
    .local v82, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v83

    move-object/from16 v1, v82

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 124
    .end local v82           #reason:Ljava/lang/String;
    .end local v83           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 125
    .local v62, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v61, 0x0

    .line 128
    .local v61, factoryTest:I
    :goto_2
    const/16 v66, 0x0

    .line 129
    .local v66, lights:Lcom/android/server/LightsService;
    const/16 v79, 0x0

    .line 130
    .local v79, power:Lcom/android/server/PowerManagerService;
    const/16 v56, 0x0

    .line 131
    .local v56, dmm:Lcom/android/server/DynamicMemoryManagerService;
    const/16 v40, 0x0

    .line 132
    .local v40, battery:Lcom/android/server/BatteryService;
    const/16 v37, 0x0

    .line 133
    .local v37, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 134
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 135
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v71, 0x0

    .line 136
    .local v71, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v47, 0x0

    .line 137
    .local v47, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v102, 0x0

    .line 138
    .local v102, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v100, 0x0

    .line 139
    .local v100, wifi:Lcom/android/server/WifiService;
    const/16 v78, 0x0

    .line 140
    .local v78, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 141
    .local v4, context:Landroid/content/Context;
    const/16 v104, 0x0

    .line 142
    .local v104, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v41, 0x0

    .line 143
    .local v41, bluetooth:Landroid/server/BluetoothService;
    const/16 v43, 0x0

    .line 144
    .local v43, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v58, 0x0

    .line 145
    .local v58, dock:Lcom/android/server/DockObserver;
    const/16 v95, 0x0

    .line 146
    .local v95, usb:Lcom/android/server/usb/UsbService;
    const/16 v93, 0x0

    .line 147
    .local v93, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v84, 0x0

    .line 148
    .local v84, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v89, 0x0

    .line 149
    .local v89, throttle:Lcom/android/server/ThrottleService;
    const/16 v73, 0x0

    .line 150
    .local v73, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v51, 0x0

    .line 154
    .local v51, cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyService;

    invoke-direct {v9}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 157
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3e

    .line 159
    .end local v79           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 161
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static/range {v61 .. v61}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 164
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 167
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 169
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 172
    .local v53, cryptState:Ljava/lang/String;
    const/16 v77, 0x0

    .line 173
    .local v77, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 174
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/16 v77, 0x1

    .line 181
    :cond_1
    :goto_3
    if-eqz v61, :cond_e

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v77

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v78

    .line 184
    const/16 v63, 0x0

    .line 186
    .local v63, firstBoot:Z
    :try_start_2
    invoke-interface/range {v78 .. v78}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v63

    .line 190
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 192
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 196
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 204
    :goto_6
    :try_start_5
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v3, 0x1

    move/from16 v0, v61

    if-ne v0, v3, :cond_f

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 209
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 212
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v67, Lcom/android/server/LightsService;

    move-object/from16 v0, v67

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 215
    .end local v66           #lights:Lcom/android/server/LightsService;
    .local v67, lights:Lcom/android/server/LightsService;
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v67

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3f

    .line 217
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_7
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 219
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v3, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 224
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v67

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 226
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_40

    .line 228
    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_8
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 230
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 234
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v3, 0x1

    move/from16 v0, v61

    if-eq v0, v3, :cond_10

    const/4 v3, 0x1

    move v9, v3

    :goto_8
    if-nez v63, :cond_11

    const/4 v3, 0x1

    :goto_9
    invoke-static {v4, v6, v9, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v104

    .line 238
    const-string v3, "window"

    move-object/from16 v0, v104

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 240
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v104

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 245
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 246
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_a
    sget-boolean v3, Landroid/os/SystemProperties;->QCOM_HARDWARE:Z

    if-eqz v3, :cond_3

    .line 269
    const-string v3, "SystemServer"

    const-string v9, "DynamicMemoryManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v57, Lcom/android/server/DynamicMemoryManagerService;

    move-object/from16 v0, v57

    invoke-direct {v0, v4}, Lcom/android/server/DynamicMemoryManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 272
    .end local v56           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .local v57, dmm:Lcom/android/server/DynamicMemoryManagerService;
    :try_start_9
    new-instance v52, Lcom/android/server/CpuGovernorService;

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Lcom/android/server/CpuGovernorService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_43

    .line 274
    .end local v51           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .local v52, cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    if-nez v52, :cond_2

    .line 275
    :try_start_a
    const-string v3, "SystemServer"

    const-string v9, "CpuGovernorService failed to start"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_44

    :cond_2
    move-object/from16 v51, v52

    .end local v52           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v51       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    move-object/from16 v56, v57

    .end local v57           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v56       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    :cond_3
    move-object/from16 v66, v67

    .line 283
    .end local v53           #cryptState:Ljava/lang/String;
    .end local v63           #firstBoot:Z
    .end local v67           #lights:Lcom/android/server/LightsService;
    .end local v77           #onlyCore:Z
    .restart local v66       #lights:Lcom/android/server/LightsService;
    :goto_b
    const/16 v54, 0x0

    .line 284
    .local v54, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v87, 0x0

    .line 285
    .local v87, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v64, 0x0

    .line 286
    .local v64, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v38, 0x0

    .line 287
    .local v38, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v80, 0x0

    .line 288
    .local v80, profile:Lcom/android/server/ProfileManagerService;
    const/16 v75, 0x0

    .line 289
    .local v75, notification:Lcom/android/server/NotificationManagerService;
    const/16 v98, 0x0

    .line 290
    .local v98, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v68, 0x0

    .line 291
    .local v68, location:Lcom/android/server/LocationManagerService;
    const/16 v49, 0x0

    .line 292
    .local v49, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v91, 0x0

    .line 295
    .local v91, tsms:Lcom/android/server/TextServicesManagerService;
    const/4 v3, 0x1

    move/from16 v0, v61

    if-eq v0, v3, :cond_4

    .line 297
    :try_start_b
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v65, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v4}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 299
    .end local v64           #imm:Lcom/android/server/InputMethodManagerService;
    .local v65, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_c
    const-string v3, "input_method"

    move-object/from16 v0, v65

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3d

    move-object/from16 v64, v65

    .line 305
    .end local v65           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v64       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    .line 314
    :cond_4
    :goto_d
    :try_start_e
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 320
    :goto_e
    :try_start_f
    invoke-interface/range {v78 .. v78}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    .line 326
    :goto_f
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403d4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_3c

    .line 333
    :goto_10
    const/4 v3, 0x1

    move/from16 v0, v61

    if-eq v0, v3, :cond_16

    .line 335
    :try_start_11
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v55, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    .line 337
    .end local v54           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v55, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_12
    const-string v3, "device_policy"

    move-object/from16 v0, v55

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3b

    move-object/from16 v54, v55

    .line 343
    .end local v55           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v54       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_11
    :try_start_13
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v88, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v88

    move-object/from16 v1, v104

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8

    .line 345
    .end local v87           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v88, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_14
    const-string v3, "statusbar"

    move-object/from16 v0, v88

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3a

    move-object/from16 v87, v88

    .line 351
    .end local v88           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v87       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_12
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_9

    .line 359
    :goto_13
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 361
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    .line 367
    :goto_14
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v92, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v92

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b

    .line 369
    .end local v91           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v92, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_18
    const-string v3, "textservices"

    move-object/from16 v0, v92

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_39

    move-object/from16 v91, v92

    .line 375
    .end local v92           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v91       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_15
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v72, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_c

    .line 377
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v72, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_1a
    const-string v3, "netstats"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_38

    move-object/from16 v12, v72

    .line 383
    .end local v72           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_16
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_d

    .line 387
    .end local v71           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1c
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_37

    .line 393
    :goto_17
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v103, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v103

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_e

    .line 395
    .end local v102           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v103, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_1e
    const-string v3, "wifip2p"

    move-object/from16 v0, v103

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_36

    move-object/from16 v102, v103

    .line 401
    .end local v103           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v102       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_18
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v101, Lcom/android/server/WifiService;

    move-object/from16 v0, v101

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_f

    .line 403
    .end local v100           #wifi:Lcom/android/server/WifiService;
    .local v101, wifi:Lcom/android/server/WifiService;
    :try_start_20
    const-string v3, "wifi"

    move-object/from16 v0, v101

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_35

    move-object/from16 v100, v101

    .line 409
    .end local v101           #wifi:Lcom/android/server/WifiService;
    .restart local v100       #wifi:Lcom/android/server/WifiService;
    :goto_19
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v48, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_10

    .line 412
    .end local v47           #connectivity:Lcom/android/server/ConnectivityService;
    .local v48, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_22
    const-string v3, "connectivity"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 413
    move-object/from16 v0, v48

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 414
    move-object/from16 v0, v48

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 415
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 416
    invoke-virtual/range {v102 .. v102}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_34

    move-object/from16 v47, v48

    .line 422
    .end local v48           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v47       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1a
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v90, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v90

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_11

    .line 424
    .end local v89           #throttle:Lcom/android/server/ThrottleService;
    .local v90, throttle:Lcom/android/server/ThrottleService;
    :try_start_24
    const-string v3, "throttle"

    move-object/from16 v0, v90

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_33

    move-object/from16 v89, v90

    .line 435
    .end local v90           #throttle:Lcom/android/server/ThrottleService;
    .restart local v89       #throttle:Lcom/android/server/ThrottleService;
    :goto_1b
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v3, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_12

    .line 442
    :goto_1c
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "Profile Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v81, Lcom/android/server/ProfileManagerService;

    move-object/from16 v0, v81

    invoke-direct {v0, v4}, Lcom/android/server/ProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_13

    .line 444
    .end local v80           #profile:Lcom/android/server/ProfileManagerService;
    .local v81, profile:Lcom/android/server/ProfileManagerService;
    :try_start_27
    const-string v3, "profile"

    move-object/from16 v0, v81

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_32

    move-object/from16 v80, v81

    .line 450
    .end local v81           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v80       #profile:Lcom/android/server/ProfileManagerService;
    :goto_1d
    :try_start_28
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v76, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v76

    move-object/from16 v1, v87

    move-object/from16 v2, v66

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_14

    .line 452
    .end local v75           #notification:Lcom/android/server/NotificationManagerService;
    .local v76, notification:Lcom/android/server/NotificationManagerService;
    :try_start_29
    const-string v3, "notification"

    move-object/from16 v0, v76

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 453
    move-object/from16 v0, v76

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_31

    move-object/from16 v75, v76

    .line 459
    .end local v76           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v75       #notification:Lcom/android/server/NotificationManagerService;
    :goto_1e
    sget-boolean v3, Landroid/os/SystemProperties;->QCOM_HDMI_OUT:Z

    if-eqz v3, :cond_5

    .line 461
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "HDMI Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v3, "hdmi"

    new-instance v9, Lcom/android/server/HDMIService;

    invoke-direct {v9, v4}, Lcom/android/server/HDMIService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_15

    .line 469
    :cond_5
    :goto_1f
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_16

    .line 477
    :goto_20
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v69, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_17

    .line 479
    .end local v68           #location:Lcom/android/server/LocationManagerService;
    .local v69, location:Lcom/android/server/LocationManagerService;
    :try_start_2d
    const-string v3, "location"

    move-object/from16 v0, v69

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_30

    move-object/from16 v68, v69

    .line 485
    .end local v69           #location:Lcom/android/server/LocationManagerService;
    .restart local v68       #location:Lcom/android/server/LocationManagerService;
    :goto_21
    :try_start_2e
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v50, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_18

    .line 487
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v50, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_2f
    const-string v3, "country_detector"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_2f

    move-object/from16 v49, v50

    .line 493
    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_22
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_19

    .line 501
    :goto_23
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1a

    .line 509
    :goto_24
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v99, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v99

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1b

    .line 511
    .end local v98           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v99, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_33
    const-string v3, "wallpaper"

    move-object/from16 v0, v99

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_2e

    move-object/from16 v98, v99

    .line 517
    .end local v99           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v98       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_25
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1c

    .line 524
    :goto_26
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v59, Lcom/android/server/DockObserver;

    move-object/from16 v0, v59

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1d

    .end local v58           #dock:Lcom/android/server/DockObserver;
    .local v59, dock:Lcom/android/server/DockObserver;
    move-object/from16 v58, v59

    .line 532
    .end local v59           #dock:Lcom/android/server/DockObserver;
    .restart local v58       #dock:Lcom/android/server/DockObserver;
    :goto_27
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1e

    .line 540
    :goto_28
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v96, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v96

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1f

    .line 543
    .end local v95           #usb:Lcom/android/server/usb/UsbService;
    .local v96, usb:Lcom/android/server/usb/UsbService;
    :try_start_38
    const-string v3, "usb"

    move-object/from16 v0, v96

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_2d

    move-object/from16 v95, v96

    .line 549
    .end local v96           #usb:Lcom/android/server/usb/UsbService;
    .restart local v95       #usb:Lcom/android/server/usb/UsbService;
    :goto_29
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v94, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v94

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20

    .end local v93           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v94, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v93, v94

    .line 557
    .end local v94           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v93       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_2a
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_21

    .line 565
    :goto_2b
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v39, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_22

    .line 567
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .local v39, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_3c
    const-string v3, "appwidget"

    move-object/from16 v0, v39

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_2c

    move-object/from16 v38, v39

    .line 573
    .end local v39           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_2c
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v85, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_23

    .end local v84           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v85, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v84, v85

    .line 580
    .end local v85           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v84       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_2d
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_24

    .line 591
    :goto_2e
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_25

    .line 599
    :goto_2f
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance v74, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_26

    .end local v73           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v74, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v73, v74

    .line 607
    .end local v74           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v73       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "adb_port"

    const-string v10, "service.adb.tcp.port"

    const-string v11, "-1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "adb_port"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lcom/android/server/ServerThread$AdbPortObserver;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/ServerThread$AdbPortObserver;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 617
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v27

    .line 618
    .local v27, safeMode:Z
    if-eqz v27, :cond_15

    .line 619
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 621
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 623
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 631
    :goto_31
    if-eqz v54, :cond_6

    .line 633
    :try_start_41
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_27

    .line 639
    :cond_6
    :goto_32
    if-eqz v75, :cond_7

    .line 641
    :try_start_42
    invoke-virtual/range {v75 .. v75}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_28

    .line 648
    :cond_7
    :goto_33
    :try_start_43
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_29

    .line 653
    :goto_34
    if-eqz v27, :cond_8

    .line 654
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 660
    :cond_8
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v46

    .line 661
    .local v46, config:Landroid/content/res/Configuration;
    new-instance v70, Landroid/util/DisplayMetrics;

    invoke-direct/range {v70 .. v70}, Landroid/util/DisplayMetrics;-><init>()V

    .line 662
    .local v70, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/view/WindowManager;

    .line 663
    .local v97, w:Landroid/view/WindowManager;
    invoke-interface/range {v97 .. v97}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 664
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v46

    move-object/from16 v1, v70

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 666
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 668
    :try_start_44
    invoke-interface/range {v78 .. v78}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2a

    .line 674
    :goto_35
    move-object/from16 v16, v4

    .line 675
    .local v16, contextF:Landroid/content/Context;
    move-object/from16 v17, v5

    .line 676
    .local v17, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v18, v13

    .line 677
    .local v18, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v19, v12

    .line 678
    .local v19, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v20, v8

    .line 679
    .local v20, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v21, v47

    .line 680
    .local v21, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v22, v58

    .line 681
    .local v22, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v23, v95

    .line 682
    .local v23, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v33, v89

    .line 683
    .local v33, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v24, v93

    .line 684
    .local v24, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v26, v38

    .line 685
    .local v26, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v28, v98

    .line 686
    .local v28, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v29, v64

    .line 687
    .local v29, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v25, v84

    .line 688
    .local v25, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v31, v68

    .line 689
    .local v31, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v32, v49

    .line 690
    .local v32, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v34, v73

    .line 691
    .local v34, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v35, v91

    .line 692
    .local v35, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v30, v87

    .line 699
    .local v30, statusBarF:Lcom/android/server/StatusBarManagerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v35}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 798
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 799
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_9
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 803
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void

    .line 111
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #batteryF:Lcom/android/server/BatteryService;
    .end local v18           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v19           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v20           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v21           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v22           #dockF:Lcom/android/server/DockObserver;
    .end local v23           #usbF:Lcom/android/server/usb/UsbService;
    .end local v24           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v25           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v26           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v27           #safeMode:Z
    .end local v28           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v29           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v30           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v31           #locationF:Lcom/android/server/LocationManagerService;
    .end local v32           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v33           #throttleF:Lcom/android/server/ThrottleService;
    .end local v34           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v35           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v46           #config:Landroid/content/res/Configuration;
    .end local v47           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v51           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .end local v54           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v56           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .end local v58           #dock:Lcom/android/server/DockObserver;
    .end local v61           #factoryTest:I
    .end local v62           #factoryTestStr:Ljava/lang/String;
    .end local v64           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .end local v68           #location:Lcom/android/server/LocationManagerService;
    .end local v70           #metrics:Landroid/util/DisplayMetrics;
    .end local v73           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v75           #notification:Lcom/android/server/NotificationManagerService;
    .end local v78           #pm:Landroid/content/pm/IPackageManager;
    .end local v80           #profile:Lcom/android/server/ProfileManagerService;
    .end local v84           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v87           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v89           #throttle:Lcom/android/server/ThrottleService;
    .end local v91           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v93           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v95           #usb:Lcom/android/server/usb/UsbService;
    .end local v97           #w:Landroid/view/WindowManager;
    .end local v98           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v100           #wifi:Lcom/android/server/WifiService;
    .end local v102           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v104           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_a
    const/16 v83, 0x0

    goto/16 :goto_0

    .line 117
    .restart local v83       #reboot:Z
    :cond_b
    const/16 v82, 0x0

    .restart local v82       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 125
    .end local v82           #reason:Ljava/lang/String;
    .end local v83           #reboot:Z
    .restart local v62       #factoryTestStr:Ljava/lang/String;
    :cond_c
    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    goto/16 :goto_2

    .line 176
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    .restart local v43       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v47       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v51       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v53       #cryptState:Ljava/lang/String;
    .restart local v56       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v58       #dock:Lcom/android/server/DockObserver;
    .restart local v61       #factoryTest:I
    .restart local v66       #lights:Lcom/android/server/LightsService;
    .restart local v71       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v73       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v77       #onlyCore:Z
    .restart local v78       #pm:Landroid/content/pm/IPackageManager;
    .restart local v84       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v89       #throttle:Lcom/android/server/ThrottleService;
    .restart local v93       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v95       #usb:Lcom/android/server/usb/UsbService;
    .restart local v100       #wifi:Lcom/android/server/WifiService;
    .restart local v102       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v104       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_d
    :try_start_45
    const-string v3, "1"

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/16 v77, 0x1

    goto/16 :goto_3

    .line 181
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 199
    .restart local v63       #firstBoot:Z
    :catch_0
    move-exception v60

    .line 200
    .local v60, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v60

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_45} :catch_1

    goto/16 :goto_6

    .line 278
    .end local v53           #cryptState:Ljava/lang/String;
    .end local v60           #e:Ljava/lang/Throwable;
    .end local v63           #firstBoot:Z
    .end local v77           #onlyCore:Z
    :catch_1
    move-exception v60

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v40

    .line 279
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v60, e:Ljava/lang/RuntimeException;
    :goto_36
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v60

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 205
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v60           #e:Ljava/lang/RuntimeException;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v53       #cryptState:Ljava/lang/String;
    .restart local v63       #firstBoot:Z
    .restart local v77       #onlyCore:Z
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 235
    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    :cond_10
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_8

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 247
    :cond_12
    const/4 v3, 0x1

    move/from16 v0, v61

    if-ne v0, v3, :cond_13

    .line 248
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 278
    :catch_2
    move-exception v60

    move-object/from16 v66, v67

    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    goto :goto_36

    .line 250
    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    :cond_13
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v42, Landroid/server/BluetoothService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_46} :catch_2

    .line 252
    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .local v42, bluetooth:Landroid/server/BluetoothService;
    :try_start_47
    const-string v3, "bluetooth"

    move-object/from16 v0, v42

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 253
    invoke-virtual/range {v42 .. v42}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 254
    new-instance v44, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_47} :catch_41

    .line 255
    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v44, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_48
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 257
    invoke-virtual/range {v42 .. v42}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    .line 261
    .local v36, airplaneModeOn:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    .line 263
    .local v45, bluetoothOn:I
    if-nez v36, :cond_14

    if-eqz v45, :cond_14

    .line 264
    invoke-virtual/range {v42 .. v42}, Landroid/server/BluetoothService;->enable()Z
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_48} :catch_42

    :cond_14
    move-object/from16 v43, v44

    .end local v44           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v43       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v41, v42

    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 300
    .end local v36           #airplaneModeOn:I
    .end local v45           #bluetoothOn:I
    .end local v53           #cryptState:Ljava/lang/String;
    .end local v63           #firstBoot:Z
    .end local v67           #lights:Lcom/android/server/LightsService;
    .end local v77           #onlyCore:Z
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v54       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v64       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    .restart local v68       #location:Lcom/android/server/LocationManagerService;
    .restart local v75       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v80       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v87       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v91       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v98       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v60

    .line 301
    .local v60, e:Ljava/lang/Throwable;
    :goto_37
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 308
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v60

    .line 309
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 315
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v60

    .line 316
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 321
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v60

    .line 322
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 338
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v60

    .line 339
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_38
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 346
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v60

    .line 347
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_39
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 354
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v60

    .line 355
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 362
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v60

    .line 363
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 370
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v60

    .line 371
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_3a
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 378
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v60

    .line 379
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_3b
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 388
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v60

    move-object/from16 v8, v71

    .line 389
    .end local v71           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_3c
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 396
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v60

    .line 397
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_3d
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 404
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v60

    .line 405
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_3e
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 417
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v60

    .line 418
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_3f
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 426
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v60

    .line 427
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_40
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 437
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v60

    .line 438
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 445
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v60

    .line 446
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_41
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Profile Manager"

    move-object/from16 v0, v60

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 454
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v60

    .line 455
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_42
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 463
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v60

    .line 464
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting HDMI Service "

    move-object/from16 v0, v60

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 472
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v60

    .line 473
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 480
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v60

    .line 481
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_43
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 488
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v60

    .line 489
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 496
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v60

    .line 497
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 504
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v60

    .line 505
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 512
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v60

    .line 513
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 519
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v60

    .line 520
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 527
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v60

    .line 528
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 535
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v60

    .line 536
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 544
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v60

    .line 545
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 552
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v60

    .line 553
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 560
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v60

    .line 561
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v60

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 568
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v60

    .line 569
    .restart local v60       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 575
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v60

    .line 576
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 582
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v60

    .line 583
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 594
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v60

    .line 595
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 601
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v60

    .line 602
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 626
    .end local v60           #e:Ljava/lang/Throwable;
    .restart local v27       #safeMode:Z
    :cond_15
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_31

    .line 634
    :catch_27
    move-exception v60

    .line 635
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 642
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v60

    .line 643
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 649
    .end local v60           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v60

    .line 650
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 669
    .end local v60           #e:Ljava/lang/Throwable;
    .restart local v46       #config:Landroid/content/res/Configuration;
    .restart local v70       #metrics:Landroid/util/DisplayMetrics;
    .restart local v97       #w:Landroid/view/WindowManager;
    :catch_2a
    move-exception v60

    .line 670
    .restart local v60       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 187
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v27           #safeMode:Z
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v46           #config:Landroid/content/res/Configuration;
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v54           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v60           #e:Ljava/lang/Throwable;
    .end local v64           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v68           #location:Lcom/android/server/LocationManagerService;
    .end local v70           #metrics:Landroid/util/DisplayMetrics;
    .end local v75           #notification:Lcom/android/server/NotificationManagerService;
    .end local v80           #profile:Lcom/android/server/ProfileManagerService;
    .end local v87           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v91           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v97           #w:Landroid/view/WindowManager;
    .end local v98           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v53       #cryptState:Ljava/lang/String;
    .restart local v63       #firstBoot:Z
    .restart local v71       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v77       #onlyCore:Z
    :catch_2b
    move-exception v3

    goto/16 :goto_5

    .line 568
    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .end local v53           #cryptState:Ljava/lang/String;
    .end local v63           #firstBoot:Z
    .end local v71           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v77           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v39       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v54       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v64       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v68       #location:Lcom/android/server/LocationManagerService;
    .restart local v75       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v80       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v87       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v91       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v98       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2c
    move-exception v60

    move-object/from16 v38, v39

    .end local v39           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    goto :goto_47

    .line 544
    .end local v95           #usb:Lcom/android/server/usb/UsbService;
    .restart local v96       #usb:Lcom/android/server/usb/UsbService;
    :catch_2d
    move-exception v60

    move-object/from16 v95, v96

    .end local v96           #usb:Lcom/android/server/usb/UsbService;
    .restart local v95       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_46

    .line 512
    .end local v98           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v99       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2e
    move-exception v60

    move-object/from16 v98, v99

    .end local v99           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v98       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_45

    .line 488
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v50       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_2f
    move-exception v60

    move-object/from16 v49, v50

    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_44

    .line 480
    .end local v68           #location:Lcom/android/server/LocationManagerService;
    .restart local v69       #location:Lcom/android/server/LocationManagerService;
    :catch_30
    move-exception v60

    move-object/from16 v68, v69

    .end local v69           #location:Lcom/android/server/LocationManagerService;
    .restart local v68       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_43

    .line 454
    .end local v75           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v76       #notification:Lcom/android/server/NotificationManagerService;
    :catch_31
    move-exception v60

    move-object/from16 v75, v76

    .end local v76           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v75       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_42

    .line 445
    .end local v80           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v81       #profile:Lcom/android/server/ProfileManagerService;
    :catch_32
    move-exception v60

    move-object/from16 v80, v81

    .end local v81           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v80       #profile:Lcom/android/server/ProfileManagerService;
    goto/16 :goto_41

    .line 426
    .end local v89           #throttle:Lcom/android/server/ThrottleService;
    .restart local v90       #throttle:Lcom/android/server/ThrottleService;
    :catch_33
    move-exception v60

    move-object/from16 v89, v90

    .end local v90           #throttle:Lcom/android/server/ThrottleService;
    .restart local v89       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_40

    .line 417
    .end local v47           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v48       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_34
    move-exception v60

    move-object/from16 v47, v48

    .end local v48           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v47       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_3f

    .line 404
    .end local v100           #wifi:Lcom/android/server/WifiService;
    .restart local v101       #wifi:Lcom/android/server/WifiService;
    :catch_35
    move-exception v60

    move-object/from16 v100, v101

    .end local v101           #wifi:Lcom/android/server/WifiService;
    .restart local v100       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_3e

    .line 396
    .end local v102           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v103       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_36
    move-exception v60

    move-object/from16 v102, v103

    .end local v103           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v102       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_3d

    .line 388
    :catch_37
    move-exception v60

    goto/16 :goto_3c

    .line 378
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v71       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v72       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_38
    move-exception v60

    move-object/from16 v12, v72

    .end local v72           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3b

    .line 370
    .end local v91           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v92       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_39
    move-exception v60

    move-object/from16 v91, v92

    .end local v92           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v91       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3a

    .line 346
    .end local v87           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v88       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_3a
    move-exception v60

    move-object/from16 v87, v88

    .end local v88           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v87       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_39

    .line 338
    .end local v54           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v55       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_3b
    move-exception v60

    move-object/from16 v54, v55

    .end local v55           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v54       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_38

    .line 330
    :catch_3c
    move-exception v3

    goto/16 :goto_10

    .line 300
    .end local v64           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v65       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_3d
    move-exception v60

    move-object/from16 v64, v65

    .end local v65           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v64       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_37

    .line 278
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v54           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v64           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v68           #location:Lcom/android/server/LocationManagerService;
    .end local v75           #notification:Lcom/android/server/NotificationManagerService;
    .end local v80           #profile:Lcom/android/server/ProfileManagerService;
    .end local v87           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v91           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v98           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v79       #power:Lcom/android/server/PowerManagerService;
    :catch_3e
    move-exception v60

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v40

    .end local v40           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v79

    .end local v79           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_36

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v53       #cryptState:Ljava/lang/String;
    .restart local v63       #firstBoot:Z
    .restart local v67       #lights:Lcom/android/server/LightsService;
    .restart local v77       #onlyCore:Z
    :catch_3f
    move-exception v60

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v40

    .end local v40           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v66, v67

    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_36

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    :catch_40
    move-exception v60

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v66, v67

    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_36

    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v42       #bluetooth:Landroid/server/BluetoothService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    :catch_41
    move-exception v60

    move-object/from16 v41, v42

    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v66, v67

    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_36

    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v42       #bluetooth:Landroid/server/BluetoothService;
    .restart local v44       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    :catch_42
    move-exception v60

    move-object/from16 v43, v44

    .end local v44           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v43       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v41, v42

    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v66, v67

    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_36

    .end local v56           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v57       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    :catch_43
    move-exception v60

    move-object/from16 v56, v57

    .end local v57           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v56       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    move-object/from16 v66, v67

    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_36

    .end local v51           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .end local v56           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v52       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v57       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    :catch_44
    move-exception v60

    move-object/from16 v51, v52

    .end local v52           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v51       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    move-object/from16 v56, v57

    .end local v57           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v56       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    move-object/from16 v66, v67

    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_36

    .end local v53           #cryptState:Ljava/lang/String;
    .end local v63           #firstBoot:Z
    .end local v77           #onlyCore:Z
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v54       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v64       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v68       #location:Lcom/android/server/LocationManagerService;
    .restart local v75       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v80       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v87       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v91       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v98       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_16
    move-object/from16 v8, v71

    .end local v71           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_30
.end method
