.class public Lcom/zhihu/android/api/model/ZHObject;
.super Lcom/google/api/client/json/GenericJson;
.source "ZHObject.java"


# static fields
.field public static final TYPE_ACTION_CARD:Ljava/lang/String; = "action_card"

.field public static final TYPE_ANSWER:Ljava/lang/String; = "answer"

.field public static final TYPE_ARTICLE:Ljava/lang/String; = "article"

.field public static final TYPE_BOOK:Ljava/lang/String; = "book"

.field public static final TYPE_COLLECTION:Ljava/lang/String; = "collection"

.field public static final TYPE_COLUMN:Ljava/lang/String; = "column"

.field public static final TYPE_COMMENT:Ljava/lang/String; = "comment"

.field public static final TYPE_FEED:Ljava/lang/String; = "feed"

.field public static final TYPE_FEED_AD:Ljava/lang/String; = "feed_advert"

.field public static final TYPE_INBOX:Ljava/lang/String; = "inbox"

.field public static final TYPE_MESSAGE:Ljava/lang/String; = "message"

.field public static final TYPE_PEOPLE:Ljava/lang/String; = "people"

.field public static final TYPE_QUESTION:Ljava/lang/String; = "question"

.field public static final TYPE_ROUNDTABLE:Ljava/lang/String; = "roundtable"

.field public static final TYPE_TOPIC:Ljava/lang/String; = "topic"


# instance fields
.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "type"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method

.method public static to(Lcom/zhihu/android/api/model/ZHObject;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/zhihu/android/api/model/ZHObject;",
            ">(",
            "Lcom/zhihu/android/api/model/ZHObject;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/zhihu/android/api/model/ZHObject;->getFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/api/model/ZHObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/api/client/json/JsonFactory;->fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/ZHObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unpackFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/zhihu/android/api/model/ZHObject;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    const/4 v1, 0x0

    .line 144
    instance-of v2, v0, Lcom/zhihu/android/api/model/ZHObject;

    if-eqz v2, :cond_0

    .line 145
    check-cast v0, Lcom/zhihu/android/api/model/ZHObject;

    .line 154
    :goto_0
    return-object v0

    .line 146
    :cond_0
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 148
    :try_start_0
    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/api/client/json/jackson2/JacksonFactory;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/google/api/client/json/jackson2/JacksonFactory;->fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/ZHObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public isActionCard()Z
    .locals 2

    .prologue
    .line 125
    const-string v0, "action_card"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ZHObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAnswer()Z
    .locals 2

    .prologue
    .line 81
    const-string v0, "answer"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ZHObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isArticle()Z
    .locals 2

    .prologue
    .line 101
    const-string v0, "article"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ZHObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBook()Z
    .locals 2

    .prologue
    .line 97
    const-string v0, "book"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ZHObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCollection()Z
    .locals 2

    .prologue
    .line 85
    const-string v0, "collection"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ZHObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isColumn()Z
    .locals 2

    .prologue
    .line 93
    const-string v0, "column"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ZHObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isComment()Z
    .locals 2

    .prologue
    .line 109
    const-string v0, "comment"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ZHObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFeed()Z
    .locals 2

    .prologue
    .line 73
    const-string v0, "feed"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ZHObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFeedAd()Z
    .locals 2

    .prologue
    .line 129
    const-string v0, "feed_advert"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ZHObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInbox()Z
    .locals 2

    .prologue
    .line 121
    const-string v0, "inbox"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ZHObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMessage()Z
    .locals 2

    .prologue
    .line 113
    const-string v0, "message"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ZHObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPeople()Z
    .locals 2

    .prologue
    .line 105
    const-string v0, "people"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ZHObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isQuestion()Z
    .locals 2

    .prologue
    .line 77
    const-string v0, "question"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ZHObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRoundTable()Z
    .locals 2

    .prologue
    .line 117
    const-string v0, "roundtable"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ZHObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTopic()Z
    .locals 2

    .prologue
    .line 89
    const-string v0, "topic"

    iget-object v1, p0, Lcom/zhihu/android/api/model/ZHObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
