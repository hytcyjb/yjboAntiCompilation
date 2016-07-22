.class Lcom/didi/frame/carpool/CarPoolTriggerView$1;
.super Ljava/lang/Object;
.source "CarPoolTriggerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carpool/CarPoolTriggerView;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/carpool/CarPoolTriggerView;


# direct methods
.method constructor <init>(Lcom/didi/frame/carpool/CarPoolTriggerView;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/didi/frame/carpool/CarPoolTriggerView$1;->this$0:Lcom/didi/frame/carpool/CarPoolTriggerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolTriggerView$1;->this$0:Lcom/didi/frame/carpool/CarPoolTriggerView;

    #getter for: Lcom/didi/frame/carpool/CarPoolTriggerView;->mInterceptLis:Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;
    invoke-static {v0}, Lcom/didi/frame/carpool/CarPoolTriggerView;->access$000(Lcom/didi/frame/carpool/CarPoolTriggerView;)Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolTriggerView$1;->this$0:Lcom/didi/frame/carpool/CarPoolTriggerView;

    #getter for: Lcom/didi/frame/carpool/CarPoolTriggerView;->mInterceptLis:Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;
    invoke-static {v0}, Lcom/didi/frame/carpool/CarPoolTriggerView;->access$000(Lcom/didi/frame/carpool/CarPoolTriggerView;)Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;->onCarPoolTriggerIntercepted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->showContentPins()V

    .line 40
    :cond_1
    return-void
.end method
