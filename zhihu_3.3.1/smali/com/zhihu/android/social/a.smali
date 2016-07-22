.class abstract Lcom/zhihu/android/social/a;
.super Ljava/lang/Object;
.source "CommonBaseApi.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/zhihu/android/social/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zhihu/android/social/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/social/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appid or appsecret should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/zhihu/android/social/a;->c(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/zhihu/android/social/a/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/zhihu/android/social/a;->c(Landroid/content/Context;)V

    .line 64
    invoke-static {p2}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/social/a/a;

    iput-object v0, p0, Lcom/zhihu/android/social/a;->c:Lcom/zhihu/android/social/a/a;

    .line 65
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p2}, Lcom/zhihu/android/social/a;->a(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p3}, Lcom/zhihu/android/social/a;->b(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zhihu/android/social/a;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/zhihu/android/social/a;->a()V

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/zhihu/android/social/a;->a()V

    .line 57
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zhihu/android/social/a;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method protected abstract c(Landroid/content/Context;)V
.end method
