.class public Lcom/zhihu/android/app/util/at;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/util/at$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 84
    if-nez p0, :cond_0

    .line 85
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/util/at$a;

    invoke-direct {v1, p1, v2}, Lcom/zhihu/android/app/util/at$a;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {p0, p1, v2}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static varargs a(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 92
    if-nez p0, :cond_0

    .line 93
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/util/at$a;

    invoke-direct {v1, p1, p2, v2}, Lcom/zhihu/android/app/util/at$a;-><init>(I[Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    const v0, 0x7f09034d

    invoke-static {p0, p1, v0}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;Lcom/zhihu/android/bumblebee/exception/BumblebeeException;I)V

    .line 133
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/zhihu/android/bumblebee/exception/BumblebeeException;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    :try_start_0
    invoke-virtual {p1}, Lcom/zhihu/android/bumblebee/exception/BumblebeeException;->getContent()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/zhihu/android/api/model/ApiError;

    invoke-static {v0, v1}, Lcom/zhihu/android/api/util/c;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/ApiError;

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-static {p0, p2}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 100
    if-nez p0, :cond_0

    .line 101
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/util/at$a;

    invoke-direct {v1, p1, v2}, Lcom/zhihu/android/app/util/at$a;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-static {p0, p1, v2}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 108
    if-nez p0, :cond_0

    .line 109
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/util/at$a;

    invoke-direct {v1, p1, v2}, Lcom/zhihu/android/app/util/at$a;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {p0, p1, v2}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static varargs b(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 116
    if-nez p0, :cond_0

    .line 117
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/util/at$a;

    invoke-direct {v1, p1, p2, v2}, Lcom/zhihu/android/app/util/at$a;-><init>(I[Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 124
    if-nez p0, :cond_0

    .line 125
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/util/at$a;

    invoke-direct {v1, p1, v2}, Lcom/zhihu/android/app/util/at$a;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {p0, p1, v2}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
