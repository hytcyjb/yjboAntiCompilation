.class Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$1;
.super Landroid/os/Handler;
.source "BtsBookingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 117
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTimeTxt:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->access$002(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->setBookTime()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;)V

    .line 122
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTimeTxt:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->access$000(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getTimeMillis(Ljava/lang/String;)J

    move-result-wide v1

    #setter for: Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTime:J
    invoke-static {v0, v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->access$202(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;J)J

    .line 123
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBookingListener:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->access$300(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;)Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTime:J
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->access$200(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;->onGetOrderTime(J)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
