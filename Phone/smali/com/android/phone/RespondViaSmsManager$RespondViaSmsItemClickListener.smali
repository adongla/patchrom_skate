.class public Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsItemClickListener"
.end annotation


# instance fields
.field private mPhoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/RespondViaSmsManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "phoneNumber"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    .line 204
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    .line 213
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RespondViaSmsItemClickListener.onItemClick("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 214
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 219
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p3, v4, :cond_1

    .line 221
    iget-object v4, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/phone/RespondViaSmsManager;->access$200(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V

    .line 255
    :goto_0
    iget-object v4, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    iget-object v4, v4, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->hangupRingingCall()V

    .line 257
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->dismissCallScreen()V

    .line 258
    return-void

    .line 224
    :cond_1
    iget-object v4, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/android/phone/RespondViaSmsManager;->access$300(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    iget-object v4, v4, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 230
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0c0251

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, formatString:Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, confirmationMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    iget-object v4, v4, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v4, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
