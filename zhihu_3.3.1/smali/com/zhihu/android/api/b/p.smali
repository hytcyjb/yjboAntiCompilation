.class public interface abstract Lcom/zhihu/android/api/b/p;
.super Ljava/lang/Object;
.source "ExploreService.java"


# annotations
.annotation runtime Lcom/zhihu/android/bumblebee/a/d;
    a = {
        "release: https://api.zhihu.com",
        "debug: http://api.mobile.com"
    }
.end annotation


# virtual methods
.method public abstract a(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "offset"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/hot/editor/recommend"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/ZHObjectList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/hot/editor/recommend"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/ZHObjectList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract b(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "offset"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/explore/collections"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CollectionList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract b(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_THEN_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/explore/collections"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CollectionList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract c(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "offset"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/hot/top/answers/day"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/MultiAnswerList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract c(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_THEN_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/hot/top/answers/day"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/MultiAnswerList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method
