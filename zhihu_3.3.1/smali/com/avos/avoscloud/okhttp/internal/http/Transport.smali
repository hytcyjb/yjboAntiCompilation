.class public interface abstract Lcom/avos/avoscloud/okhttp/internal/http/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# static fields
.field public static final DISCARD_STREAM_TIMEOUT_MILLIS:I = 0x64


# virtual methods
.method public abstract canReuseConnection()Z
.end method

.method public abstract createRequestBody(Lcom/avos/avoscloud/okhttp/Request;J)Lcom/avos/avoscloud/okio/Sink;
.end method

.method public abstract disconnect(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)V
.end method

.method public abstract finishRequest()V
.end method

.method public abstract openResponseBody(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/ResponseBody;
.end method

.method public abstract readResponseHeaders()Lcom/avos/avoscloud/okhttp/Response$Builder;
.end method

.method public abstract releaseConnectionOnIdle()V
.end method

.method public abstract writeRequestBody(Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;)V
.end method

.method public abstract writeRequestHeaders(Lcom/avos/avoscloud/okhttp/Request;)V
.end method
