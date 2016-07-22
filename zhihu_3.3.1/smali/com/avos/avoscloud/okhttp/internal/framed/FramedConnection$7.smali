.class Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$7;
.super Lcom/avos/avoscloud/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushResetLater(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

.field final synthetic val$errorCode:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 873
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$7;->val$streamId:I

    iput-object p5, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$7;->val$errorCode:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/avos/avoscloud/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 875
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$2500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$7;->val$streamId:I

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$7;->val$errorCode:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;->onReset(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    .line 876
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    monitor-enter v1

    .line 877
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$2600(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$7;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 878
    monitor-exit v1

    .line 879
    return-void

    .line 878
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
