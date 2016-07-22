.class public interface abstract Lcom/avos/avoscloud/okhttp/internal/framed/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# virtual methods
.method public abstract getProtocol()Lcom/avos/avoscloud/okhttp/Protocol;
.end method

.method public abstract newReader(Lcom/avos/avoscloud/okio/BufferedSource;Z)Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader;
.end method

.method public abstract newWriter(Lcom/avos/avoscloud/okio/BufferedSink;Z)Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;
.end method
