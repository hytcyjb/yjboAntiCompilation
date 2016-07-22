.class abstract Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lcom/avos/avoscloud/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSource"
.end annotation


# instance fields
.field protected closed:Z

.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

.field protected final timeout:Lcom/avos/avoscloud/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)V
    .locals 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    new-instance v0, Lcom/avos/avoscloud/okio/ForwardingTimeout;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->source:Lcom/avos/avoscloud/okio/BufferedSource;
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$600(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/avos/avoscloud/okio/BufferedSource;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/okio/ForwardingTimeout;-><init>(Lcom/avos/avoscloud/okio/Timeout;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->timeout:Lcom/avos/avoscloud/okio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)V

    return-void
.end method


# virtual methods
.method protected final endOfInput(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$500(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$500(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->timeout:Lcom/avos/avoscloud/okio/ForwardingTimeout;

    #calls: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->detachTimeout(Lcom/avos/avoscloud/okio/ForwardingTimeout;)V
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$400(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;Lcom/avos/avoscloud/okio/ForwardingTimeout;)V

    .line 372
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #setter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v0, v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$502(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;I)I

    .line 373
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->onIdle:I
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$700(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 374
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #setter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->onIdle:I
    invoke-static {v0, v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$702(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;I)I

    .line 375
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$800(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okhttp/ConnectionPool;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->connection:Lcom/avos/avoscloud/okhttp/Connection;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$900(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okhttp/Connection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/Internal;->recycle(Lcom/avos/avoscloud/okhttp/ConnectionPool;Lcom/avos/avoscloud/okhttp/Connection;)V

    .line 380
    :cond_1
    :goto_0
    return-void

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->onIdle:I
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$700(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 377
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    const/4 v1, 0x6

    #setter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$502(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;I)I

    .line 378
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->connection:Lcom/avos/avoscloud/okhttp/Connection;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$900(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okhttp/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0
.end method

.method public timeout()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->timeout:Lcom/avos/avoscloud/okio/ForwardingTimeout;

    return-object v0
.end method

.method protected final unexpectedEndOfInput()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->connection:Lcom/avos/avoscloud/okhttp/Connection;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$900(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okhttp/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 396
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    const/4 v1, 0x6

    #setter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$502(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;I)I

    .line 397
    return-void
.end method
