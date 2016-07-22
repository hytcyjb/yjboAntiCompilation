.class Lcom/didi/frame/carmodel/CarModelPinView$1;
.super Ljava/lang/Object;
.source "CarModelPinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carmodel/CarModelPinView;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/carmodel/CarModelPinView;


# direct methods
.method constructor <init>(Lcom/didi/frame/carmodel/CarModelPinView;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/didi/frame/carmodel/CarModelPinView$1;->this$0:Lcom/didi/frame/carmodel/CarModelPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelPinView$1;->this$0:Lcom/didi/frame/carmodel/CarModelPinView;

    new-instance v1, Lcom/didi/frame/carmodel/CarModelPinView$1$1;

    invoke-direct {v1, p0}, Lcom/didi/frame/carmodel/CarModelPinView$1$1;-><init>(Lcom/didi/frame/carmodel/CarModelPinView$1;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/frame/carmodel/CarModelPinView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    return-void
.end method
