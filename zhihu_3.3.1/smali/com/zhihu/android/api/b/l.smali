.class public interface abstract Lcom/zhihu/android/api/b/l;
.super Ljava/lang/Object;
.source "CommentService.java"


# annotations
.annotation runtime Lcom/zhihu/android/bumblebee/a/d;
    a = {
        "release: https://api.zhihu.com",
        "debug: http://api.mobile.com"
    }
.end annotation


# virtual methods
.method public abstract a(JJLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "comment_id"
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
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/comments/{comment_id}/conversation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CommentList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract a(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "comment_id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/ac;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NEVER:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/s;
        a = "/comments/{comment_id}/voters"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CommentVoting;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract a(JLjava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "comment_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "member_id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/ac;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NEVER:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/c;
        a = "/comments/{comment_id}/voters/{member_id}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CommentVoting;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract a(JZJLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "answer_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "reverse_order"
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
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/answers/{answer_id}/comments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZJ",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CommentList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract a(JZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "answer_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "reverse_order"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_THEN_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/answers/{answer_id}/comments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CommentList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/e;
            a = "content"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/e;
            a = "resource_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/e;
            a = "comment_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/e;
            a = "type"
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
        a = "/comments"
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
            "Lcom/zhihu/android/api/model/Comment;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract b(JJLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "comment_id"
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
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/comments/{comment_id}/replies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CommentList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract b(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "comment_id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/ac;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/c;
        a = "/comments/{comment_id}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/SuccessStatus;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract b(JZJLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "question_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "reverse_order"
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
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/questions/{question_id}/comments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZJ",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CommentList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract b(JZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "question_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "reverse_order"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_THEN_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/questions/{question_id}/comments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CommentList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract c(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "comment_id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_THEN_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/comments/{comment_id}/conversation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CommentList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract c(JZJLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "collection_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "reverse_order"
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
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/collections/{collection_id}/comments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZJ",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CommentList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract c(JZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "collection_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "reverse_order"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_THEN_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/collections/{collection_id}/comments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CommentList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract d(JLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "comment_id"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_THEN_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/comments/{comment_id}/replies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CommentList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract d(JZJLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "article_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "reverse_order"
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
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/articles/{article_id}/comments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZJ",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CommentList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method

.method public abstract d(JZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/w;
            a = "article_id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/zhihu/android/bumblebee/a/x;
            a = "reverse_order"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/zhihu/android/bumblebee/a/b;
        a = .enum Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_THEN_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;
    .end annotation

    .annotation runtime Lcom/zhihu/android/bumblebee/a/g;
        a = "/articles/{article_id}/comments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcom/zhihu/android/bumblebee/b/c",
            "<",
            "Lcom/zhihu/android/api/model/CommentList;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/e;"
        }
    .end annotation
.end method
