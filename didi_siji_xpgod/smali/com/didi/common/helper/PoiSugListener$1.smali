.class final Lcom/didi/common/helper/PoiSugListener$1;
.super Lcom/didi/common/net/ResponseListener;
.source "PoiSugListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/PoiSugListener;->getSuggestion(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/PoiList;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private keyword:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/didi/common/helper/PoiSugListener$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    .line 31
    iget-object v0, p0, Lcom/didi/common/helper/PoiSugListener$1;->val$key:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/common/helper/PoiSugListener$1;->keyword:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/didi/common/helper/PoiSugListener;->access$000()I

    move-result v0

    iput v0, p0, Lcom/didi/common/helper/PoiSugListener$1;->count:I

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Lcom/didi/common/model/PoiList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/PoiSugListener$1;->onSuccess(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/PoiList;)V
    .locals 2
    .parameter "poiList"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/common/helper/PoiSugListener$1;->keyword:Ljava/lang/String;

    iget v1, p0, Lcom/didi/common/helper/PoiSugListener$1;->count:I

    #calls: Lcom/didi/common/helper/PoiSugListener;->onGetPoiSug(Lcom/didi/common/model/PoiList;Ljava/lang/String;I)V
    invoke-static {p1, v0, v1}, Lcom/didi/common/helper/PoiSugListener;->access$100(Lcom/didi/common/model/PoiList;Ljava/lang/String;I)V

    .line 37
    return-void
.end method
