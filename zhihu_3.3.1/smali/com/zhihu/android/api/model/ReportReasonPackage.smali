.class public Lcom/zhihu/android/api/model/ReportReasonPackage;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "ReportReasonPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/api/model/ReportReasonPackage$ReportType;
    }
.end annotation


# static fields
.field public static final REPORT_TYPE_ANSWER:Ljava/lang/String; = "answer"

.field public static final REPORT_TYPE_ARTICLE:Ljava/lang/String; = "article"

.field public static final REPORT_TYPE_COMMENT:Ljava/lang/String; = "comment"

.field public static final REPORT_TYPE_FAVLIST:Ljava/lang/String; = "collection"

.field public static final REPORT_TYPE_MEMBER:Ljava/lang/String; = "people"

.field public static final REPORT_TYPE_MESSAGE:Ljava/lang/String; = "message"

.field public static final REPORT_TYPE_QUESTION:Ljava/lang/String; = "question"


# instance fields
.field public answer:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "answer"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/ReportReason;",
            ">;"
        }
    .end annotation
.end field

.field public article:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "article"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/ReportReason;",
            ">;"
        }
    .end annotation
.end field

.field public comment:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "comment"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/ReportReason;",
            ">;"
        }
    .end annotation
.end field

.field public favlist:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "favlist"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/ReportReason;",
            ">;"
        }
    .end annotation
.end field

.field public member:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "member"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/ReportReason;",
            ">;"
        }
    .end annotation
.end field

.field public message:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "message"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/ReportReason;",
            ">;"
        }
    .end annotation
.end field

.field public question:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "question"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/ReportReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getResasons(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/ReportReason;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 110
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 94
    :sswitch_0
    const-string v1, "comment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "question"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "people"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "collection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "answer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "article"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "message"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/ReportReasonPackage;->comment:Ljava/util/List;

    goto :goto_1

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/zhihu/android/api/model/ReportReasonPackage;->question:Ljava/util/List;

    goto :goto_1

    .line 100
    :pswitch_2
    iget-object v0, p0, Lcom/zhihu/android/api/model/ReportReasonPackage;->member:Ljava/util/List;

    goto :goto_1

    .line 102
    :pswitch_3
    iget-object v0, p0, Lcom/zhihu/android/api/model/ReportReasonPackage;->favlist:Ljava/util/List;

    goto :goto_1

    .line 104
    :pswitch_4
    iget-object v0, p0, Lcom/zhihu/android/api/model/ReportReasonPackage;->answer:Ljava/util/List;

    goto :goto_1

    .line 106
    :pswitch_5
    iget-object v0, p0, Lcom/zhihu/android/api/model/ReportReasonPackage;->article:Ljava/util/List;

    goto :goto_1

    .line 108
    :pswitch_6
    iget-object v0, p0, Lcom/zhihu/android/api/model/ReportReasonPackage;->message:Ljava/util/List;

    goto :goto_1

    .line 94
    :sswitch_data_0
    .sparse-switch
        -0x67ca5162 -> :sswitch_3
        -0x5435c042 -> :sswitch_4
        -0x457dc41a -> :sswitch_1
        -0x3b1dcd71 -> :sswitch_2
        -0x2ba7330a -> :sswitch_5
        0x38a5ee5f -> :sswitch_0
        0x38eb0007 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
