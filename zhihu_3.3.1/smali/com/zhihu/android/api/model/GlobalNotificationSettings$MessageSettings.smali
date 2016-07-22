.class public Lcom/zhihu/android/api/model/GlobalNotificationSettings$MessageSettings;
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
    name = "MessageSettings"
.end annotation


# instance fields
.field public emailEnable:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "inboxmsg_email"
    .end annotation
.end field

.field public scope:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "inboxmsg_scope"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MessageSettings;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public isEmailEnable()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MessageSettings;->emailEnable:Z

    return v0
.end method

.method public isFastAnswerEnable()Z
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public isMessageEnable()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public setEmailEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MessageSettings;->emailEnable:Z

    .line 392
    return-void
.end method

.method public setFastAnswerEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 396
    return-void
.end method

.method public setMessageEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 400
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$MessageSettings;->scope:Ljava/lang/String;

    .line 405
    return-void
.end method
