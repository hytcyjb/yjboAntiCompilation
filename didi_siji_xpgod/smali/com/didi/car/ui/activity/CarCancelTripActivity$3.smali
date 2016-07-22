.class Lcom/didi/car/ui/activity/CarCancelTripActivity$3;
.super Lcom/didi/common/net/ResponseListener;
.source "CarCancelTripActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/activity/CarCancelTripActivity;->postCancelTrip(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarCancelTrip;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/activity/CarCancelTripActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarCancelTripActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity$3;->this$0:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarCancelTrip;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity$3;->this$0:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->onCancelTripConfirmed(Lcom/didi/car/model/CarCancelTrip;)V

    .line 206
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    check-cast p1, Lcom/didi/car/model/CarCancelTrip;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/activity/CarCancelTripActivity$3;->onFinish(Lcom/didi/car/model/CarCancelTrip;)V

    return-void
.end method
