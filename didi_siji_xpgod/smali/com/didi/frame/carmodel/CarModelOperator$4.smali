.class Lcom/didi/frame/carmodel/CarModelOperator$4;
.super Ljava/lang/Object;
.source "CarModelOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carmodel/CarModelOperator;->shrinkPins(I)V
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
    .line 302
    iput-object p1, p0, Lcom/didi/frame/carmodel/CarModelOperator$4;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 307
    iget-object v3, p0, Lcom/didi/frame/carmodel/CarModelOperator$4;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    #getter for: Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;
    invoke-static {v3}, Lcom/didi/frame/carmodel/CarModelOperator;->access$200(Lcom/didi/frame/carmodel/CarModelOperator;)[Lcom/didi/frame/carmodel/CarModelPinView;

    move-result-object v3

    array-length v0, v3

    .line 309
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 310
    iget-object v3, p0, Lcom/didi/frame/carmodel/CarModelOperator$4;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    #getter for: Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;
    invoke-static {v3}, Lcom/didi/frame/carmodel/CarModelOperator;->access$200(Lcom/didi/frame/carmodel/CarModelOperator;)[Lcom/didi/frame/carmodel/CarModelPinView;

    move-result-object v3

    aget-object v2, v3, v1

    .line 311
    .local v2, view:Lcom/didi/frame/carmodel/CarModelPinView;
    invoke-virtual {v2}, Lcom/didi/frame/carmodel/CarModelPinView;->invisible()V

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v2           #view:Lcom/didi/frame/carmodel/CarModelPinView;
    :cond_0
    return-void
.end method
