.class Lcom/zhihu/android/app/ui/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/zhihu/android/bumblebee/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/app/ui/activity/MainActivity;->F()V
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
        "Lcom/zhihu/android/api/model/AppConfig;",
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
    .line 375
    iput-object p1, p0, Lcom/zhihu/android/app/ui/activity/MainActivity$1;->a:Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zhihu/android/api/model/AppConfig;)V
    .locals 2
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity$1;->a:Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-static {v0, p1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/ui/activity/MainActivity;Lcom/zhihu/android/api/model/AppConfig;)Lcom/zhihu/android/api/model/AppConfig;

    .line 385
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity$1;->a:Lcom/zhihu/android/app/ui/activity/MainActivity;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/MainActivity$1;->a:Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-static {v1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/ui/activity/MainActivity;)Lcom/zhihu/android/api/model/AppConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Lcom/zhihu/android/app/ui/activity/MainActivity;Lcom/zhihu/android/api/model/AppConfig;)V

    .line 386
    return-void
.end method

.method public a(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    check-cast p1, Lcom/zhihu/android/api/model/AppConfig;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/activity/MainActivity$1;->a(Lcom/zhihu/android/api/model/AppConfig;)V

    return-void
.end method
