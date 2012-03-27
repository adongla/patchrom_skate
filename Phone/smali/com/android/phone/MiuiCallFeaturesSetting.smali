.class public Lcom/android/phone/MiuiCallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "MiuiCallFeaturesSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonCrystalTalk:Landroid/preference/ListPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 308
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 309
    .local v0, buttonTtyMode:I
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 315
    .local v1, settingsTtyMode:I
    if-eq v0, v1, :cond_0

    .line 316
    packed-switch v0, :pswitch_data_0

    .line 325
    const/4 v0, 0x0

    .line 328
    :goto_0
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, v0}, Lcom/android/phone/MiuiCallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 330
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v2, ttyModeChanged:Landroid/content/Intent;
    const-string v3, "ttyPreferredMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiCallFeaturesSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 334
    .end local v2           #ttyModeChanged:Landroid/content/Intent;
    :cond_0
    return-void

    .line 321
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .parameter "TtyMode"

    .prologue
    const/4 v3, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 346
    iget-object v1, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 347
    iget-object v1, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 349
    :goto_0
    return-void

    .line 343
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 146
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 149
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 150
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 152
    .local v1, prefScreen:Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 153
    .local v0, phoneType:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 154
    const-string v3, "button_call_forwarding"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 155
    const-string v3, "button_call_waiting"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 156
    const-string v3, "button_caller_id"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 165
    :goto_0
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallRecording()Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    const-string v3, "button_auto_record_call"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 167
    const-string v3, "button_call_recording_notification"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 170
    :cond_0
    const-string v3, "button_dtmf_settings"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 171
    const-string v3, "button_auto_retry"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 172
    const-string v3, "button_hac"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 173
    const-string v3, "button_tty_mode"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 174
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 176
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 182
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 184
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    .line 191
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 192
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v3, :cond_4

    .line 199
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 200
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    :cond_4
    :goto_4
    const-string v3, "button_crystal_talk_settings"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    .line 208
    sget-boolean v3, Lmiui/os/Build;->IS_MILESTONE:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lmiui/os/Build;->IS_DEFY:Z

    if-eqz v3, :cond_c

    .line 209
    :cond_5
    new-instance v2, Lcom/android/phone/MiuiVoiceQualityUtility;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiVoiceQualityUtility;-><init>(Landroid/content/Context;)V

    .line 210
    .local v2, util:Lcom/android/phone/MiuiVoiceQualityUtility;
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Lcom/android/phone/MiuiVoiceQualityUtility;->getVoiceQualitySetting()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 211
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 217
    .end local v2           #util:Lcom/android/phone/MiuiVoiceQualityUtility;
    :goto_5
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 218
    return-void

    .line 157
    :cond_6
    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    .line 158
    const-string v3, "button_cdma_call_forwarding"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 159
    const-string v3, "button_cdma_cw"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 160
    const-string v3, "button_voice_privacy"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 162
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :cond_8
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 179
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto/16 :goto_1

    .line 186
    :cond_9
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 187
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 194
    :cond_a
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 195
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_3

    .line 202
    :cond_b
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 203
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    goto :goto_4

    .line 213
    :cond_c
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 214
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    goto :goto_5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 272
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 273
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 274
    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.activities.TwelveKeyDialer"

    invoke-static {p0, v1, v2}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/4 v1, 0x1

    .line 277
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 122
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, index:I
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dtmf_tone_type"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    .end local v0           #index:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 126
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_2

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MiuiCallFeaturesSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 130
    .local v2, val:I
    new-instance v1, Lcom/android/phone/MiuiVoiceQualityUtility;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiVoiceQualityUtility;-><init>(Landroid/content/Context;)V

    .line 132
    .local v1, util:Lcom/android/phone/MiuiVoiceQualityUtility;
    invoke-virtual {v1, v2}, Lcom/android/phone/MiuiVoiceQualityUtility;->updateVoiceQualityParameter(I)V

    .line 133
    invoke-virtual {v1, v2}, Lcom/android/phone/MiuiVoiceQualityUtility;->setVoiceQualitySetting(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 282
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p2, v4, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v3

    .line 284
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eq p2, v4, :cond_0

    .line 286
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_3

    .line 287
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_auto_retry"

    iget-object v6, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 291
    :cond_3
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_6

    .line 292
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v3

    .line 294
    .local v1, hac:I
    :goto_1
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_aid"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 298
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiCallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 299
    .local v0, am:Landroid/media/AudioManager;
    const-string v4, "%s=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "HACSetting"

    aput-object v6, v5, v2

    if-eqz v1, :cond_5

    const-string v2, "ON"

    :goto_2
    aput-object v2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #hac:I
    :cond_4
    move v1, v2

    .line 292
    goto :goto_1

    .line 299
    .restart local v0       #am:Landroid/media/AudioManager;
    .restart local v1       #hac:I
    :cond_5
    const-string v2, "OFF"

    goto :goto_2

    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #hac:I
    :cond_6
    move v3, v2

    .line 303
    goto :goto_0
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 222
    iget-object v9, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v9

    if-nez v9, :cond_9

    move v2, v7

    .line 223
    .local v2, fdnDisabled:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 224
    .local v5, prefScreen:Landroid/preference/PreferenceScreen;
    const-string v9, "button_call_forwarding"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 225
    .local v4, pref:Landroid/preference/Preference;
    if-eqz v4, :cond_0

    .line 226
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 228
    :cond_0
    const-string v9, "button_call_waiting"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 229
    if-eqz v4, :cond_1

    .line 230
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 232
    :cond_1
    const-string v9, "button_caller_id"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 233
    if-eqz v4, :cond_2

    .line 234
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 236
    :cond_2
    const-string v9, "button_cdma_call_forwarding"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 237
    if-eqz v4, :cond_3

    .line 238
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 240
    :cond_3
    const-string v9, "button_cdma_cw"

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 241
    if-eqz v4, :cond_4

    .line 242
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 245
    :cond_4
    iget-object v9, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v9, :cond_5

    .line 246
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dtmf_tone_type"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 248
    .local v1, dtmf:I
    iget-object v9, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v9, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 250
    .end local v1           #dtmf:I
    :cond_5
    iget-object v9, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_6

    .line 251
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "call_auto_retry"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 253
    .local v0, autoretry:I
    iget-object v10, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    move v9, v7

    :goto_1
    invoke-virtual {v10, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 255
    .end local v0           #autoretry:I
    :cond_6
    iget-object v9, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_7

    .line 256
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "hearing_aid"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 257
    .local v3, hac:I
    iget-object v9, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_b

    :goto_2
    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 259
    .end local v3           #hac:I
    :cond_7
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v7, :cond_8

    .line 260
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "preferred_tty_mode"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 263
    .local v6, settingsTtyMode:I
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, v6}, Lcom/android/phone/MiuiCallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 267
    .end local v6           #settingsTtyMode:I
    :cond_8
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 268
    return-void

    .end local v2           #fdnDisabled:Z
    .end local v4           #pref:Landroid/preference/Preference;
    .end local v5           #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_9
    move v2, v8

    .line 222
    goto/16 :goto_0

    .restart local v0       #autoretry:I
    .restart local v2       #fdnDisabled:Z
    .restart local v4       #pref:Landroid/preference/Preference;
    .restart local v5       #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_a
    move v9, v8

    .line 253
    goto :goto_1

    .end local v0           #autoretry:I
    .restart local v3       #hac:I
    :cond_b
    move v7, v8

    .line 257
    goto :goto_2
.end method
