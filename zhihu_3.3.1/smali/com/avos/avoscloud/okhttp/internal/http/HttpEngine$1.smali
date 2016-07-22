.class final Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$1;
.super Lcom/avos/avoscloud/okhttp/ResponseBody;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public contentType()Lcom/avos/avoscloud/okhttp/MediaType;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public source()Lcom/avos/avoscloud/okio/BufferedSource;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v0}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    return-object v0
.end method
