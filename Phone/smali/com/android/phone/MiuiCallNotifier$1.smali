.class Lcom/android/phone/MiuiCallNotifier$1;
.super Ljava/lang/Object;
.source "MiuiCallNotifier.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiCallNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 70
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/high16 v7, 0x401a

    const-wide/high16 v5, -0x3fde

    .line 74
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    iget-object v1, v1, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v1, Lcom/android/phone/MiuiRinger;

    invoke-virtual {v1}, Lcom/android/phone/MiuiRinger;->isNowVibrating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$004(Lcom/android/phone/MiuiCallNotifier;)I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$000(Lcom/android/phone/MiuiCallNotifier;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 80
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/phone/MiuiCallNotifier;->access$102(Lcom/android/phone/MiuiCallNotifier;F)F

    .line 82
    :cond_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v3

    .line 83
    .local v0, z:F
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$200(Lcom/android/phone/MiuiCallNotifier;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$300(Lcom/android/phone/MiuiCallNotifier;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$100(Lcom/android/phone/MiuiCallNotifier;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v7

    if-lez v1, :cond_5

    float-to-double v1, v0

    cmpg-double v1, v1, v5

    if-gez v1, :cond_5

    .line 90
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$404(Lcom/android/phone/MiuiCallNotifier;)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 91
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/MiuiCallNotifier;->silenceRinger()V

    .line 92
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1, v10}, Lcom/android/phone/MiuiCallNotifier;->access$302(Lcom/android/phone/MiuiCallNotifier;Z)Z

    .line 97
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$500(Lcom/android/phone/MiuiCallNotifier;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$600(Lcom/android/phone/MiuiCallNotifier;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$300(Lcom/android/phone/MiuiCallNotifier;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$100(Lcom/android/phone/MiuiCallNotifier;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4021

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$100(Lcom/android/phone/MiuiCallNotifier;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v5

    if-gez v1, :cond_6

    :cond_4
    float-to-double v1, v0

    const-wide/high16 v3, -0x3fe6

    cmpl-double v1, v1, v3

    if-lez v1, :cond_6

    float-to-double v1, v0

    cmpg-double v1, v1, v7

    if-gez v1, :cond_6

    .line 105
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$704(Lcom/android/phone/MiuiCallNotifier;)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$800(Lcom/android/phone/MiuiCallNotifier;)V

    .line 107
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1, v10}, Lcom/android/phone/MiuiCallNotifier;->access$602(Lcom/android/phone/MiuiCallNotifier;Z)Z

    goto/16 :goto_0

    .line 95
    :cond_5
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1, v9}, Lcom/android/phone/MiuiCallNotifier;->access$402(Lcom/android/phone/MiuiCallNotifier;I)I

    goto :goto_1

    .line 110
    :cond_6
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1, v9}, Lcom/android/phone/MiuiCallNotifier;->access$702(Lcom/android/phone/MiuiCallNotifier;I)I

    goto/16 :goto_0
.end method
