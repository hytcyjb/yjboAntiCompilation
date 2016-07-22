.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$1;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalPayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showRePayView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updatePreSaleText()V

    .line 375
    return-void
.end method
