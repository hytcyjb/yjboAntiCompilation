.class public Lcom/zhihu/android/api/model/ActionCard;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "ActionCard.java"


# static fields
.field public static final TYPE_POPULAR_TOPICS_CARD:Ljava/lang/String; = "popular_topics"


# instance fields
.field public id:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public topics:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "topic_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Topic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method


# virtual methods
.method public isPopularTopicsCard()Z
    .locals 2

    .prologue
    .line 40
    const-string v0, "popular_topics"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ActionCard;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
