.class public Lcom/didi/flier/business/FlierOrderTerminator;
.super Lcom/didi/frame/business/terminator/OrderTerminator;
.source "FlierOrderTerminator.java"


# static fields
.field private static instance:Lcom/didi/flier/business/FlierOrderTerminator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/didi/frame/business/terminator/OrderTerminator;-><init>()V

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/didi/frame/business/terminator/OrderTerminator;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/didi/flier/business/FlierOrderTerminator;->instance:Lcom/didi/flier/business/FlierOrderTerminator;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/didi/flier/business/FlierOrderTerminator;

    invoke-direct {v0}, Lcom/didi/flier/business/FlierOrderTerminator;-><init>()V

    sput-object v0, Lcom/didi/flier/business/FlierOrderTerminator;->instance:Lcom/didi/flier/business/FlierOrderTerminator;

    .line 24
    :cond_0
    sget-object v0, Lcom/didi/flier/business/FlierOrderTerminator;->instance:Lcom/didi/flier/business/FlierOrderTerminator;

    return-object v0
.end method


# virtual methods
.method public terminate(Lcom/didi/frame/Sendable;Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V
    .locals 1
    .parameter "sendable"
    .parameter "listener"

    .prologue
    .line 29
    new-instance v0, Lcom/didi/flier/business/FlierOrderTerminator$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/didi/flier/business/FlierOrderTerminator$1;-><init>(Lcom/didi/flier/business/FlierOrderTerminator;Lcom/didi/frame/Sendable;Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V

    invoke-static {v0}, Lcom/didi/car/net/CarRequest;->cancelOrder(Lcom/didi/common/net/ResponseListener;)V

    .line 44
    return-void
.end method
