.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->createIMSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1726
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1731
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15$1;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15$1;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15;)V

    invoke-static {v0, v1}, Lcom/didi/im/net/IMRequest;->onCreateIMSession(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 1740
    return-void
.end method
