.class public Lcom/zhihu/android/api/a/f;
.super Lcom/zhihu/android/bumblebee/http/d;
.source "ZhihuRetryPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x3

    const/16 v1, 0x9c4

    sget-object v2, Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;->SERVER_ERROR:Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

    invoke-direct {p0, v0, v1, v2}, Lcom/zhihu/android/api/a/f;-><init>(IILcom/zhihu/android/bumblebee/util/RetryPolicyRule;)V

    .line 28
    return-void
.end method

.method public constructor <init>(IILcom/zhihu/android/bumblebee/util/RetryPolicyRule;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/zhihu/android/bumblebee/http/d;-><init>(IILcom/zhihu/android/bumblebee/util/RetryPolicyRule;)V

    .line 32
    return-void
.end method
