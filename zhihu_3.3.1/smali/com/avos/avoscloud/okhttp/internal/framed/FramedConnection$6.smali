.class Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;
.super Lcom/avos/avoscloud/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushDataLater(ILcom/avos/avoscloud/okio/BufferedSource;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

.field final synthetic val$buffer:Lcom/avos/avoscloud/okio/Buffer;

.field final synthetic val$byteCount:I

.field final synthetic val$inFinished:Z

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/avos/avoscloud/okio/Buffer;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 856
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    iput-object p5, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->val$buffer:Lcom/avos/avoscloud/okio/Buffer;

    iput p6, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->val$byteCount:I

    iput-boolean p7, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Lcom/avos/avoscloud/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 859
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$2500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->val$buffer:Lcom/avos/avoscloud/okio/Buffer;

    iget v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->val$byteCount:I

    iget-boolean v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->val$inFinished:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;->onData(ILcom/avos/avoscloud/okio/BufferedSource;IZ)Z

    move-result v0

    .line 860
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    iget v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    sget-object v3, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    invoke-interface {v1, v2, v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    .line 861
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->val$inFinished:Z

    if-eqz v0, :cond_2

    .line 862
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$2600(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 864
    monitor-exit v1

    .line 868
    :cond_2
    :goto_0
    return-void

    .line 864
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 866
    :catch_0
    move-exception v0

    goto :goto_0
.end method
