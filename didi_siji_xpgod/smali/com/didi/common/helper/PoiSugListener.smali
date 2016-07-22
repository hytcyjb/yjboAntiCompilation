.class public Lcom/didi/common/helper/PoiSugListener;
.super Ljava/lang/Object;
.source "PoiSugListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/helper/PoiSugListener$PoiListener;,
        Lcom/didi/common/helper/PoiSugListener$PoiResult;,
        Lcom/didi/common/helper/PoiSugListener$SearchSuggestionListener;
    }
.end annotation


# static fields
.field private static mCount:I

.field private static mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/helper/PoiSugListener$SearchSuggestionListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mPoiListener:Lcom/didi/common/helper/PoiSugListener$PoiListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/didi/common/helper/PoiSugListener;->mCount:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/didi/common/helper/PoiSugListener;->mListeners:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Lcom/didi/common/helper/PoiSugListener$2;

    invoke-direct {v0}, Lcom/didi/common/helper/PoiSugListener$2;-><init>()V

    sput-object v0, Lcom/didi/common/helper/PoiSugListener;->mPoiListener:Lcom/didi/common/helper/PoiSugListener$PoiListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/didi/common/helper/PoiSugListener;->mCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/didi/common/model/PoiList;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 17
    invoke-static {p0, p1, p2}, Lcom/didi/common/helper/PoiSugListener;->onGetPoiSug(Lcom/didi/common/model/PoiList;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/didi/common/helper/PoiSugListener;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static addSuggestionListener(Lcom/didi/common/helper/PoiSugListener$SearchSuggestionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 55
    if-eqz p0, :cond_0

    sget-object v0, Lcom/didi/common/helper/PoiSugListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/didi/common/helper/PoiSugListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    return-void
.end method

.method public static getSuggestion(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "city"
    .parameter "key"
    .parameter "restrictToCity"

    .prologue
    .line 29
    sget v0, Lcom/didi/common/helper/PoiSugListener;->mCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/didi/common/helper/PoiSugListener;->mCount:I

    .line 30
    const/4 v0, 0x0

    new-instance v1, Lcom/didi/common/helper/PoiSugListener$1;

    invoke-direct {v1, p1}, Lcom/didi/common/helper/PoiSugListener$1;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0, v0, v1}, Lcom/didi/common/net/CommonRequest;->getPoiSuggestion(Ljava/lang/String;Ljava/lang/String;ZLcom/didi/common/net/ResponseListener;)V

    .line 39
    return-void
.end method

.method private static onGetPoiSug(Lcom/didi/common/model/PoiList;Ljava/lang/String;I)V
    .locals 1
    .parameter "poiList"
    .parameter "keyword"
    .parameter "count"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/didi/common/model/PoiList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/didi/common/model/PoiList;->setKeyword(Ljava/lang/String;)V

    .line 44
    :cond_0
    sget v0, Lcom/didi/common/helper/PoiSugListener;->mCount:I

    if-ne p2, v0, :cond_1

    .line 45
    sget-object v0, Lcom/didi/common/helper/PoiSugListener;->mPoiListener:Lcom/didi/common/helper/PoiSugListener$PoiListener;

    invoke-interface {v0, p0}, Lcom/didi/common/helper/PoiSugListener$PoiListener;->onSuggest(Lcom/didi/common/model/PoiList;)V

    .line 46
    :cond_1
    return-void
.end method

.method public static removeSuggetsionListener(Lcom/didi/common/helper/PoiSugListener$SearchSuggestionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 62
    sget-object v0, Lcom/didi/common/helper/PoiSugListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/didi/common/helper/PoiSugListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    return-void
.end method
