.class Lcom/zhihu/android/app/ui/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/zhihu/android/bumblebee/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/app/ui/activity/MainActivity;->I()V
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
        "Lcom/zhihu/android/api/model/People;",
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
    .line 727
    iput-object p1, p0, Lcom/zhihu/android/app/ui/activity/MainActivity$2;->a:Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zhihu/android/api/model/People;)V
    .locals 1
    .parameter

    .prologue
    .line 736
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity$2;->a:Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-static {v0, p1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(Lcom/zhihu/android/app/ui/activity/MainActivity;Lcom/zhihu/android/api/model/People;)V

    .line 737
    return-void
.end method

.method public a(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 0
    .parameter

    .prologue
    .line 732
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    check-cast p1, Lcom/zhihu/android/api/model/People;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/activity/MainActivity$2;->a(Lcom/zhihu/android/api/model/People;)V

    return-void
.end method
