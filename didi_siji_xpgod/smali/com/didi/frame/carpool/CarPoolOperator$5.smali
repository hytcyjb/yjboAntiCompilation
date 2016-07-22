.class Lcom/didi/frame/carpool/CarPoolOperator$5;
.super Ljava/lang/Object;
.source "CarPoolOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carpool/CarPoolOperator;->shrinkPins(I)V
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
    .line 351
    iput-object p1, p0, Lcom/didi/frame/carpool/CarPoolOperator$5;->this$0:Lcom/didi/frame/carpool/CarPoolOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 356
    iget-object v3, p0, Lcom/didi/frame/carpool/CarPoolOperator$5;->this$0:Lcom/didi/frame/carpool/CarPoolOperator;

    #getter for: Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;
    invoke-static {v3}, Lcom/didi/frame/carpool/CarPoolOperator;->access$300(Lcom/didi/frame/carpool/CarPoolOperator;)[Lcom/didi/frame/carpool/CarPoolPinView;

    move-result-object v3

    array-length v0, v3

    .line 358
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 359
    iget-object v3, p0, Lcom/didi/frame/carpool/CarPoolOperator$5;->this$0:Lcom/didi/frame/carpool/CarPoolOperator;

    #getter for: Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;
    invoke-static {v3}, Lcom/didi/frame/carpool/CarPoolOperator;->access$300(Lcom/didi/frame/carpool/CarPoolOperator;)[Lcom/didi/frame/carpool/CarPoolPinView;

    move-result-object v3

    aget-object v2, v3, v1

    .line 360
    .local v2, view:Lcom/didi/frame/carpool/CarPoolPinView;
    invoke-virtual {v2}, Lcom/didi/frame/carpool/CarPoolPinView;->invisible()V

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v2           #view:Lcom/didi/frame/carpool/CarPoolPinView;
    :cond_0
    return-void
.end method
