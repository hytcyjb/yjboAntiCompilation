.class public interface abstract Lcom/zhihu/android/api/b/ak;
.super Ljava/lang/Object;
.source "ZReactorService.java"


# annotations
.annotation runtime Lcom/zhihu/android/bumblebee/a/d;
    a = {
        "release: https://api.zhihu.com",
        "debug: http://api.mobile.com"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/io/InputStream;Lcom/zhihu/android/bumblebee/b/c;)V
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/aa;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/l;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/n;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/s;
        a = "/zreactor/app"
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/z;
        a = 0x0
        c = .enum Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;->SERVER_ERROR:Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
