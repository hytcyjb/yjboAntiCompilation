.class Lcom/avos/avoscloud/okhttp/ConnectionPool$1;
.super Ljava/lang/Object;
.source "ConnectionPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/ConnectionPool;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okhttp/ConnectionPool;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool$1;->this$0:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool$1;->this$0:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    #calls: Lcom/avos/avoscloud/okhttp/ConnectionPool;->runCleanupUntilPoolIsEmpty()V
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/ConnectionPool;->access$000(Lcom/avos/avoscloud/okhttp/ConnectionPool;)V

    .line 100
    return-void
.end method
