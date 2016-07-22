.class public abstract Lcom/didi/common/net/HttpResponse;
.super Lnet/tsz/afinal/http/AjaxCallBack;
.source "HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/tsz/afinal/http/AjaxCallBack",
        "<TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, this:Lcom/didi/common/net/HttpResponse;,"Lcom/didi/common/net/HttpResponse<TR;>;"
    invoke-direct {p0}, Lnet/tsz/afinal/http/AjaxCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoading(JJ)V
    .locals 0
    .parameter "count"
    .parameter "current"

    .prologue
    .line 16
    .local p0, this:Lcom/didi/common/net/HttpResponse;,"Lcom/didi/common/net/HttpResponse<TR;>;"
    return-void
.end method

.method public final onStart()V
    .locals 0

    .prologue
    .line 21
    .local p0, this:Lcom/didi/common/net/HttpResponse;,"Lcom/didi/common/net/HttpResponse<TR;>;"
    return-void
.end method
