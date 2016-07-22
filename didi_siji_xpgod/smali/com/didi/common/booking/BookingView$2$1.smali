.class Lcom/didi/common/booking/BookingView$2$1;
.super Ljava/lang/Object;
.source "BookingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/booking/BookingView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/booking/BookingView$2;


# direct methods
.method constructor <init>(Lcom/didi/common/booking/BookingView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/didi/common/booking/BookingView$2$1;->this$1:Lcom/didi/common/booking/BookingView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/didi/common/booking/BookingView$2$1;->this$1:Lcom/didi/common/booking/BookingView$2;

    iget-object v0, v0, Lcom/didi/common/booking/BookingView$2;->this$0:Lcom/didi/common/booking/BookingView;

    #getter for: Lcom/didi/common/booking/BookingView;->mBtnCity:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/common/booking/BookingView;->access$600(Lcom/didi/common/booking/BookingView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/booking/BookingView$2$1;->this$1:Lcom/didi/common/booking/BookingView$2;

    iget-object v1, v1, Lcom/didi/common/booking/BookingView$2;->val$city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/didi/common/booking/BookingView$2$1;->this$1:Lcom/didi/common/booking/BookingView$2;

    iget-object v0, v0, Lcom/didi/common/booking/BookingView$2;->this$0:Lcom/didi/common/booking/BookingView;

    #getter for: Lcom/didi/common/booking/BookingView;->mCityId:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/booking/BookingView;->access$500(Lcom/didi/common/booking/BookingView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->setOrderCityId(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/didi/common/booking/BookingView$2$1;->this$1:Lcom/didi/common/booking/BookingView$2;

    iget-object v0, v0, Lcom/didi/common/booking/BookingView$2;->this$0:Lcom/didi/common/booking/BookingView;

    #getter for: Lcom/didi/common/booking/BookingView;->mCityId:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/booking/BookingView;->access$500(Lcom/didi/common/booking/BookingView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->setOpenCarForBookingCity(Ljava/lang/String;)V

    .line 190
    return-void
.end method
