.class public Lcom/zhihu/android/api/model/GlobalNotificationSettings$MemberFollowSettings;
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
    name = "MemberFollowSettings"
.end annotation


# instance fields
.field public emailEnable:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "member_follow_email"
    .end annotation
.end field

.field public noticeEnable:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "member_follow_noti"
    .end annotation
.end field

.field public scope:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "member_follow_scope"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MemberFollowSettings;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public isEmailEnable()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MemberFollowSettings;->emailEnable:Z

    return v0
.end method

.method public isFastAnswerEnable()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public isMessageEnable()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MemberFollowSettings;->noticeEnable:Z

    return v0
.end method

.method public setEmailEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MemberFollowSettings;->emailEnable:Z

    .line 293
    return-void
.end method

.method public setFastAnswerEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 297
    return-void
.end method

.method public setMessageEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MemberFollowSettings;->noticeEnable:Z

    .line 302
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MemberFollowSettings;->scope:Ljava/lang/String;

    .line 307
    return-void
.end method
