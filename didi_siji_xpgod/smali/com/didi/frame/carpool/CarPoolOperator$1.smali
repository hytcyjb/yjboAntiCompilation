.class Lcom/didi/frame/carpool/CarPoolOperator$1;
.super Ljava/lang/Object;
.source "CarPoolOperator.java"

# interfaces
.implements Lcom/didi/frame/switcher/SwitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carpool/CarPoolOperator;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/carpool/CarPoolOperator;


# direct methods
.method constructor <init>(Lcom/didi/frame/carpool/CarPoolOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/didi/frame/carpool/CarPoolOperator$1;->this$0:Lcom/didi/frame/carpool/CarPoolOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitch(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V
    .locals 1
    .parameter "currentBusiness"
    .parameter "targetBusiness"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator$1;->this$0:Lcom/didi/frame/carpool/CarPoolOperator;

    #calls: Lcom/didi/frame/carpool/CarPoolOperator;->onBusinessChanged(Lcom/didi/frame/business/Business;)V
    invoke-static {v0, p2}, Lcom/didi/frame/carpool/CarPoolOperator;->access$000(Lcom/didi/frame/carpool/CarPoolOperator;Lcom/didi/frame/business/Business;)V

    .line 57
    return-void
.end method
