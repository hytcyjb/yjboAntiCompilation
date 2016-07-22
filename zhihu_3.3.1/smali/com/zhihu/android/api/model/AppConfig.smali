.class public Lcom/zhihu/android/api/model/AppConfig;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "AppConfig.java"


# instance fields
.field public announcement:Lcom/zhihu/android/api/model/Announcement;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "announcement"
    .end annotation
.end field

.field public appVersion:Lcom/zhihu/android/api/model/AppVersion;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "version_status"
    .end annotation
.end field

.field public config:Lcom/zhihu/android/api/model/Config;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "config"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
