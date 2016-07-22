.class public Lcom/didi/ddrive/net/http/response/DriverPositionResponse;
.super Ljava/lang/Object;
.source "DriverPositionResponse.java"


# instance fields
.field public positions:[Lcom/didi/ddrive/net/http/response/Position;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public getLast()Lcom/didi/ddrive/net/http/response/Position;
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/DriverPositionResponse;->positions:[Lcom/didi/ddrive/net/http/response/Position;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/DriverPositionResponse;->positions:[Lcom/didi/ddrive/net/http/response/Position;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/DriverPositionResponse;->positions:[Lcom/didi/ddrive/net/http/response/Position;

    iget-object v1, p0, Lcom/didi/ddrive/net/http/response/DriverPositionResponse;->positions:[Lcom/didi/ddrive/net/http/response/Position;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method
