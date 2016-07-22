.class public interface abstract Lcom/avos/avoscloud/okio/Sink;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public abstract timeout()Lcom/avos/avoscloud/okio/Timeout;
.end method

.method public abstract write(Lcom/avos/avoscloud/okio/Buffer;J)V
.end method
