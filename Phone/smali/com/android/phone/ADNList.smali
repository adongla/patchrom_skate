.class public Lcom/android/phone/ADNList;
.super Landroid/app/ListActivity;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ADNList$QueryHandler;
    }
.end annotation


# static fields
.field protected static final COLUMN_NAMES:[Ljava/lang/String;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field protected static final VIEW_NAMES:[I
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field


# instance fields
.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorAdapter:Landroid/widget/CursorAdapter;

.field private mEmptyText:Landroid/widget/TextView;

.field protected mInitialSelection:I

.field protected mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const-string v1, "emails"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    .line 58
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/ADNList;->VIEW_NAMES:[I

    return-void

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ADNList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/ADNList;->setAdapter()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ADNList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/ADNList;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/ADNList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/ADNList;->reQuery()V

    return-void
.end method

.method private displayProgress(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f0c013e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 176
    return-void

    .line 170
    :cond_0
    invoke-static {p0}, Lcom/android/phone/ADNList;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0141

    goto :goto_0

    :cond_1
    const v0, 0x7f0c013f

    goto :goto_0

    .line 173
    :cond_2
    const/4 v0, -0x2

    goto :goto_1
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private query()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->resolveIntent()Landroid/net/Uri;

    move-result-object v3

    .line 112
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/ADNList;->mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/ADNList$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/ADNList;->displayProgress(Z)V

    .line 115
    return-void
.end method

.method private reQuery()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/ADNList;->query()V

    .line 119
    return-void
.end method

.method private setAdapter()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-nez v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->newAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 149
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    :goto_0
    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 155
    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->setSelection(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 159
    :cond_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method protected newAdapter()Landroid/widget/CursorAdapter;
    .locals 6

    .prologue
    .line 162
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090004

    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    sget-object v5, Lcom/android/phone/ADNList;->VIEW_NAMES:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 81
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->setContentView(I)V

    .line 82
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    .line 83
    new-instance v0, Lcom/android/phone/ADNList$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ADNList$QueryHandler;-><init>(Lcom/android/phone/ADNList;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/ADNList;->mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 89
    invoke-direct {p0}, Lcom/android/phone/ADNList;->query()V

    .line 90
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 95
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 98
    :cond_0
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 103
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
