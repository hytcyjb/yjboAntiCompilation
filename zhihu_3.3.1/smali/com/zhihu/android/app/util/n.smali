.class public Lcom/zhihu/android/app/util/n;
.super Ljava/lang/Object;
.source "IgnoredRequestListener.java"

# interfaces
.implements Lcom/zhihu/android/bumblebee/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    const-string v0, "receive result failed and ignored:"

    invoke-static {v0, p1}, Lcom/zhihu/android/base/util/debug/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive result succeed but ignored:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 38
    return-void
.end method
