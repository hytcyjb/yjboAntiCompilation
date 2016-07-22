.class public interface abstract Lcom/zhihu/android/api/b/af;
.super Ljava/lang/Object;
.source "ShareService.java"


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
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/collections/{id}/share"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/ShareInfo;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/roundtables/{id}/share"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/ShareInfo;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract b(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/answers/{id}/share"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/ShareInfo;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract c(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/questions/{id}/share"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/ShareInfo;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract d(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/articles/{id}/share"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/ShareInfo;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method
