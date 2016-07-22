.class Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$6;
.super Ljava/lang/Object;
.source "TaxiEndedOrderActivity.java"

# interfaces
.implements Lcom/didi/im/helper/IMPushHelper$IMUnreadCountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->registerPushIMUnreadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$6;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIMUnreadCountChanged(I)V
    .locals 1
    .parameter "unreadCount"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$6;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->onPushIMUnreadReceived(I)V
    invoke-static {v0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->access$300(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;I)V

    .line 333
    return-void
.end method
