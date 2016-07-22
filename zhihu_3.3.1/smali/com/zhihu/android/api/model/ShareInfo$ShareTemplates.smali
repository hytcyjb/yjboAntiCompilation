.class public Lcom/zhihu/android/api/model/ShareInfo$ShareTemplates;
.super Ljava/lang/Object;
.source "ShareInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/api/model/ShareInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareTemplates"
.end annotation


# instance fields
.field public shortUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "short_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
