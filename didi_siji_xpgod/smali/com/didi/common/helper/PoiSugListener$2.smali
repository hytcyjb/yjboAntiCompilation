.class final Lcom/didi/common/helper/PoiSugListener$2;
.super Ljava/lang/Object;
.source "PoiSugListener.java"

# interfaces
.implements Lcom/didi/common/helper/PoiSugListener$PoiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/helper/PoiSugListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearch(Lcom/didi/common/model/PoiList;)V
    .locals 0
    .parameter "searchList"

    .prologue
    .line 92
    return-void
.end method

.method public onSuggest(Lcom/didi/common/model/PoiList;)V
    .locals 5
    .parameter "sugList"

    .prologue
    .line 72
    invoke-static {p1}, Lcom/didi/common/model/BaseObject;->isAvailable(Lcom/didi/common/model/BaseObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    invoke-static {}, Lcom/didi/common/helper/PoiSugListener;->access$200()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/helper/PoiSugListener$SearchSuggestionListener;

    .line 74
    .local v1, listener:Lcom/didi/common/helper/PoiSugListener$SearchSuggestionListener;
    const/4 v3, 0x0

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Lcom/didi/common/helper/PoiSugListener$SearchSuggestionListener;->onGetSuggestion(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/didi/common/helper/PoiSugListener$SearchSuggestionListener;
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/PoiSugListener;->access$200()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    .line 81
    .local v2, poiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    invoke-static {}, Lcom/didi/common/helper/PoiSugListener;->access$200()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/helper/PoiSugListener$SearchSuggestionListener;

    .line 82
    .restart local v1       #listener:Lcom/didi/common/helper/PoiSugListener$SearchSuggestionListener;
    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getSearchId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/didi/common/helper/PoiSugListener$SearchSuggestionListener;->onGetSuggestion(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/didi/common/helper/PoiSugListener$SearchSuggestionListener;
    .end local v2           #poiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    :cond_1
    return-void
.end method
