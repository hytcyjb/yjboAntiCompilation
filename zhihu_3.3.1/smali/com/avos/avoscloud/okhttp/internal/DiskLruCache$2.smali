.class Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$2;
.super Lcom/avos/avoscloud/okhttp/internal/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->newJournalWriter()Lcom/avos/avoscloud/okio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 303
    const-class v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Lcom/avos/avoscloud/okio/Sink;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$2;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/okhttp/internal/FaultHidingSink;-><init>(Lcom/avos/avoscloud/okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 2
    .parameter

    .prologue
    .line 305
    sget-boolean v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$2;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$2;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    const/4 v1, 0x1

    #setter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->hasJournalErrors:Z
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$602(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Z)Z

    .line 307
    return-void
.end method
