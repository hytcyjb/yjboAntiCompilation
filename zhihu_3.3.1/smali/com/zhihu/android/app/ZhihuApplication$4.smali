.class Lcom/zhihu/android/app/ZhihuApplication$4;
.super Ljava/lang/Object;
.source "ZhihuApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/app/ZhihuApplication;->f()V
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
    .line 306
    iput-object p1, p0, Lcom/zhihu/android/app/ZhihuApplication$4;->a:Lcom/zhihu/android/app/ZhihuApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 310
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zhihu/android/app/util/ac;

    iget-object v2, p0, Lcom/zhihu/android/app/ZhihuApplication$4;->a:Lcom/zhihu/android/app/ZhihuApplication;

    invoke-direct {v1, v2}, Lcom/zhihu/android/app/util/ac;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 311
    return-void
.end method
