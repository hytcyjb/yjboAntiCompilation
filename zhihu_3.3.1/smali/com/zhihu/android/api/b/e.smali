.class public interface abstract Lcom/zhihu/android/api/b/e;
.super Ljava/lang/Object;
.source "AppConfigService.java"


# annotations
.annotation runtime Lcom/zhihu/android/bumblebee/a/d;
    a = {
        "release: https://api.zhihu.com",
        "debug: http://api.mobile.com"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "platform"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "version"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "version_code"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "os_version"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "build"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/app_config"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/AppConfig;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method
