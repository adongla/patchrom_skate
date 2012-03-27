.class public Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BaseSelectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/BaseSelectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AppExpandableListAdapter"
.end annotation


# instance fields
.field private final mChildResourceId:I

.field private final mGroupResourceId:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/miui/backup/ui/BaseSelectList;


# direct methods
.method public constructor <init>(Lcom/miui/backup/ui/BaseSelectList;Landroid/content/Context;II)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "groupResourceId"
    .parameter "childResourceId"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 445
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 446
    iput p3, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mGroupResourceId:I

    .line 447
    iput p4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mChildResourceId:I

    .line 448
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mPaint:Landroid/graphics/Paint;

    .line 449
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 450
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v1, 0x1

    .line 454
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-nez v0, :cond_1

    .line 455
    if-nez p1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    .line 457
    :cond_0
    if-ne p1, v1, :cond_3

    .line 458
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 461
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 463
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 465
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 470
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 478
    if-nez p4, :cond_1

    .line 479
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v8, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mChildResourceId:I

    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 484
    .local v6, view:Landroid/view/View;
    :goto_0
    const/4 v2, 0x0

    .line 485
    .local v2, appInfo:Lcom/miui/backup/AppInfo;
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v7}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v7

    if-nez v7, :cond_3

    .line 486
    if-nez p1, :cond_2

    .line 487
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v7, v7, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v2, Lcom/miui/backup/AppInfo;

    .line 497
    .restart local v2       #appInfo:Lcom/miui/backup/AppInfo;
    :cond_0
    :goto_1
    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 498
    .local v4, appTitle:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mPaint:Landroid/graphics/Paint;

    iget-object v8, v2, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    const/4 v9, 0x1

    const/high16 v10, 0x4334

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v5

    .line 499
    .local v5, count:I
    iget-object v7, v2, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v5, :cond_5

    .line 500
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    :goto_2
    const v7, 0x1020010

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 506
    .local v3, appSummary:Landroid/widget/TextView;
    iget-object v7, v2, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    const v7, 0x1020001

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 509
    .local v1, appCheck:Landroid/widget/CheckBox;
    iget-boolean v7, v2, Lcom/miui/backup/AppInfo;->checked:Z

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 510
    return-object v6

    .line 481
    .end local v1           #appCheck:Landroid/widget/CheckBox;
    .end local v2           #appInfo:Lcom/miui/backup/AppInfo;
    .end local v3           #appSummary:Landroid/widget/TextView;
    .end local v4           #appTitle:Landroid/widget/TextView;
    .end local v5           #count:I
    .end local v6           #view:Landroid/view/View;
    :cond_1
    move-object/from16 v6, p4

    .restart local v6       #view:Landroid/view/View;
    goto :goto_0

    .line 488
    .restart local v2       #appInfo:Lcom/miui/backup/AppInfo;
    :cond_2
    const/4 v7, 0x1

    if-ne p1, v7, :cond_0

    .line 489
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v7, v7, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v2, Lcom/miui/backup/AppInfo;

    .restart local v2       #appInfo:Lcom/miui/backup/AppInfo;
    goto :goto_1

    .line 491
    :cond_3
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v7}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 492
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v7, v7, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v2, Lcom/miui/backup/AppInfo;

    .restart local v2       #appInfo:Lcom/miui/backup/AppInfo;
    goto :goto_1

    .line 493
    :cond_4
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v7}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 494
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v7, v7, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v2, Lcom/miui/backup/AppInfo;

    .restart local v2       #appInfo:Lcom/miui/backup/AppInfo;
    goto/16 :goto_1

    .line 502
    .restart local v4       #appTitle:Landroid/widget/TextView;
    .restart local v5       #count:I
    :cond_5
    iget-object v7, v2, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x1

    .line 515
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-nez v0, :cond_1

    .line 516
    if-nez p1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 526
    :goto_0
    return v0

    .line 518
    :cond_0
    if-ne p1, v1, :cond_3

    .line 519
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 522
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 524
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 526
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x1

    .line 531
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-nez v0, :cond_1

    .line 532
    if-nez p1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    .line 542
    :goto_0
    return-object v0

    .line 534
    :cond_0
    if-ne p1, v1, :cond_3

    .line 535
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 538
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 540
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 542
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-nez v0, :cond_0

    .line 548
    const/4 v0, 0x2

    .line 550
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 555
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x7f070077

    const v9, 0x7f070076

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 561
    move v1, p1

    .line 564
    .local v1, gPosition:I
    if-nez p3, :cond_1

    .line 565
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mGroupResourceId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 570
    .local v3, view:Landroid/view/View;
    :goto_0
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 571
    .local v2, title:Landroid/widget/TextView;
    const v4, 0x1020001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 573
    .local v0, checkAll:Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-nez v4, :cond_5

    .line 574
    if-nez p1, :cond_3

    .line 575
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 576
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$200(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$200(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v5, v5, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 577
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 605
    :cond_0
    :goto_1
    new-instance v4, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter$1;-><init>(Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;I)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    return-object v3

    .line 567
    .end local v0           #checkAll:Landroid/widget/CheckBox;
    .end local v2           #title:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    move-object v3, p3

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 579
    .restart local v0       #checkAll:Landroid/widget/CheckBox;
    .restart local v2       #title:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 581
    :cond_3
    if-ne p1, v7, :cond_0

    .line 582
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    .line 583
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$300(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$300(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v5, v5, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 584
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 586
    :cond_4
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 589
    :cond_5
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-ne v4, v7, :cond_7

    .line 590
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 591
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$200(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$200(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v5, v5, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 592
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 594
    :cond_6
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 596
    :cond_7
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 597
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    .line 598
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$300(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$300(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v5, v5, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 599
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 601
    :cond_8
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 623
    const/4 v0, 0x1

    return v0
.end method
