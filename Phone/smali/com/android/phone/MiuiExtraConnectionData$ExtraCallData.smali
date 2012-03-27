.class Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;
.super Ljava/lang/Object;
.source "MiuiExtraConnectionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiExtraConnectionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraCallData"
.end annotation


# instance fields
.field public digits:Ljava/lang/String;

.field public generic:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;->digits:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;->generic:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MiuiExtraConnectionData$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;-><init>()V

    return-void
.end method
