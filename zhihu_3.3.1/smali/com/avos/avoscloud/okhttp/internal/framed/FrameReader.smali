.class public interface abstract Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader;
.super Ljava/lang/Object;
.source "FrameReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader$Handler;
    }
.end annotation


# virtual methods
.method public abstract nextFrame(Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader$Handler;)Z
.end method

.method public abstract readConnectionPreface()V
.end method
