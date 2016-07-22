.class public interface abstract Lcom/avos/avoscloud/okhttp/internal/InternalCache;
.super Ljava/lang/Object;
.source "InternalCache.java"


# virtual methods
.method public abstract get(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response;
.end method

.method public abstract put(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;
.end method

.method public abstract remove(Lcom/avos/avoscloud/okhttp/Request;)V
.end method

.method public abstract trackConditionalCacheHit()V
.end method

.method public abstract trackResponse(Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;)V
.end method

.method public abstract update(Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Response;)V
.end method
