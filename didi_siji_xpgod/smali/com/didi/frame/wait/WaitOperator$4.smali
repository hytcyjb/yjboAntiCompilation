.class Lcom/didi/frame/wait/WaitOperator$4;
.super Ljava/lang/Object;
.source "WaitOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/wait/WaitOperator;->shrinkPins(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/wait/WaitOperator;


# direct methods
.method constructor <init>(Lcom/didi/frame/wait/WaitOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/didi/frame/wait/WaitOperator$4;->this$0:Lcom/didi/frame/wait/WaitOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 264
    iget-object v3, p0, Lcom/didi/frame/wait/WaitOperator$4;->this$0:Lcom/didi/frame/wait/WaitOperator;

    #getter for: Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;
    invoke-static {v3}, Lcom/didi/frame/wait/WaitOperator;->access$400(Lcom/didi/frame/wait/WaitOperator;)[Lcom/didi/frame/wait/WaitPinView;

    move-result-object v3

    array-length v0, v3

    .line 266
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 267
    iget-object v3, p0, Lcom/didi/frame/wait/WaitOperator$4;->this$0:Lcom/didi/frame/wait/WaitOperator;

    #getter for: Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;
    invoke-static {v3}, Lcom/didi/frame/wait/WaitOperator;->access$400(Lcom/didi/frame/wait/WaitOperator;)[Lcom/didi/frame/wait/WaitPinView;

    move-result-object v3

    aget-object v2, v3, v1

    .line 268
    .local v2, view:Lcom/didi/frame/wait/WaitPinView;
    invoke-virtual {v2}, Lcom/didi/frame/wait/WaitPinView;->invisible()V

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v2           #view:Lcom/didi/frame/wait/WaitPinView;
    :cond_0
    return-void
.end method
