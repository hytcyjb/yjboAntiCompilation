.class public Lcom/zhihu/android/api/model/Config;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Config.java"


# instance fields
.field public enableFoolEggs:B
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "enable_fool_eggs"
    .end annotation
.end field

.field public enableSogou:B
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "enable_sogou"
    .end annotation
.end field

.field public foolEggsKeys:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "fool_eggs_keys"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
