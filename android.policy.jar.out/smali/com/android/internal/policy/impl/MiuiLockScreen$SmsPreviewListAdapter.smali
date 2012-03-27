.class Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;
.super Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;
.source "MiuiLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsPreviewListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    .line 1300
    const v0, 0x3030015

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 1301
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1330
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;

    .line 1331
    .local v11, views:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1332
    .local v1, address:Ljava/lang/String;
    const/4 v12, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1333
    .local v3, date:J
    const/4 v12, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1334
    .local v9, type:I
    const/4 v12, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1335
    .local v8, text:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 1336
    const-string v8, ""

    .line 1340
    :cond_0
    const/4 v12, 0x7

    if-le v9, v12, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1342
    const/4 v12, 0x5

    :try_start_0
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1343
    .local v2, charset:Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 1344
    new-instance v10, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v13, "iso-8859-1"

    invoke-virtual {v8, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v10, v12, v13}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 1347
    .local v10, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1353
    .end local v2           #charset:Ljava/lang/Integer;
    .end local v10           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getContact(Ljava/lang/String;)Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;

    move-result-object v5

    .line 1354
    .local v5, info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    if-eqz v5, :cond_2

    iget-object v12, v5, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1355
    iget-object v12, v11, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;->line1View:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v5, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getValidatedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1363
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "pref_key_enable_notification_body"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const-string v12, "com.android.mms"

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lmiui/net/FirewallManager;->isAccessControlProtected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    new-instance v12, Lmiui/security/ChooseLockSettingsHelper;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Lmiui/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v12

    if-nez v12, :cond_4

    const/4 v7, 0x1

    .line 1370
    .local v7, showBodySetting:Z
    :goto_2
    iget-object v12, v11, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;->textView:Landroid/widget/TextView;

    if-eqz v7, :cond_5

    .end local v8           #text:Ljava/lang/String;
    :goto_3
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    iget-object v12, v11, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;->dateView:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->formatDate(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1372
    return-void

    .line 1357
    .end local v7           #showBodySetting:Z
    .restart local v8       #text:Ljava/lang/String;
    :cond_2
    iget-object v12, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12, v1}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1358
    .local v6, location:Ljava/lang/String;
    iget-object v13, v11, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;->line1View:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getValidatedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_4
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getValidatedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "  "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 1363
    .end local v6           #location:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 1370
    .restart local v7       #showBodySetting:Z
    :cond_5
    const-string v8, ""

    goto :goto_3

    .line 1349
    .end local v5           #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    .end local v7           #showBodySetting:Z
    :catch_0
    move-exception v12

    goto/16 :goto_0
.end method

.method public markRead(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "position"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 1305
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1306
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1307
    .local v1, id:J
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1309
    .local v3, type:I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1310
    .local v4, values:Landroid/content/ContentValues;
    const/4 v5, 0x7

    if-ge v3, v5, :cond_0

    .line 1311
    const-string v5, "seen"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1312
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id=?"

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1326
    :goto_0
    return-void

    .line 1319
    :cond_0
    const-string v5, "seen"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1320
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id=?"

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1376
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1379
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;)V

    .line 1380
    .local v1, views:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;
    const v2, 0x30b004f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;->line1View:Landroid/widget/TextView;

    .line 1381
    const v2, 0x30b005b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;->textView:Landroid/widget/TextView;

    .line 1382
    const v2, 0x30b0025

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter$ListItemViews;->dateView:Landroid/widget/TextView;

    .line 1383
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1385
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1390
    invoke-super {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->onContentChanged()V

    .line 1391
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_key_enable_notification"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_key_enable_wake_up_screen"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x61a8

    invoke-interface {v0, v1}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 1415
    :cond_0
    return-void
.end method

.method protected onQueryResultCount(I)V
    .locals 4
    .parameter "count"

    .prologue
    const/4 v3, 0x2

    .line 1419
    if-lez p1, :cond_1

    .line 1420
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$400(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/SlidingPanel;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/miui/internal/policy/impl/SlidingPanel;->setSliderText(ILjava/lang/String;)V

    .line 1429
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$400(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/SlidingPanel;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->getSliderTextVisibility(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1422
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$400(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/SlidingPanel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/miui/internal/policy/impl/SlidingPanel;->setSliderText(ILjava/lang/String;)V

    .line 1426
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.DISMISS_NEW_MESSAGE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1427
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
