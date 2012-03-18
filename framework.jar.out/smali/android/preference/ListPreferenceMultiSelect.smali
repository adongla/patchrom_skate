.class public Landroid/preference/ListPreferenceMultiSelect;
.super Landroid/preference/ListPreference;
.source "ListPreferenceMultiSelect.java"


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "OV=I=XseparatorX=I=VO"


# instance fields
.field private mClickedDialogEntryIndices:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Landroid/preference/ListPreferenceMultiSelect;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/preference/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    return-object v0
.end method

.method public static parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 2
    .parameter "val"

    .prologue
    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OV=I=XseparatorX=I=VO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private restoreCheckedEntries()V
    .locals 10

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/preference/ListPreferenceMultiSelect;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 74
    .local v2, entryValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/preference/ListPreferenceMultiSelect;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/ListPreferenceMultiSelect;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, vals:[Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 76
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, v0, v4

    .line 77
    .local v6, val:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v2

    if-ge v3, v8, :cond_0

    .line 78
    aget-object v1, v2, v3

    .line 79
    .local v1, entry:Ljava/lang/CharSequence;
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 80
    iget-object v8, p0, Landroid/preference/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    const/4 v9, 0x1

    aput-boolean v9, v8, v3

    .line 76
    .end local v1           #entry:Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    .restart local v1       #entry:Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #entry:Ljava/lang/CharSequence;
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #val:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/preference/ListPreferenceMultiSelect;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 92
    .local v0, entryValues:[Ljava/lang/CharSequence;
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v3, value:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 95
    iget-object v4, p0, Landroid/preference/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_1

    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 97
    const-string v4, "OV=I=XseparatorX=I=VO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 94
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, val:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/preference/ListPreferenceMultiSelect;->callChangeListener(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    invoke-virtual {p0, v2}, Landroid/preference/ListPreferenceMultiSelect;->setValue(Ljava/lang/String;)V

    .line 108
    .end local v1           #i:I
    .end local v2           #val:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5
    .parameter "builder"

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/preference/ListPreferenceMultiSelect;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 45
    .local v0, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/preference/ListPreferenceMultiSelect;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 47
    .local v1, entryValues:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_1

    .line 48
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires an entries array and an entryValues array which are both the same length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_1
    array-length v2, v1

    new-array v2, v2, [Z

    iput-object v2, p0, Landroid/preference/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    .line 54
    invoke-direct {p0}, Landroid/preference/ListPreferenceMultiSelect;->restoreCheckedEntries()V

    .line 55
    iget-object v2, p0, Landroid/preference/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    new-instance v3, Landroid/preference/ListPreferenceMultiSelect$1;

    invoke-direct {v3, p0}, Landroid/preference/ListPreferenceMultiSelect$1;-><init>(Landroid/preference/ListPreferenceMultiSelect;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    return-void
.end method
