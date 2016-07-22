.class Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker$1;
.super Ljava/lang/Object;
.source "WebSocketServer.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;-><init>(Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;

.field final synthetic val$this$0:Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker$1;->this$1:Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;

    iput-object p2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker$1;->val$this$0:Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 683
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 684
    return-void
.end method
