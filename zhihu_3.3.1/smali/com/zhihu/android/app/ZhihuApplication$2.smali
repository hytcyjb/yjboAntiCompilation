.class Lcom/zhihu/android/app/ZhihuApplication$2;
.super Ljava/lang/Object;
.source "ZhihuApplication.java"

# interfaces
.implements Lcom/facebook/common/f/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/app/ZhihuApplication;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhihu/android/app/ZhihuApplication;


# direct methods
.method constructor <init>(Lcom/zhihu/android/app/ZhihuApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/zhihu/android/app/ZhihuApplication$2;->a:Lcom/zhihu/android/app/ZhihuApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load library: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 196
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v1, "DSO not found, try to load by SoLoader"

    invoke-static {v1, v0}, Lcom/zhihu/android/base/util/debug/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    invoke-static {p1}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
