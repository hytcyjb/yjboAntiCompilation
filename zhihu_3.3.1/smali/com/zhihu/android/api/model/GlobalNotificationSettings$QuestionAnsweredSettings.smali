.class public Lcom/zhihu/android/api/model/GlobalNotificationSettings$QuestionAnsweredSettings;
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
    name = "QuestionAnsweredSettings"
.end annotation


# instance fields
.field public emailEnable:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "question_answered_email"
    .end annotation
.end field

.field public fastEnable:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "fast_new_answer"
    .end annotation
.end field

.field public scope:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "question_answered_scope"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$QuestionAnsweredSettings;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public isEmailEnable()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$QuestionAnsweredSettings;->emailEnable:Z

    return v0
.end method

.method public isFastAnswerEnable()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$QuestionAnsweredSettings;->fastEnable:Z

    return v0
.end method

.method public isMessageEnable()Z
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x1

    return v0
.end method

.method public setEmailEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$QuestionAnsweredSettings;->emailEnable:Z

    .line 489
    return-void
.end method

.method public setFastAnswerEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-boolean p1, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$QuestionAnsweredSettings;->fastEnable:Z

    .line 494
    return-void
.end method

.method public setMessageEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 498
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/zhihu/android/api/model/GlobalNotificationSettings$QuestionAnsweredSettings;->scope:Ljava/lang/String;

    .line 503
    return-void
.end method
