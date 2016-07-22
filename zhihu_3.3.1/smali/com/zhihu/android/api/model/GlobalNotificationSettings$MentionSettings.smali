.class public Lcom/zhihu/android/api/model/GlobalNotificationSettings$MentionSettings;
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
    name = "MentionSettings"
.end annotation


# instance fields
.field public emailEnable:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "mention_email"
    .end annotation
.end field

.field public noticeEnable:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "mention_noti"
    .end annotation
.end field

.field public scope:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "mention_scope"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MentionSettings;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public isEmailEnable()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MentionSettings;->emailEnable:Z

    return v0
.end method

.method public isFastAnswerEnable()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public isMessageEnable()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MentionSettings;->noticeEnable:Z

    return v0
.end method

.method public setEmailEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MentionSettings;->emailEnable:Z

    .line 89
    return-void
.end method

.method public setFastAnswerEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 93
    return-void
.end method

.method public setMessageEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MentionSettings;->noticeEnable:Z

    .line 98
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MentionSettings;->scope:Ljava/lang/String;

    .line 103
    return-void
.end method
