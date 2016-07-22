.class final Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler$1;
.super Ljava/lang/Object;
.source "IncomingStreamHandler.java"

# interfaces
.implements Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receive(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->close(Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    .line 26
    return-void
.end method
