.class Lcom/didi/frame/carmodel/CarModelOperator$1;
.super Ljava/lang/Object;
.source "CarModelOperator.java"

# interfaces
.implements Lcom/didi/frame/switcher/SwitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/carmodel/CarModelOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/carmodel/CarModelOperator;


# direct methods
.method constructor <init>(Lcom/didi/frame/carmodel/CarModelOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/didi/frame/carmodel/CarModelOperator$1;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitch(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V
    .locals 3
    .parameter "currentBusiness"
    .parameter "targetBusiness"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator$1;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    #calls: Lcom/didi/frame/carmodel/CarModelOperator;->resetPins()V
    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->access$000(Lcom/didi/frame/carmodel/CarModelOperator;)V

    .line 70
    new-instance v0, Lcom/didi/frame/carmodel/CarModelOperator$1$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/carmodel/CarModelOperator$1$1;-><init>(Lcom/didi/frame/carmodel/CarModelOperator$1;)V

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    return-void
.end method
