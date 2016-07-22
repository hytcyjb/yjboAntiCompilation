.class public Lcom/didi/ddrive/net/http/adapter/KDRetryPolicy;
.super Ljava/lang/Object;
.source "KDRetryPolicy.java"

# interfaces
.implements Lcom/android/volley/RetryPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentRetryCount()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentTimeout()I
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x7530

    return v0
.end method

.method public retry(Lcom/android/volley/VolleyError;)V
    .locals 0
    .parameter "volleyError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .prologue
    .line 24
    return-void
.end method
