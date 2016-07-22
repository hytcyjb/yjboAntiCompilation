.class final Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$4;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Lcom/avos/avoscloud/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 823
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 816
    return-void
.end method

.method public timeout()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 819
    sget-object v0, Lcom/avos/avoscloud/okio/Timeout;->NONE:Lcom/avos/avoscloud/okio/Timeout;

    return-object v0
.end method

.method public write(Lcom/avos/avoscloud/okio/Buffer;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 812
    invoke-virtual {p1, p2, p3}, Lcom/avos/avoscloud/okio/Buffer;->skip(J)V

    .line 813
    return-void
.end method
