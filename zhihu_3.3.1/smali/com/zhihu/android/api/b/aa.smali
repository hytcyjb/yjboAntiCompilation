.class public interface abstract Lcom/zhihu/android/api/b/aa;
.super Ljava/lang/Object;
.source "QuestionService.java"


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
            a = "question_id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/questions/{question_id}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/Question;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract a(JLjava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "question_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "member_id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/c;
        a = "/questions/{question_id}/followers/{member_id}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/FollowStatus;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract a(JLjava/util/Map;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "question_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/f;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/ac;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/t;
        a = "/questions/{question_id}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/Question;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract a(JZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "question_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/e;
            a = "is_anonymous"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/ac;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/k;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/t;
        a = "/questions/{question_id}/anonymous"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/Relationship;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "question_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "offset"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_THEN_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/questions/{question_id}/followers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/PeopleList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/Map;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/f;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/ac;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/s;
        a = "/questions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/Question;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract b(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "question_id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/ac;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/s;
        a = "/questions/{question_id}/followers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/FollowStatus;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract c(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "question_id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/questions/{question_id}/anonymous"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/Relationship;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract d(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "question_id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/questions/{question_id}/relationship"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/Relationship;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract e(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "question_id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/ac;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/t;
        a = "/questions/{question_id}/nointerest"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/InterestStatus;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method
