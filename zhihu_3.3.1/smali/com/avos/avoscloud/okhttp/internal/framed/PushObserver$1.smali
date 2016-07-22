.class final Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver$1;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(ILcom/avos/avoscloud/okio/BufferedSource;IZ)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lcom/avos/avoscloud/okio/BufferedSource;->skip(J)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public onHeaders(ILjava/util/List;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public onRequest(ILjava/util/List;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public onReset(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    return-void
.end method
