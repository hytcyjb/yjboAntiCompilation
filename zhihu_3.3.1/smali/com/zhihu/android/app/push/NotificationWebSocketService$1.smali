.class Lcom/zhihu/android/app/push/NotificationWebSocketService$1;
.super Lrx/h;
.source "NotificationWebSocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/app/push/NotificationWebSocketService;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/h",
        "<",
        "Lcom/zhihu/android/api/model/NotificationBadge;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/zhihu/android/app/push/NotificationWebSocketService;


# direct methods
.method constructor <init>(Lcom/zhihu/android/app/push/NotificationWebSocketService;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService$1;->a:Lcom/zhihu/android/app/push/NotificationWebSocketService;

    invoke-direct {p0}, Lrx/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zhihu/android/api/model/NotificationBadge;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/zhihu/android/api/model/NotificationBadge;->isInbox()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/d/j;

    invoke-direct {v1, p1}, Lcom/zhihu/android/app/d/j;-><init>(Lcom/zhihu/android/api/model/NotificationBadge;)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/d/k;

    invoke-direct {v1, p1}, Lcom/zhihu/android/app/d/k;-><init>(Lcom/zhihu/android/api/model/NotificationBadge;)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService$1;->a:Lcom/zhihu/android/app/push/NotificationWebSocketService;

    invoke-virtual {v0}, Lcom/zhihu/android/app/push/NotificationWebSocketService;->stopSelf()V

    .line 115
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    iget-object v0, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService$1;->a:Lcom/zhihu/android/app/push/NotificationWebSocketService;

    invoke-virtual {v0}, Lcom/zhihu/android/app/push/NotificationWebSocketService;->stopSelf()V

    .line 121
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    check-cast p1, Lcom/zhihu/android/api/model/NotificationBadge;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/push/NotificationWebSocketService$1;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    return-void
.end method
