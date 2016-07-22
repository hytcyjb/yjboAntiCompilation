.class public Lcom/zhihu/android/api/model/ShareInfo$ShareStatus$Status;
.super Ljava/lang/Object;
.source "ShareInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/api/model/ShareInfo$ShareStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# instance fields
.field public code:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "code"
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
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
