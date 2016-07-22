.class Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;
.super Ljava/lang/Object;
.source "KDHttpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/net/http/KDHttpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KDHttpResultIntercepter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private listener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, this:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;,"Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter<TK;>;"
    .local p1, listener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;,"Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;->listener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;

    .line 165
    return-void
.end method


# virtual methods
.method public interceptHttpFailure(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 184
    .local p0, this:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;,"Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter<TK;>;"
    instance-of v1, p1, Lcom/didi/ddrive/net/http/DriveError;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 185
    check-cast v0, Lcom/didi/ddrive/net/http/DriveError;

    .line 186
    .local v0, driveError:Lcom/didi/ddrive/net/http/DriveError;
    iget v1, v0, Lcom/didi/ddrive/net/http/DriveError;->code:I

    iget-object v2, v0, Lcom/didi/ddrive/net/http/DriveError;->msg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/ddrive/helper/ErrorHandleHelper;->handle(ILjava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;->listener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;->listener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;

    iget v2, v0, Lcom/didi/ddrive/net/http/DriveError;->code:I

    invoke-interface {v1, v2}, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;->onKDHttpRequestFailure(I)V

    .line 195
    .end local v0           #driveError:Lcom/didi/ddrive/net/http/DriveError;
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;->listener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;->listener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;->onKDHttpRequestFailure(I)V

    goto :goto_0
.end method

.method public interceptHttpResult(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, this:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;,"Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter<TK;>;"
    .local p1, response:Ljava/lang/Object;,"TK;"
    if-eqz p1, :cond_2

    .line 169
    instance-of v0, p1, Lcom/didi/ddrive/net/http/ResponseBean;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 170
    check-cast v0, Lcom/didi/ddrive/net/http/ResponseBean;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;->listener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;->listener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;

    invoke-interface {v0, p1}, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;->onKDHttpRequestSuccess(Ljava/lang/Object;)V

    .line 181
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;->listener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;->listener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;->onKDHttpRequestFailure(I)V

    goto :goto_0
.end method
