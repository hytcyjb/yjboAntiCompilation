.class Lcom/zhihu/android/app/ui/activity/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/zhihu/android/bumblebee/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/app/ui/activity/MainActivity;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhihu/android/bumblebee/b/c",
        "<",
        "Lcom/zhihu/android/api/model/NotificationBadge;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/zhihu/android/app/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/zhihu/android/app/ui/activity/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 774
    iput-object p1, p0, Lcom/zhihu/android/app/ui/activity/MainActivity$3;->a:Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zhihu/android/api/model/NotificationBadge;)V
    .locals 2
    .parameter

    .prologue
    .line 783
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity$3;->a:Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-static {v0, p1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/ui/activity/MainActivity;Lcom/zhihu/android/api/model/NotificationBadge;)Lcom/zhihu/android/api/model/NotificationBadge;

    .line 784
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/d/k;

    invoke-direct {v1, p1}, Lcom/zhihu/android/app/d/k;-><init>(Lcom/zhihu/android/api/model/NotificationBadge;)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 785
    return-void
.end method

.method public a(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 0
    .parameter

    .prologue
    .line 779
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 774
    check-cast p1, Lcom/zhihu/android/api/model/NotificationBadge;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/activity/MainActivity$3;->a(Lcom/zhihu/android/api/model/NotificationBadge;)V

    return-void
.end method
