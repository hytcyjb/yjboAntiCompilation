.class public Lcom/didi/taxi/business/TaxiOrderTerminator;
.super Lcom/didi/frame/business/terminator/OrderTerminator;
.source "TaxiOrderTerminator.java"


# static fields
.field private static instance:Lcom/didi/taxi/business/TaxiOrderTerminator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/didi/frame/business/terminator/OrderTerminator;-><init>()V

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/didi/frame/business/terminator/OrderTerminator;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/didi/taxi/business/TaxiOrderTerminator;->instance:Lcom/didi/taxi/business/TaxiOrderTerminator;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/didi/taxi/business/TaxiOrderTerminator;

    invoke-direct {v0}, Lcom/didi/taxi/business/TaxiOrderTerminator;-><init>()V

    sput-object v0, Lcom/didi/taxi/business/TaxiOrderTerminator;->instance:Lcom/didi/taxi/business/TaxiOrderTerminator;

    .line 27
    :cond_0
    sget-object v0, Lcom/didi/taxi/business/TaxiOrderTerminator;->instance:Lcom/didi/taxi/business/TaxiOrderTerminator;

    return-object v0
.end method


# virtual methods
.method public terminate(Lcom/didi/frame/Sendable;Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V
    .locals 1
    .parameter "sendable"
    .parameter "listener"

    .prologue
    .line 32
    new-instance v0, Lcom/didi/taxi/business/TaxiOrderTerminator$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/didi/taxi/business/TaxiOrderTerminator$1;-><init>(Lcom/didi/taxi/business/TaxiOrderTerminator;Lcom/didi/frame/Sendable;Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V

    invoke-static {v0}, Lcom/didi/taxi/net/TaxiRequest;->cancelOrder(Lcom/didi/common/net/ResponseListener;)V

    .line 48
    return-void
.end method
