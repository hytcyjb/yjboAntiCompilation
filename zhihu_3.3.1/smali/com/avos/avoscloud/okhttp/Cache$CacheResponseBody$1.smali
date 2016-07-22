.class Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody$1;
.super Lcom/avos/avoscloud/okio/ForwardingSource;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;-><init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;Lcom/avos/avoscloud/okio/Source;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody$1;->this$0:Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;

    iput-object p3, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody$1;->val$snapshot:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/okio/ForwardingSource;-><init>(Lcom/avos/avoscloud/okio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody$1;->val$snapshot:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;->close()V

    .line 709
    invoke-super {p0}, Lcom/avos/avoscloud/okio/ForwardingSource;->close()V

    .line 710
    return-void
.end method
