.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsPassengerBookingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->getEstimatePrice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/order/BtsOrderPrice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 319
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderPrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4;->onFinish(Lcom/didi/beatles/model/order/BtsOrderPrice;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/order/BtsOrderPrice;)V
    .locals 5
    .parameter "btsOrderPrice"

    .prologue
    .line 322
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 323
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mCalPriceReqId:J
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)J

    move-result-wide v1

    iget-wide v3, p1, Lcom/didi/beatles/model/order/BtsOrderPrice;->mReqId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 339
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 326
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPrice;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    new-instance v0, Lcom/didi/beatles/utils/Spanny;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9884\u8ba1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/beatles/model/order/BtsOrderPrice;->payStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/beatles/utils/Spanny;-><init>(Ljava/lang/CharSequence;)V

    .line 328
    .local v0, spanny:Lcom/didi/beatles/utils/Spanny;
    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPrice;->price:Ljava/lang/String;

    new-instance v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4$1;

    invoke-direct {v2, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4$1;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/utils/Spanny;->findAndSpan(Ljava/lang/CharSequence;Lcom/didi/beatles/utils/Spanny$GetSpan;)Lcom/didi/beatles/utils/Spanny;

    .line 334
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getExtraInfoTextView()Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/beatles/model/order/BtsOrderPrice;->extra_info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getPriceTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 337
    .end local v0           #spanny:Lcom/didi/beatles/utils/Spanny;
    :cond_1
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPrice;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0
.end method
