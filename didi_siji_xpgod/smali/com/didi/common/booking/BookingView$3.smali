.class Lcom/didi/common/booking/BookingView$3;
.super Ljava/lang/Object;
.source "BookingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 210
    iput-object p1, p0, Lcom/didi/common/booking/BookingView$3;->this$0:Lcom/didi/common/booking/BookingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/didi/common/booking/BookingView$3;->this$0:Lcom/didi/common/booking/BookingView;

    #getter for: Lcom/didi/common/booking/BookingView;->mBookingListener:Lcom/didi/common/booking/BookingView$BookingListener;
    invoke-static {v0}, Lcom/didi/common/booking/BookingView;->access$300(Lcom/didi/common/booking/BookingView;)Lcom/didi/common/booking/BookingView$BookingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/common/booking/BookingView$BookingListener;->onSubmitClicked()V

    .line 215
    return-void
.end method
