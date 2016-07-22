.class public Lcom/zhihu/android/api/model/LabSettings;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "LabSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/api/model/LabSettings$TopStorySettings;
    }
.end annotation


# instance fields
.field public topStorySettings:Lcom/zhihu/android/api/model/LabSettings$TopStorySettings;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "use_topstory"
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
