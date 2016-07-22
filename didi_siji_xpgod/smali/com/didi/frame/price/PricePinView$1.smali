.class Lcom/didi/frame/price/PricePinView$1;
.super Ljava/lang/Object;
.source "PricePinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/price/PricePinView;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/price/PricePinView;


# direct methods
.method constructor <init>(Lcom/didi/frame/price/PricePinView;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/didi/frame/price/PricePinView$1;->this$0:Lcom/didi/frame/price/PricePinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/didi/frame/price/PricePinView$1;->this$0:Lcom/didi/frame/price/PricePinView;

    new-instance v1, Lcom/didi/frame/price/PricePinView$1$1;

    invoke-direct {v1, p0}, Lcom/didi/frame/price/PricePinView$1$1;-><init>(Lcom/didi/frame/price/PricePinView$1;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/frame/price/PricePinView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    return-void
.end method
