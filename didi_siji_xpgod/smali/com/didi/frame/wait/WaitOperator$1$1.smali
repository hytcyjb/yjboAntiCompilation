.class Lcom/didi/frame/wait/WaitOperator$1$1;
.super Ljava/lang/Object;
.source "WaitOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/wait/WaitOperator$1;->onSwitch(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/frame/wait/WaitOperator$1;

.field final synthetic val$targetBusiness:Lcom/didi/frame/business/Business;


# direct methods
.method constructor <init>(Lcom/didi/frame/wait/WaitOperator$1;Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/didi/frame/wait/WaitOperator$1$1;->this$1:Lcom/didi/frame/wait/WaitOperator$1;

    iput-object p2, p0, Lcom/didi/frame/wait/WaitOperator$1$1;->val$targetBusiness:Lcom/didi/frame/business/Business;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator$1$1;->this$1:Lcom/didi/frame/wait/WaitOperator$1;

    iget-object v0, v0, Lcom/didi/frame/wait/WaitOperator$1;->this$0:Lcom/didi/frame/wait/WaitOperator;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/wait/WaitOperator$1$1;->val$targetBusiness:Lcom/didi/frame/business/Business;

    #calls: Lcom/didi/frame/wait/WaitOperator;->onBusinessCityChange(Ljava/lang/String;Lcom/didi/frame/business/Business;)V
    invoke-static {v0, v1, v2}, Lcom/didi/frame/wait/WaitOperator;->access$100(Lcom/didi/frame/wait/WaitOperator;Ljava/lang/String;Lcom/didi/frame/business/Business;)V

    .line 56
    return-void
.end method
