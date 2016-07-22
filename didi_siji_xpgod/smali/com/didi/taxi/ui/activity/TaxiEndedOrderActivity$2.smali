.class Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$2;
.super Ljava/lang/Object;
.source "TaxiEndedOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;
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
    .line 153
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$2;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$2;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->back()V
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->access$000(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)V

    .line 158
    return-void
.end method
