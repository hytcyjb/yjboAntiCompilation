.class public interface abstract Lcom/avos/avoscloud/okio/Source;
.super Ljava/lang/Object;
.source "Source.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract read(Lcom/avos/avoscloud/okio/Buffer;J)J
.end method

.method public abstract timeout()Lcom/avos/avoscloud/okio/Timeout;
.end method
