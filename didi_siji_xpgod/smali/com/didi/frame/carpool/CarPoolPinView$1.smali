.class Lcom/didi/frame/carpool/CarPoolPinView$1;
.super Ljava/lang/Object;
.source "CarPoolPinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carpool/CarPoolPinView;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/carpool/CarPoolPinView;


# direct methods
.method constructor <init>(Lcom/didi/frame/carpool/CarPoolPinView;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/didi/frame/carpool/CarPoolPinView$1;->this$0:Lcom/didi/frame/carpool/CarPoolPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolPinView$1;->this$0:Lcom/didi/frame/carpool/CarPoolPinView;

    new-instance v1, Lcom/didi/frame/carpool/CarPoolPinView$1$1;

    invoke-direct {v1, p0}, Lcom/didi/frame/carpool/CarPoolPinView$1$1;-><init>(Lcom/didi/frame/carpool/CarPoolPinView$1;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/frame/carpool/CarPoolPinView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    return-void
.end method
