.class public interface abstract Lcom/zhihu/android/api/b/h;
.super Ljava/lang/Object;
.source "CaptchaService.java"


# annotations
.annotation runtime Lcom/zhihu/android/bumblebee/a/d;
    a = {
        "release: https://api.zhihu.com",
        "debug: http://api.mobile.com"
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/zhihu/android/bumblebee/b/c;)V
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/captcha"
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/j;
        a = {
            "Authorization: oauth 8d5227e0aaaa4797a763ac64e0c3b8"
        }
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/k;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/Captcha;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)V
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/e;
            a = "input_text"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/ac;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/j;
        a = {
            "Authorization: oauth 8d5227e0aaaa4797a763ac64e0c3b8"
        }
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/k;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/s;
        a = "/captcha"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/SuccessStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Lcom/zhihu/android/bumblebee/b/c;)V
    .annotation runtime Lcom/zhihu/android/bumblebee/a/ac;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/j;
        a = {
            "Authorization: oauth 8d5227e0aaaa4797a763ac64e0c3b8"
        }
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/k;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/t;
        a = "/captcha"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/Captcha;",
            ">;)V"
        }
    .end annotation
.end method
