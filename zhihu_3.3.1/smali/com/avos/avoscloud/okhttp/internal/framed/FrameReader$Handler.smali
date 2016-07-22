.class public interface abstract Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader$Handler;
.super Ljava/lang/Object;
.source "FrameReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation


# virtual methods
.method public abstract ackSettings()V
.end method

.method public abstract alternateService(ILjava/lang/String;Lcom/avos/avoscloud/okio/ByteString;Ljava/lang/String;IJ)V
.end method

.method public abstract data(ZILcom/avos/avoscloud/okio/BufferedSource;I)V
.end method

.method public abstract goAway(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;Lcom/avos/avoscloud/okio/ByteString;)V
.end method

.method public abstract headers(ZZIILjava/util/List;Lcom/avos/avoscloud/okhttp/internal/framed/HeadersMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;",
            "Lcom/avos/avoscloud/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract priority(IIIZ)V
.end method

.method public abstract pushPromise(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract rstStream(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
.end method

.method public abstract settings(ZLcom/avos/avoscloud/okhttp/internal/framed/Settings;)V
.end method

.method public abstract windowUpdate(IJ)V
.end method
