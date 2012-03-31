.class public Lcom/android/phone/MiuiSimContacts;
.super Lcom/android/phone/SimContacts;
.source "MiuiSimContacts.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiSimContacts$ModeCallback;,
        Lcom/android/phone/MiuiSimContacts$SimContactsThread;,
        Lcom/android/phone/MiuiSimContacts$SimContactOP;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SimpleCursorAdapter;

.field private mEmptyText:Landroid/widget/TextView;

.field private mList:Landroid/widget/EditableListView;

.field private mModeCallBack:Lcom/android/phone/MiuiSimContacts$ModeCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/SimContacts;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mModeCallBack:Lcom/android/phone/MiuiSimContacts$ModeCallback;

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiSimContacts;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MiuiSimContacts;->deleteOneSimContact(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiSimContacts;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiSimContacts;IILcom/android/phone/MiuiSimContacts$SimContactOP;Landroid/util/SparseBooleanArray;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/MiuiSimContacts;->doSimContactsAction(IILcom/android/phone/MiuiSimContacts$SimContactOP;Landroid/util/SparseBooleanArray;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiSimContacts;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->showDeleteSelectedDialog()V

    return-void
.end method

.method private deleteOneSimContact(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "name"
    .parameter "number"

    .prologue
    .line 40
    const-string v2, "content://icc/adn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 41
    .local v0, adnUri:Landroid/net/Uri;
    const-string v2, "tag=\'%s\' AND number=\'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/MiuiSimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private doSimContactsAction(IILcom/android/phone/MiuiSimContacts$SimContactOP;Landroid/util/SparseBooleanArray;)V
    .locals 6
    .parameter "titleRes"
    .parameter "messageRes"
    .parameter "op"
    .parameter "checkedList"

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiSimContacts;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/android/phone/MiuiSimContacts;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, message:Ljava/lang/String;
    new-instance v1, Lcom/android/phone/MiuiSimContacts$SimContactsThread;

    invoke-direct {v1, p0, p3, p4}, Lcom/android/phone/MiuiSimContacts$SimContactsThread;-><init>(Lcom/android/phone/MiuiSimContacts;Lcom/android/phone/MiuiSimContacts$SimContactOP;Landroid/util/SparseBooleanArray;)V

    .line 157
    .local v1, thread:Lcom/android/phone/MiuiSimContacts$SimContactsThread;
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 158
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 161
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, -0x2

    const/high16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiSimContacts;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 163
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 164
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 165
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 166
    invoke-virtual {v1}, Lcom/android/phone/MiuiSimContacts$SimContactsThread;->start()V

    .line 167
    return-void
.end method

.method private isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 119
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/phone/MiuiSimContacts;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 121
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 122
    return-void
.end method

.method private showDeleteSelectedDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 170
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c038f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0390

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v4}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/MiuiSimContacts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/MiuiSimContacts$1;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiSimContacts$1;-><init>(Lcom/android/phone/MiuiSimContacts;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 185
    return-void
.end method


# virtual methods
.method protected displayProgress(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f0c013e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 142
    invoke-virtual {p0}, Lcom/android/phone/MiuiSimContacts;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 145
    return-void

    .line 139
    :cond_0
    invoke-direct {p0, p0}, Lcom/android/phone/MiuiSimContacts;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0141

    goto :goto_0

    :cond_1
    const v0, 0x7f0c013f

    goto :goto_0

    .line 142
    :cond_2
    const/4 v0, -0x2

    goto :goto_1
.end method

.method protected newAdapter()Landroid/widget/CursorAdapter;
    .locals 6

    .prologue
    .line 132
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f040028

    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/android/phone/MiuiSimContacts;->COLUMN_NAMES:[Ljava/lang/String;

    sget-object v5, Lcom/android/phone/MiuiSimContacts;->VIEW_NAMES:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 134
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/phone/SimContacts;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f040026

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiSimContacts;->setContentView(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/phone/MiuiSimContacts;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView;

    iput-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    .line 108
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setChoiceMode(I)V

    .line 110
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setCheckBoxVisiableInNoneEditMode(Z)V

    .line 111
    new-instance v0, Lcom/android/phone/MiuiSimContacts$ModeCallback;

    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiSimContacts$ModeCallback;-><init>(Landroid/app/Activity;Landroid/widget/EditableListView;)V

    iput-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mModeCallBack:Lcom/android/phone/MiuiSimContacts$ModeCallback;

    .line 112
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mModeCallBack:Lcom/android/phone/MiuiSimContacts$ModeCallback;

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiSimContacts$ModeCallback;->setSplitActionBarMenuId(I)V

    .line 113
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts;->mModeCallBack:Lcom/android/phone/MiuiSimContacts$ModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/EditableListView$EditableListViewListener;)V

    .line 114
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiSimContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mEmptyText:Landroid/widget/TextView;

    .line 115
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->setupActionBar()V

    .line 116
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/phone/MiuiSimContacts;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/EditableListView;->setItemChecked(IZ)V

    .line 210
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 204
    invoke-super {p0, p1}, Lcom/android/phone/SimContacts;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 191
    :sswitch_0
    const-string v3, "com.android.contacts"

    const-string v4, "com.android.contacts.activities.PeopleActivity"

    invoke-static {p0, v3, v4}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 195
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 196
    .local v1, list:Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 197
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    :cond_1
    const v3, 0x7f0c031d

    const v4, 0x7f0c031b

    sget-object v5, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/android/phone/MiuiSimContacts;->doSimContactsAction(IILcom/android/phone/MiuiSimContacts$SimContactOP;Landroid/util/SparseBooleanArray;)V

    goto :goto_0

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0700fb -> :sswitch_1
    .end sparse-switch
.end method
