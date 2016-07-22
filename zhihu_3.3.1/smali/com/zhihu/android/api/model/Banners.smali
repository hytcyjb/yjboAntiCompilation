.class public Lcom/zhihu/android/api/model/Banners;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Banners.java"


# instance fields
.field public defaultBanners:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "default"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Banner;",
            ">;"
        }
    .end annotation
.end field

.field public normalBanners:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "normal"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Banner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
