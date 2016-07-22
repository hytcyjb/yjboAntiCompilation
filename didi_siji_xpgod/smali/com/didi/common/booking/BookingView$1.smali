.class Lcom/didi/common/booking/BookingView$1;
.super Landroid/os/Handler;
.source "BookingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/booking/BookingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/booking/BookingView;


# direct methods
.method constructor <init>(Lcom/didi/common/booking/BookingView;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/didi/common/booking/BookingView$1;->this$0:Lcom/didi/common/booking/BookingView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 105
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v1, p0, Lcom/didi/common/booking/BookingView$1;->this$0:Lcom/didi/common/booking/BookingView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/didi/common/booking/BookingView;->mTimeTxt:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/didi/common/booking/BookingView;->access$002(Lcom/didi/common/booking/BookingView;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/didi/common/booking/BookingView$1;->this$0:Lcom/didi/common/booking/BookingView;

    #calls: Lcom/didi/common/booking/BookingView;->setBookTime()V
    invoke-static {v0}, Lcom/didi/common/booking/BookingView;->access$100(Lcom/didi/common/booking/BookingView;)V

    .line 110
    iget-object v0, p0, Lcom/didi/common/booking/BookingView$1;->this$0:Lcom/didi/common/booking/BookingView;

    iget-object v1, p0, Lcom/didi/common/booking/BookingView$1;->this$0:Lcom/didi/common/booking/BookingView;

    #getter for: Lcom/didi/common/booking/BookingView;->mTimeTxt:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/booking/BookingView;->access$000(Lcom/didi/common/booking/BookingView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getTimeMillis(Ljava/lang/String;)J

    move-result-wide v1

    #setter for: Lcom/didi/common/booking/BookingView;->mTime:J
    invoke-static {v0, v1, v2}, Lcom/didi/common/booking/BookingView;->access$202(Lcom/didi/common/booking/BookingView;J)J

    .line 111
    iget-object v0, p0, Lcom/didi/common/booking/BookingView$1;->this$0:Lcom/didi/common/booking/BookingView;

    #getter for: Lcom/didi/common/booking/BookingView;->mBookingListener:Lcom/didi/common/booking/BookingView$BookingListener;
    invoke-static {v0}, Lcom/didi/common/booking/BookingView;->access$300(Lcom/didi/common/booking/BookingView;)Lcom/didi/common/booking/BookingView$BookingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/booking/BookingView$1;->this$0:Lcom/didi/common/booking/BookingView;

    #getter for: Lcom/didi/common/booking/BookingView;->mTime:J
    invoke-static {v1}, Lcom/didi/common/booking/BookingView;->access$200(Lcom/didi/common/booking/BookingView;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/didi/common/booking/BookingView$BookingListener;->onGetOrderTime(J)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
