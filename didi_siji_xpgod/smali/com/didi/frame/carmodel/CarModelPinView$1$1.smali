.class Lcom/didi/frame/carmodel/CarModelPinView$1$1;
.super Ljava/lang/Object;
.source "CarModelPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carmodel/CarModelPinView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/frame/carmodel/CarModelPinView$1;


# direct methods
.method constructor <init>(Lcom/didi/frame/carmodel/CarModelPinView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/didi/frame/carmodel/CarModelPinView$1$1;->this$1:Lcom/didi/frame/carmodel/CarModelPinView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelPinView$1$1;->this$1:Lcom/didi/frame/carmodel/CarModelPinView$1;

    iget-object v0, v0, Lcom/didi/frame/carmodel/CarModelPinView$1;->this$0:Lcom/didi/frame/carmodel/CarModelPinView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/didi/frame/carmodel/CarModelOperator;->select(Lcom/didi/frame/carmodel/CarModelPinView;Z)V

    .line 52
    return-void
.end method
