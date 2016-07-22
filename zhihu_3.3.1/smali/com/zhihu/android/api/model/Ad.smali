.class public Lcom/zhihu/android/api/model/Ad;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/api/model/Ad$Creative;,
        Lcom/zhihu/android/api/model/Ad$Brand;
    }
.end annotation


# static fields
.field public static final TEMPLATE_CARD_APP_FEED:Ljava/lang/String; = "card_app_feed"

.field public static final TEMPLATE_CAROUSEL_APP_FEED:Ljava/lang/String; = "carousel_app_feed"


# instance fields
.field public brand:Lcom/zhihu/android/api/model/Ad$Brand;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "brand"
    .end annotation
.end field

.field public closeTrack:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "close_track"
    .end annotation
.end field

.field public count:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "count"
    .end annotation
.end field

.field public creatives:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "creatives"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Ad$Creative;",
            ">;"
        }
    .end annotation
.end field

.field public loadTracks:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "load_tracks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public position:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "position"
    .end annotation
.end field

.field public template:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "template"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method


# virtual methods
.method public isAdCard()Z
    .locals 2

    .prologue
    .line 81
    const-string v0, "card_app_feed"

    iget-object v1, p0, Lcom/zhihu/android/api/model/Ad;->template:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAdCarousel()Z
    .locals 2

    .prologue
    .line 85
    const-string v0, "carousel_app_feed"

    iget-object v1, p0, Lcom/zhihu/android/api/model/Ad;->template:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
