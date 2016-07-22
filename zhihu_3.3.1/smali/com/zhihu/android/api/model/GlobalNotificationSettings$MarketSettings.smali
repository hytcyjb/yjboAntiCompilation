.class public Lcom/zhihu/android/api/model/GlobalNotificationSettings$MarketSettings;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "GlobalNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/api/model/GlobalNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarketSettings"
.end annotation


# instance fields
.field public newActivityEnable:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "new_activity"
    .end annotation
.end field

.field public weeklyEnable:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "weekly_omnibus"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
