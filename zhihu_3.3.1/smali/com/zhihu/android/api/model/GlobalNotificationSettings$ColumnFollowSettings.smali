.class public Lcom/zhihu/android/api/model/GlobalNotificationSettings$ColumnFollowSettings;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "GlobalNotificationSettings.java"

# interfaces
.implements Lcom/zhihu/android/api/model/GlobalNotificationSettings$OptionSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/api/model/GlobalNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnFollowSettings"
.end annotation


# instance fields
.field public emailEnable:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "column_follow_email"
    .end annotation
.end field

.field public noticeEnable:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "column_follow_noti"
    .end annotation
.end field

.field public scope:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "column_follow_scope"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$ColumnFollowSettings;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public isEmailEnable()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$ColumnFollowSettings;->emailEnable:Z

    return v0
.end method

.method public isFastAnswerEnable()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public isMessageEnable()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$ColumnFollowSettings;->noticeEnable:Z

    return v0
.end method

.method public setEmailEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$ColumnFollowSettings;->emailEnable:Z

    .line 344
    return-void
.end method

.method public setFastAnswerEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 348
    return-void
.end method

.method public setMessageEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$ColumnFollowSettings;->noticeEnable:Z

    .line 353
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$ColumnFollowSettings;->scope:Ljava/lang/String;

    .line 358
    return-void
.end method
