.class Lcom/android/phone/MiuiEditFdnContactScreen$2;
.super Ljava/lang/Object;
.source "MiuiEditFdnContactScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiEditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiEditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiEditFdnContactScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$2;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 332
    const/4 v0, 0x1

    .line 333
    .local v0, enableButton:Z
    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$2;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$200(Lcom/android/phone/MiuiEditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 336
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$2;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$300(Lcom/android/phone/MiuiEditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 338
    const/4 v0, 0x0

    .line 340
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$2;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$400(Lcom/android/phone/MiuiEditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 342
    const/4 v0, 0x0

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$2;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$500(Lcom/android/phone/MiuiEditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 346
    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$2;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$600(Lcom/android/phone/MiuiEditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 347
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 328
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 323
    return-void
.end method
