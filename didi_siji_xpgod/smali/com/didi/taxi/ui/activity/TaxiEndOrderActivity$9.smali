.class Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$9;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "TaxiEndOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$9;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$9;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->back()V
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$000(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    .line 434
    return-void
.end method

.method public submit()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$9;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    const/4 v1, 0x0

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->submit(Z)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$300(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;Z)V

    .line 429
    return-void
.end method
