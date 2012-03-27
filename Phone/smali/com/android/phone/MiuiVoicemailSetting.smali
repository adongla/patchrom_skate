.class public Lcom/android/phone/MiuiVoicemailSetting;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "MiuiVoicemailSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field static final FORWARDING_SETTINGS_REASONS:[I

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field mChangingVMorFwdDueToProviderChange:Z

.field mCurrentDialogId:I

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field mVMChangeCompletedSuccesfully:Z

.field mVMOrFwdSetError:I

.field mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/MiuiVoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/MiuiVoicemailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 163
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/MiuiVoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 249
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 255
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 262
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 267
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 272
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 277
    iput v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mCurrentDialogId:I

    .line 283
    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProviderSettingsForced:Z

    .line 289
    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 295
    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 301
    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mFwdChangesRequireRollback:Z

    .line 307
    iput v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMOrFwdSetError:I

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    .line 343
    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 729
    new-instance v0, Lcom/android/phone/MiuiVoicemailSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiVoicemailSetting$1;-><init>(Lcom/android/phone/MiuiVoicemailSetting;)V

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 898
    new-instance v0, Lcom/android/phone/MiuiVoicemailSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiVoicemailSetting$2;-><init>(Lcom/android/phone/MiuiVoicemailSetting;)V

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 958
    new-instance v0, Lcom/android/phone/MiuiVoicemailSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiVoicemailSetting$3;-><init>(Lcom/android/phone/MiuiVoicemailSetting;)V

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiVoicemailSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiVoicemailSetting;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiVoicemailSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiVoicemailSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiVoicemailSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiVoicemailSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiVoicemailSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method private checkForwardingCompleted()Z
    .locals 4

    .prologue
    .line 996
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 997
    const/4 v2, 0x1

    .line 1009
    .local v2, result:Z
    :cond_0
    :goto_0
    return v2

    .line 1001
    .end local v2           #result:Z
    :cond_1
    const/4 v2, 0x1

    .line 1002
    .restart local v2       #result:Z
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1003
    .local v1, reason:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1004
    const/4 v2, 0x0

    .line 1005
    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1015
    const/4 v3, 0x0

    .line 1016
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1018
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1019
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1020
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1021
    .local v1, exception:Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 1022
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1023
    if-nez v3, :cond_1

    .line 1024
    const-string v3, ""

    .line 1029
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1           #exception:Ljava/lang/Throwable;
    :cond_1
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1036
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1037
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, msg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1039
    const-string v0, ""

    .line 1043
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    .line 1563
    :goto_0
    return-void

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 675
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiVoicemailSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :goto_0
    return-void

    .line 676
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1566
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1567
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #key:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #key:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 5

    .prologue
    .line 1050
    const/4 v2, 0x1

    .line 1051
    .local v2, success:Z
    const/4 v1, 0x0

    .line 1052
    .local v1, fwdFailure:Z
    const-string v0, ""

    .line 1053
    .local v0, exceptionMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 1054
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1055
    if-eqz v0, :cond_0

    .line 1056
    const/4 v2, 0x0

    .line 1057
    const/4 v1, 0x1

    .line 1060
    :cond_0
    if-eqz v2, :cond_1

    .line 1061
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_1

    .line 1063
    const/4 v2, 0x0

    .line 1066
    :cond_1
    if-eqz v2, :cond_2

    .line 1068
    const/16 v3, 0x258

    invoke-direct {p0, v3}, Lcom/android/phone/MiuiVoicemailSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1069
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->updateVoiceNumberField()V

    .line 1079
    :goto_0
    return-void

    .line 1071
    :cond_2
    if-eqz v1, :cond_3

    .line 1072
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change FW failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MiuiVoicemailSetting;->log(Ljava/lang/String;)V

    .line 1073
    const/16 v3, 0x191

    invoke-direct {p0, v3}, Lcom/android/phone/MiuiVoicemailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0

    .line 1075
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change VM failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MiuiVoicemailSetting;->log(Ljava/lang/String;)V

    .line 1076
    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/android/phone/MiuiVoicemailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 1094
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1095
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiVoicemailSetting;->showVMDialog(I)V

    .line 1096
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MiuiVoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MiuiVoicemailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;)V

    .line 641
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2
    .parameter "msgId"

    .prologue
    const/4 v1, 0x0

    .line 1082
    iget-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    .line 1083
    iput p1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMOrFwdSetError:I

    .line 1084
    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1085
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->switchToPreviousVoicemailProvider()V

    .line 1091
    :goto_0
    return-void

    .line 1088
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1089
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiVoicemailSetting;->showVMDialog(I)V

    .line 1090
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .parameter "infos"
    .parameter "reason"

    .prologue
    .line 822
    const/4 v4, 0x0

    .line 823
    .local v4, result:Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    .line 824
    move-object v0, p1

    .local v0, arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 825
    .local v2, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_1

    .line 826
    move-object v4, v2

    .line 831
    .end local v0           #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1           #i$:I
    .end local v2           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3           #len$:I
    :cond_0
    return-object v4

    .line 824
    .restart local v0       #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1       #i$:I
    .restart local v2       #info:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initVoiceMailProviders()V
    .locals 22

    .prologue
    .line 1372
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "vm_numbers"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 1376
    const/4 v14, 0x0

    .line 1377
    .local v14, providerToIgnore:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1379
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1380
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1383
    :cond_0
    if-eqz v14, :cond_1

    .line 1384
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/MiuiVoicemailSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    .line 1388
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->clear()V

    .line 1391
    const v18, 0x7f0c008d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1392
    .local v10, myCarrier:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, ""

    new-instance v20, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v10, v2}, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;-><init>(Lcom/android/phone/MiuiVoicemailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1396
    .local v12, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1397
    .local v7, intent:Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1398
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 1399
    .local v15, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v9, v18, 0x1

    .line 1403
    .local v9, len:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 1404
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 1405
    .local v16, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1406
    .local v3, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/MiuiVoicemailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1408
    .local v8, key:Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1410
    add-int/lit8 v9, v9, -0x1

    .line 1403
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1413
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1414
    .local v11, nameForDisplay:Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1415
    .local v13, providerIntent:Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1416
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v13}, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;-><init>(Lcom/android/phone/MiuiVoicemailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1426
    .end local v3           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    .end local v8           #key:Ljava/lang/String;
    .end local v11           #nameForDisplay:Ljava/lang/String;
    .end local v13           #providerIntent:Landroid/content/Intent;
    .end local v16           #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    new-array v4, v9, [Ljava/lang/String;

    .line 1427
    .local v4, entries:[Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1428
    .local v17, values:[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v10, v4, v18

    .line 1429
    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v17, v18

    .line 1430
    const/4 v5, 0x1

    .line 1431
    .local v5, entryIdx:I
    const/4 v6, 0x0

    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_5

    .line 1432
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1433
    .restart local v8       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1431
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1436
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v4, v5

    .line 1437
    aput-object v8, v17, v5

    .line 1438
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1441
    .end local v8           #key:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1444
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 1446
    return-void
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2
    .parameter "oldInfo"
    .parameter "newInfo"

    .prologue
    .line 836
    const/4 v0, 0x1

    .line 837
    .local v0, result:Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 840
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 841
    const/4 v0, 0x0

    .line 844
    :cond_0
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;
    .locals 10
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1517
    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#VMNumber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1519
    if-nez v3, :cond_0

    .line 1548
    :goto_0
    return-object v0

    .line 1524
    :cond_0
    sget-object v0, Lcom/android/phone/MiuiVoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "#FWDSettings"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1526
    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#Length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1527
    if-lez v2, :cond_2

    .line 1528
    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    move v0, v1

    .line 1529
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_1

    .line 1530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#Setting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1531
    new-instance v6, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v6, v2, v0

    .line 1532
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Status"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1534
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Reason"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1537
    aget-object v6, v2, v0

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1538
    aget-object v6, v2, v0

    const/16 v7, 0x91

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1539
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Number"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1541
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "#Time"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x14

    invoke-interface {v7, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1529
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    move-object v0, v2

    .line 1546
    :cond_2
    new-instance v1, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MiuiVoicemailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    move-object v0, v1

    .line 1548
    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1331
    const-string v0, "VoicemailSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .parameter "ai"

    .prologue
    .line 1449
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1479
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v1, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1482
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiVoicemailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;

    move-result-object v1

    .line 1483
    invoke-virtual {p2, v1}, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#VMNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#FWDSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1491
    iget-object v3, p2, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1492
    sget-object v4, Lcom/android/phone/MiuiVoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v3, v4, :cond_2

    .line 1493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    array-length v5, v3

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1494
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 1495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1496
    aget-object v5, v3, v0

    .line 1497
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1498
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Reason"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1499
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1500
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "#Time"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1494
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1503
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#Length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1505
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    .line 848
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 849
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 850
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;)V
    .locals 6
    .parameter "key"
    .parameter "newSettings"

    .prologue
    const/4 v5, 0x0

    .line 686
    iget-object v1, p2, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 688
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 689
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 692
    :cond_0
    iget-object v1, p2, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 698
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 700
    sget-object v1, Lcom/android/phone/MiuiVoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 704
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/MiuiVoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v1, v2, :cond_2

    .line 705
    const/16 v1, 0x2bc

    invoke-direct {p0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->showVMDialog(I)V

    .line 727
    :goto_0
    return-void

    .line 709
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MiuiVoicemailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;)V

    .line 710
    iput-boolean v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 711
    iput-boolean v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mFwdChangesRequireRollback:Z

    .line 712
    iput v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMOrFwdSetError:I

    .line 713
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 714
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 717
    sget-object v1, Lcom/android/phone/MiuiVoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 718
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/phone/MiuiVoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 719
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 720
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/MiuiVoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 723
    :cond_3
    const/16 v1, 0x642

    invoke-direct {p0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 725
    .end local v0           #i:I
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 855
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 856
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 857
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/MiuiVoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_3

    .line 858
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->resetForwardingChangeState()V

    .line 859
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 860
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v7, v0, v8

    .line 862
    .local v7, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/phone/MiuiVoicemailSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v6

    .line 865
    .local v6, doUpdate:Z
    if-eqz v6, :cond_0

    .line 867
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 869
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    :goto_1
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v10, 0x1f5

    iget v11, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v5, v10, v11, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 859
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v1, v9

    .line 869
    goto :goto_1

    .line 880
    .end local v6           #doUpdate:Z
    .end local v7           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    const/16 v0, 0x641

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    .line 885
    .end local v8           #i:I
    :goto_2
    return-void

    .line 883
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->setVMNumberWithCarrier()V

    goto :goto_2
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForeground:Z

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiVoicemailSetting;->showDialog(I)V

    .line 671
    :cond_0
    return-void
.end method

.method private showVMDialog(I)V
    .locals 1
    .parameter "msgStatus"

    .prologue
    .line 1248
    sparse-switch p1, :sswitch_data_0

    .line 1270
    :goto_0
    return-void

    .line 1252
    :sswitch_0
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1255
    :sswitch_1
    const/16 v0, 0x5dd

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1258
    :sswitch_2
    const/16 v0, 0x5de

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1261
    :sswitch_3
    const/16 v0, 0x578

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1264
    :sswitch_4
    const/16 v0, 0x640

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1248
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .parameter "preference"

    .prologue
    .line 1461
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 1462
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 1463
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1464
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1469
    :cond_0
    return-void

    .line 1462
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 468
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 469
    iget-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_5

    .line 471
    :cond_0
    const/16 v0, 0x643

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    .line 472
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;

    move-result-object v9

    .line 474
    .local v9, prevSettings:Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;
    iget-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, v9, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 482
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_6

    .line 484
    if-nez v9, :cond_3

    const/4 v8, 0x0

    .line 486
    .local v8, prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    :goto_0
    if-eqz v8, :cond_6

    .line 487
    iget-object v11, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 489
    .local v11, results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->resetForwardingChangeState()V

    .line 490
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v8

    if-ge v7, v0, :cond_6

    .line 491
    aget-object v6, v8, v7

    .line 495
    .local v6, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .line 496
    .local v10, result:Landroid/os/AsyncResult;
    if-eqz v10, :cond_2

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x3

    :goto_2
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v13, 0x1f5

    invoke-virtual {v5, v13, v7, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 490
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 484
    .end local v6           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #i:I
    .end local v8           #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v10           #result:Landroid/os/AsyncResult;
    .end local v11           #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_3
    iget-object v8, v9, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    goto :goto_0

    .restart local v6       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v7       #i:I
    .restart local v8       #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v10       #result:Landroid/os/AsyncResult;
    .restart local v11       #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_4
    move v1, v12

    .line 498
    goto :goto_2

    .line 513
    .end local v6           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #i:I
    .end local v8           #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9           #prevSettings:Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;
    .end local v10           #result:Landroid/os/AsyncResult;
    .end local v11           #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->onRevertDone()V

    .line 516
    :cond_6
    return-void
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 9
    .parameter "currentProviderSetting"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1340
    move-object v0, p1

    .line 1341
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;

    .line 1347
    .local v1, provider:Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;
    if-nez v1, :cond_0

    .line 1348
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v4, 0x7f0c008c

    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiVoicemailSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1349
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1350
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1351
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 1360
    :goto_0
    return-void

    .line 1353
    :cond_0
    iget-object v2, v1, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 1354
    .local v2, providerName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1355
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c01d4

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1357
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1358
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v4, v1, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 3

    .prologue
    .line 1103
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v1, :cond_0

    .line 1115
    :goto_0
    return-void

    .line 1107
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1108
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1109
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1111
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1112
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1114
    .local v0, summary:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1112
    .end local v0           #summary:Ljava/lang/String;
    :cond_2
    const v1, 0x7f0c01d2

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 10
    .parameter "ar"
    .parameter "idx"

    .prologue
    const/16 v6, 0x642

    const/4 v9, 0x0

    .line 743
    const/4 v2, 0x0

    .line 744
    .local v2, error:Ljava/lang/Throwable;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 747
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 749
    :cond_0
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 752
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #error:Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;

    .line 756
    .restart local v2       #error:Ljava/lang/Throwable;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v5, :cond_3

    .line 819
    :cond_2
    :goto_0
    return-void

    .line 762
    :cond_3
    if-eqz v2, :cond_4

    .line 764
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 765
    invoke-direct {p0, v6}, Lcom/android/phone/MiuiVoicemailSetting;->dismissDialogSafely(I)V

    .line 766
    const/16 v5, 0x192

    invoke-direct {p0, v5}, Lcom/android/phone/MiuiVoicemailSetting;->showVMDialog(I)V

    goto :goto_0

    .line 771
    :cond_4
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 772
    .local v0, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 773
    .local v3, fi:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 774
    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    .line 775
    aget-object v3, v0, v4

    .line 779
    :cond_5
    if-nez v3, :cond_a

    .line 784
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v3           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 785
    .restart local v3       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 786
    sget-object v5, Lcom/android/phone/MiuiVoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 787
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 796
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v3, v5, p2

    .line 799
    const/4 v1, 0x1

    .line 800
    .local v1, done:Z
    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_7

    .line 801
    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v4

    if-nez v5, :cond_c

    .line 802
    const/4 v1, 0x0

    .line 806
    :cond_7
    if-eqz v1, :cond_2

    .line 808
    invoke-direct {p0, v6}, Lcom/android/phone/MiuiVoicemailSetting;->dismissDialogSafely(I)V

    .line 809
    iget-boolean v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v5, :cond_8

    .line 810
    const-string v5, ""

    new-instance v6, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MiuiVoicemailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/android/phone/MiuiVoicemailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;)V

    .line 813
    iput-boolean v9, p0, Lcom/android/phone/MiuiVoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 815
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0

    .line 773
    .end local v1           #done:Z
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 790
    :cond_a
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 791
    :cond_b
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_2

    .line 800
    .restart local v1       #done:Z
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 535
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 536
    const/4 v10, 0x0

    .line 540
    .local v10, failure:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProviderSettingsForced:Z

    .line 541
    .local v14, isVMProviderSettingsForced:Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProviderSettingsForced:Z

    .line 543
    const/16 v17, 0x0

    .line 544
    .local v17, vmNum:Ljava/lang/String;
    const/4 v2, -0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    .line 546
    const/4 v10, 0x1

    .line 574
    :cond_0
    :goto_0
    if-eqz v10, :cond_7

    .line 576
    if-eqz v14, :cond_1

    .line 577
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->switchToPreviousVoicemailProvider()V

    .line 628
    .end local v10           #failure:Z
    .end local v14           #isVMProviderSettingsForced:Z
    .end local v17           #vmNum:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 548
    .restart local v10       #failure:Z
    .restart local v14       #isVMProviderSettingsForced:Z
    .restart local v17       #vmNum:Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    .line 550
    const/4 v10, 0x1

    goto :goto_0

    .line 552
    :cond_3
    const-string v2, "com.android.phone.Signout"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 554
    if-eqz v14, :cond_4

    .line 556
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 558
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v16

    .line 560
    .local v16, victim:Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v13, i:Landroid/content/Intent;
    const-string v2, "com.android.phone.ProviderToIgnore"

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const/high16 v2, 0x400

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 563
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/MiuiVoicemailSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 567
    .end local v13           #i:Landroid/content/Intent;
    .end local v16           #victim:Ljava/lang/String;
    :cond_5
    const-string v2, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 568
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 570
    :cond_6
    const/4 v10, 0x1

    goto :goto_0

    .line 583
    :cond_7
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/MiuiVoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 584
    const-string v2, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 588
    .local v11, fwdNum:Ljava/lang/String;
    const-string v2, "com.android.phone.ForwardingNumberTime"

    const/16 v3, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 592
    .local v12, fwdNumTime:I
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v11, v12}, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MiuiVoicemailSetting;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/MiuiVoicemailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;)V

    goto :goto_1

    .line 597
    .end local v10           #failure:Z
    .end local v11           #fwdNum:Ljava/lang/String;
    .end local v12           #fwdNumTime:I
    .end local v14           #isVMProviderSettingsForced:Z
    .end local v17           #vmNum:Ljava/lang/String;
    :cond_8
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 602
    const/4 v8, 0x0

    .line 603
    .local v8, cursor:Landroid/database/Cursor;
    const-string v15, ""

    .line 605
    .local v15, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/phone/MiuiVoicemailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 607
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_a

    .line 616
    :cond_9
    if-eqz v8, :cond_1

    .line 617
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 611
    :cond_a
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    .line 616
    if-eqz v8, :cond_b

    .line 617
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 621
    :cond_b
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 623
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v15}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 612
    :catch_0
    move-exception v9

    .line 613
    .local v9, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "VoicemailSetting"

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 616
    if-eqz v8, :cond_1

    .line 617
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 616
    .end local v9           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_c

    .line 617
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 621
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v1, 0x5de

    .line 1212
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1213
    packed-switch p2, :pswitch_data_0

    .line 1241
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->finish()V

    .line 1244
    :cond_1
    :goto_1
    return-void

    .line 1219
    :pswitch_1
    iget v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_0

    .line 1222
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    .line 1227
    :pswitch_2
    iget v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_2

    .line 1230
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1

    .line 1232
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->finish()V

    goto :goto_1

    .line 1213
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 1278
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1281
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1283
    const v0, 0x7f050020

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->addPreferencesFromResource(I)V

    .line 1286
    const-string v0, "button_voicemail"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1287
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1289
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1290
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0c016b

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1293
    :cond_0
    const-string v0, "button_voicemail_provider"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1294
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1296
    const-string v0, "button_voicemail_setting"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1298
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->initVoiceMailProviders()V

    .line 1307
    :cond_1
    if-nez p1, :cond_2

    .line 1308
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 1310
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 1311
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1318
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->updateVoiceNumberField()V

    .line 1319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProviderSettingsForced:Z

    .line 1321
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 1322
    return-void

    .line 1313
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1314
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const/16 v9, 0x643

    const/16 v8, 0x641

    const/4 v7, 0x0

    const v6, 0x7f0c0082

    .line 1135
    const/16 v5, 0x5dc

    if-eq p1, v5, :cond_0

    const/16 v5, 0x578

    if-eq p1, v5, :cond_0

    const/16 v5, 0x5dd

    if-eq p1, v5, :cond_0

    const/16 v5, 0x5de

    if-eq p1, v5, :cond_0

    const/16 v5, 0x640

    if-ne p1, v5, :cond_1

    .line 1139
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1142
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c007a

    .line 1143
    .local v4, titleId:I
    sparse-switch p1, :sswitch_data_0

    .line 1174
    const v3, 0x7f0c007f

    .line 1177
    .local v3, msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1181
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiVoicemailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1182
    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiVoicemailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1183
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1184
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1188
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1204
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :goto_1
    return-object v1

    .line 1145
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    .restart local v4       #titleId:I
    :sswitch_0
    const v3, 0x7f0c0087

    .line 1146
    .restart local v3       #msgId:I
    const v4, 0x7f0c0052

    .line 1148
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1153
    .end local v3           #msgId:I
    :sswitch_1
    const v3, 0x7f0c008b

    .line 1154
    .restart local v3       #msgId:I
    const v4, 0x7f0c0052

    .line 1156
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1159
    .end local v3           #msgId:I
    :sswitch_2
    const v3, 0x7f0c0088

    .line 1161
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1164
    .end local v3           #msgId:I
    :sswitch_3
    const v3, 0x7f0c0089

    .line 1166
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1169
    .end local v3           #msgId:I
    :sswitch_4
    const v3, 0x7f0c008a

    .line 1170
    .restart local v3       #msgId:I
    const v5, 0x7f0c01cd

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1171
    const v5, 0x7f0c01ce

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1191
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :cond_1
    if-eq p1, v8, :cond_2

    const/16 v5, 0x642

    if-eq p1, v5, :cond_2

    if-ne p1, v9, :cond_5

    .line 1193
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1194
    .local v1, dialog:Landroid/app/ProgressDialog;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1195
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1196
    if-ne p1, v8, :cond_3

    const v5, 0x7f0c007c

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiVoicemailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne p1, v9, :cond_4

    const v5, 0x7f0c007d

    goto :goto_2

    :cond_4
    const v5, 0x7f0c007b

    goto :goto_2

    .line 1204
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_5
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_1

    .line 1143
    nop

    :sswitch_data_0
    .sparse-switch
        0x578 -> :sswitch_1
        0x5dc -> :sswitch_2
        0x5dd -> :sswitch_3
        0x5de -> :sswitch_4
        0x640 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 2
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 414
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    instance-of v1, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_0

    .line 418
    move-object v0, p1

    .line 420
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v1, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->handleVMBtnClickRequest()V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 432
    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_1

    .line 436
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->updateVoiceNumberField()V

    .line 449
    :cond_0
    :goto_0
    return-object v1

    .line 440
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, vmDisplay:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c0053

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiVoicemailSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 1572
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1573
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1574
    const-class v0, Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 1575
    const/4 v0, 0x1

    .line 1577
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 333
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForeground:Z

    .line 335
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x1

    .line 371
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    .local v0, currentProviderKey:Ljava/lang/String;
    move-object v1, p2

    .line 373
    check-cast v1, Ljava/lang/String;

    .line 376
    .local v1, newProviderKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    .end local v0           #currentProviderKey:Ljava/lang/String;
    .end local v1           #newProviderKey:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 380
    .restart local v0       #currentProviderKey:Ljava/lang/String;
    .restart local v1       #newProviderKey:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 382
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 384
    invoke-direct {p0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;

    move-result-object v2

    .line 393
    .local v2, newProviderSettings:Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;
    if-nez v2, :cond_2

    .line 396
    iput-boolean v4, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProviderSettingsForced:Z

    .line 397
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v3}, Lcom/android/phone/MiuiVoicemailSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0

    .line 401
    :cond_2
    iput-boolean v4, p0, Lcom/android/phone/MiuiVoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 402
    invoke-direct {p0, v1, v2}, Lcom/android/phone/MiuiVoicemailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 352
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v1, :cond_0

    .line 359
    :goto_0
    return v0

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_1

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 356
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/MiuiVoicemailSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 1128
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1129
    iput p1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mCurrentDialogId:I

    .line 1130
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1326
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 1327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForeground:Z

    .line 1328
    return-void
.end method

.method onRevertDone()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 522
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->updateVoiceNumberField()V

    .line 523
    iget v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    .line 524
    iget v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showVMDialog(I)V

    .line 525
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMOrFwdSetError:I

    .line 527
    :cond_0
    return-void
.end method

.method setVMNumberWithCarrier()V
    .locals 5

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 893
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 456
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 458
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 464
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
