.class Lcom/didi/frame/carpool/CarPoolPinView$1$1;
.super Ljava/lang/Object;
.source "CarPoolPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carpool/CarPoolPinView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/frame/carpool/CarPoolPinView$1;


# direct methods
.method constructor <init>(Lcom/didi/frame/carpool/CarPoolPinView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/didi/frame/carpool/CarPoolPinView$1$1;->this$1:Lcom/didi/frame/carpool/CarPoolPinView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolPinView$1$1;->this$1:Lcom/didi/frame/carpool/CarPoolPinView$1;

    iget-object v0, v0, Lcom/didi/frame/carpool/CarPoolPinView$1;->this$0:Lcom/didi/frame/carpool/CarPoolPinView;

    #getter for: Lcom/didi/frame/carpool/CarPoolPinView;->mSelectable:Z
    invoke-static {v0}, Lcom/didi/frame/carpool/CarPoolPinView;->access$000(Lcom/didi/frame/carpool/CarPoolPinView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/frame/carpool/CarPoolPinView$1$1;->this$1:Lcom/didi/frame/carpool/CarPoolPinView$1;

    iget-object v1, v1, Lcom/didi/frame/carpool/CarPoolPinView$1;->this$0:Lcom/didi/frame/carpool/CarPoolPinView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/carpool/CarPoolOperator;->setSelected(Lcom/didi/frame/carpool/CarPoolPinView;I)V

    .line 56
    :cond_0
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->hideContentPins()V

    .line 57
    return-void
.end method
