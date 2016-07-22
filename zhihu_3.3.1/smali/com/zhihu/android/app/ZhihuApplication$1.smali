.class Lcom/zhihu/android/app/ZhihuApplication$1;
.super Ljava/lang/Object;
.source "ZhihuApplication.java"

# interfaces
.implements Lcom/facebook/common/internal/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/app/ZhihuApplication;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/i",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/zhihu/android/app/ZhihuApplication;


# direct methods
.method constructor <init>(Lcom/zhihu/android/app/ZhihuApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/zhihu/android/app/ZhihuApplication$1;->a:Lcom/zhihu/android/app/ZhihuApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/zhihu/android/app/ZhihuApplication$1;->a:Lcom/zhihu/android/app/ZhihuApplication;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ZhihuApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/zhihu/android/app/ZhihuApplication$1;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
