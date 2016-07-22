.class public Lcom/zhihu/android/api/model/Ad$Brand;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/api/model/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Brand"
.end annotation


# instance fields
.field public id:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public logo:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "logo"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
