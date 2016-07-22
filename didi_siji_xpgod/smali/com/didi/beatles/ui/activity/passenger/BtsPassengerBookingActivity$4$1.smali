.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4$1;
.super Ljava/lang/Object;
.source "BtsPassengerBookingActivity.java"

# interfaces
.implements Lcom/didi/beatles/utils/Spanny$GetSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4;->onFinish(Lcom/didi/beatles/model/order/BtsOrderPrice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4$1;->this$1:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpan()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 331
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4$1;->this$1:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4;

    iget-object v1, v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    return-object v0
.end method
