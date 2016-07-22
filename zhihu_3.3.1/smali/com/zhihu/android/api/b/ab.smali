.class public interface abstract Lcom/zhihu/android/api/b/ab;
.super Ljava/lang/Object;
.source "ReportService.java"


# annotations
.annotation runtime Lcom/zhihu/android/bumblebee/a/d;
    a = {
        "release: https://api.zhihu.com",
        "debug: http://api.mobile.com"
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/zhihu/android/bumblebee/b/a;)Lcom/zhihu/android/bumblebee/http/e;
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_ELSE_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;
        b = 0x240c8400L
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/report"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/android/bumblebee/b/a",
            "<",
            "Lcom/zhihu/android/api/model/ReportReasonPackage;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/e;
            a = "type"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/e;
            a = "resource_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/e;
            a = "reason"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/e;
            a = "reason_code"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/ac;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/s;
        a = "/report"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/SuccessStatus;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method
