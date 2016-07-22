.class Lcom/avos/avoscloud/okhttp/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lcom/avos/avoscloud/okhttp/internal/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/Cache;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okhttp/Cache;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Cache$1;->this$0:Lcom/avos/avoscloud/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$1;->this$0:Lcom/avos/avoscloud/okhttp/Cache;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okhttp/Cache;->get(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$1;->this$0:Lcom/avos/avoscloud/okhttp/Cache;

    #calls: Lcom/avos/avoscloud/okhttp/Cache;->put(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;
    invoke-static {v0, p1}, Lcom/avos/avoscloud/okhttp/Cache;->access$000(Lcom/avos/avoscloud/okhttp/Cache;Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/avos/avoscloud/okhttp/Request;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$1;->this$0:Lcom/avos/avoscloud/okhttp/Cache;

    #calls: Lcom/avos/avoscloud/okhttp/Cache;->remove(Lcom/avos/avoscloud/okhttp/Request;)V
    invoke-static {v0, p1}, Lcom/avos/avoscloud/okhttp/Cache;->access$100(Lcom/avos/avoscloud/okhttp/Cache;Lcom/avos/avoscloud/okhttp/Request;)V

    .line 147
    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$1;->this$0:Lcom/avos/avoscloud/okhttp/Cache;

    #calls: Lcom/avos/avoscloud/okhttp/Cache;->trackConditionalCacheHit()V
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/Cache;->access$300(Lcom/avos/avoscloud/okhttp/Cache;)V

    .line 153
    return-void
.end method

.method public trackResponse(Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;)V
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$1;->this$0:Lcom/avos/avoscloud/okhttp/Cache;

    #calls: Lcom/avos/avoscloud/okhttp/Cache;->trackResponse(Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;)V
    invoke-static {v0, p1}, Lcom/avos/avoscloud/okhttp/Cache;->access$400(Lcom/avos/avoscloud/okhttp/Cache;Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;)V

    .line 156
    return-void
.end method

.method public update(Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Response;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$1;->this$0:Lcom/avos/avoscloud/okhttp/Cache;

    #calls: Lcom/avos/avoscloud/okhttp/Cache;->update(Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Response;)V
    invoke-static {v0, p1, p2}, Lcom/avos/avoscloud/okhttp/Cache;->access$200(Lcom/avos/avoscloud/okhttp/Cache;Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Response;)V

    .line 150
    return-void
.end method
