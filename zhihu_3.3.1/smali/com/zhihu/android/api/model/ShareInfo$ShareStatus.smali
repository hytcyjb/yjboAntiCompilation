.class public Lcom/zhihu/android/api/model/ShareInfo$ShareStatus;
.super Ljava/lang/Object;
.source "ShareInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/api/model/ShareInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/api/model/ShareInfo$ShareStatus$Status;
    }
.end annotation


# instance fields
.field public qqStatus:Lcom/zhihu/android/api/model/ShareInfo$ShareStatus$Status;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "qq"
    .end annotation
.end field

.field public sinaStatus:Lcom/zhihu/android/api/model/ShareInfo$ShareStatus$Status;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "sina"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
