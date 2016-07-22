.class Lcom/didi/frame/wait/WaitOperator$2;
.super Ljava/lang/Object;
.source "WaitOperator.java"

# interfaces
.implements Lcom/didi/common/helper/LocationHelper$CityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/wait/WaitOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/wait/WaitOperator;


# direct methods
.method constructor <init>(Lcom/didi/frame/wait/WaitOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/didi/frame/wait/WaitOperator$2;->this$0:Lcom/didi/frame/wait/WaitOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "sourceCityId"
    .parameter "targetCityId"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator$2;->this$0:Lcom/didi/frame/wait/WaitOperator;

    invoke-virtual {v0}, Lcom/didi/frame/wait/WaitOperator;->clear()V

    .line 67
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator$2;->this$0:Lcom/didi/frame/wait/WaitOperator;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    #calls: Lcom/didi/frame/wait/WaitOperator;->onBusinessCityChange(Ljava/lang/String;Lcom/didi/frame/business/Business;)V
    invoke-static {v0, p2, v1}, Lcom/didi/frame/wait/WaitOperator;->access$100(Lcom/didi/frame/wait/WaitOperator;Ljava/lang/String;Lcom/didi/frame/business/Business;)V

    .line 68
    return-void
.end method
