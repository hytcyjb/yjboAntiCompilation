.class public interface abstract Lcom/didi/common/helper/PoiSugListener$SearchSuggestionListener;
.super Ljava/lang/Object;
.source "PoiSugListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/helper/PoiSugListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchSuggestionListener"
.end annotation


# virtual methods
.method public abstract onGetSuggestion(Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
