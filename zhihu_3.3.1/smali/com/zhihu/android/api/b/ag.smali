.class public interface abstract Lcom/zhihu/android/api/b/ag;
.super Ljava/lang/Object;
.source "SocialService.java"


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
        a = "/social/bind"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/SocialSetting;",
            ">;)V"
        }
    .end annotation
.end method
