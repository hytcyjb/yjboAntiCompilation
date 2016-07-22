.class public Lcom/didi/car/business/CarOrderTerminator;
.super Lcom/didi/frame/business/terminator/OrderTerminator;
.source "CarOrderTerminator.java"


# static fields
.field private static instance:Lcom/didi/car/business/CarOrderTerminator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/didi/frame/business/terminator/OrderTerminator;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/didi/frame/business/terminator/OrderTerminator;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/didi/car/business/CarOrderTerminator;->instance:Lcom/didi/car/business/CarOrderTerminator;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/didi/car/business/CarOrderTerminator;

    invoke-direct {v0}, Lcom/didi/car/business/CarOrderTerminator;-><init>()V

    sput-object v0, Lcom/didi/car/business/CarOrderTerminator;->instance:Lcom/didi/car/business/CarOrderTerminator;

    .line 26
    :cond_0
    sget-object v0, Lcom/didi/car/business/CarOrderTerminator;->instance:Lcom/didi/car/business/CarOrderTerminator;

    return-object v0
.end method


# virtual methods
.method public terminate(Lcom/didi/frame/Sendable;Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V
    .locals 1
    .parameter "sendable"
    .parameter "listener"

    .prologue
    .line 31
    new-instance v0, Lcom/didi/car/business/CarOrderTerminator$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/didi/car/business/CarOrderTerminator$1;-><init>(Lcom/didi/car/business/CarOrderTerminator;Lcom/didi/frame/Sendable;Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V

    invoke-static {v0}, Lcom/didi/car/net/CarRequest;->cancelOrder(Lcom/didi/common/net/ResponseListener;)V

    .line 46
    return-void
.end method
