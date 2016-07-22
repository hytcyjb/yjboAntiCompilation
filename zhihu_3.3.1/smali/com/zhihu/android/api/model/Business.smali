.class public Lcom/zhihu/android/api/model/Business;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Business.java"


# instance fields
.field public primary:Lcom/zhihu/android/api/model/Topic;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "primary"
    .end annotation
.end field

.field public subBusiness:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "sub"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Topic;",
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
