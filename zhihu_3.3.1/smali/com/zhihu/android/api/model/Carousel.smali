.class public Lcom/zhihu/android/api/model/Carousel;
.super Ljava/lang/Object;
.source "Carousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/api/model/Carousel$Ad;
    }
.end annotation


# instance fields
.field public ads:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "carousel_ads"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Carousel$Ad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
