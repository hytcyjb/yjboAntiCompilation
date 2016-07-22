.class public Lcom/zhihu/android/api/model/Image;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Image.java"


# instance fields
.field public format:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "format"
    .end annotation
.end field

.field public hash:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "hash"
    .end annotation
.end field

.field public height:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "height"
    .end annotation
.end field

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "token"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "full_url"
    .end annotation
.end field

.field public width:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
