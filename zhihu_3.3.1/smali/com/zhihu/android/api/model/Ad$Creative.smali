.class public Lcom/zhihu/android/api/model/Ad$Creative;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/api/model/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creative"
.end annotation


# instance fields
.field public clickTracks:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "click_tracks"
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

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "description"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public image:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "image"
    .end annotation
.end field

.field public impressionTracks:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "impression_tracks"
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

.field public landingUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "landing_url"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "name"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
