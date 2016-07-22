.class Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;
.super Landroid/os/CountDownTimer;
.source "BtsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/login/BtsLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;


# direct methods
.method public constructor <init>(Lcom/didi/beatles/business/login/BtsLoginActivity;JJ)V
    .locals 0
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 938
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    .line 939
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 940
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 965
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1800(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1800(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    const v2, 0x7f07003e

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->getColorResources(I)I
    invoke-static {v1, v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1400(Lcom/didi/beatles/business/login/BtsLoginActivity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 967
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1800(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 968
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1800(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b024e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 970
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .parameter "millisUntilFinished"

    .prologue
    const/4 v4, 0x0

    .line 947
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1800(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 948
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1800(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 949
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1800(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    const v3, 0x7f070026

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->getColorResources(I)I
    invoke-static {v2, v3}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1400(Lcom/didi/beatles/business/login/BtsLoginActivity;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 950
    if-eqz p0, :cond_1

    .line 951
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 952
    .local v0, cnt:I
    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 953
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->tvNotReceived:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$3600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1800(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    const v4, 0x7f0b04e0

    invoke-virtual {v3, v4}, Lcom/didi/beatles/business/login/BtsLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    .end local v0           #cnt:I
    :cond_1
    return-void
.end method
