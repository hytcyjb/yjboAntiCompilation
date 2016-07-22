.class public Lcom/zhihu/android/api/model/GlobalNotificationSettings;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "GlobalNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/api/model/GlobalNotificationSettings$MarketSettings;,
        Lcom/zhihu/android/api/model/GlobalNotificationSettings$OptionSettings;,
        Lcom/zhihu/android/api/model/GlobalNotificationSettings$QuestionAnsweredSettings;,
        Lcom/zhihu/android/api/model/GlobalNotificationSettings$QuestionSettings;,
        Lcom/zhihu/android/api/model/GlobalNotificationSettings$MessageSettings;,
        Lcom/zhihu/android/api/model/GlobalNotificationSettings$ColumnFollowSettings;,
        Lcom/zhihu/android/api/model/GlobalNotificationSettings$MemberFollowSettings;,
        Lcom/zhihu/android/api/model/GlobalNotificationSettings$ArticleSettings;,
        Lcom/zhihu/android/api/model/GlobalNotificationSettings$CommentSettings;,
        Lcom/zhihu/android/api/model/GlobalNotificationSettings$AnswerSettings;,
        Lcom/zhihu/android/api/model/GlobalNotificationSettings$MentionSettings;
    }
.end annotation


# instance fields
.field public answerSettings:Lcom/zhihu/android/api/model/GlobalNotificationSettings$AnswerSettings;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "answer_voteup"
    .end annotation
.end field

.field public articleSettings:Lcom/zhihu/android/api/model/GlobalNotificationSettings$ArticleSettings;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "article_voteup"
    .end annotation
.end field

.field public columnFollowSettings:Lcom/zhihu/android/api/model/GlobalNotificationSettings$ColumnFollowSettings;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "column_follow"
    .end annotation
.end field

.field public commentSettings:Lcom/zhihu/android/api/model/GlobalNotificationSettings$CommentSettings;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "comment_voteup"
    .end annotation
.end field

.field public marketSettings:Lcom/zhihu/android/api/model/GlobalNotificationSettings$MarketSettings;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "market"
    .end annotation
.end field

.field public memberFollowSettings:Lcom/zhihu/android/api/model/GlobalNotificationSettings$MemberFollowSettings;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "member_follow"
    .end annotation
.end field

.field public mentionSettings:Lcom/zhihu/android/api/model/GlobalNotificationSettings$MentionSettings;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "mention"
    .end annotation
.end field

.field public messageSettings:Lcom/zhihu/android/api/model/GlobalNotificationSettings$MessageSettings;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "inboxmsg"
    .end annotation
.end field

.field public questionAnsweredSettings:Lcom/zhihu/android/api/model/GlobalNotificationSettings$QuestionAnsweredSettings;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "question_answered"
    .end annotation
.end field

.field public questionSettings:Lcom/zhihu/android/api/model/GlobalNotificationSettings$QuestionSettings;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "question_invite"
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
