.class public final Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CollectSvrOrderFilterReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;",
        ">;"
    }
.end annotation


# instance fields
.field public filter_type:Ljava/lang/Integer;

.field public order_id:Ljava/lang/String;

.field public send_info:Lokio/ByteString;

.field public sub_order_id:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 97
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->order_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;->order_id:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->filter_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;->filter_type:Ljava/lang/Integer;

    .line 100
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->send_info:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;->send_info:Lokio/ByteString;

    .line 101
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->sub_order_id:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;->sub_order_id:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;-><init>(Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;->build()Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;

    move-result-object v0

    return-object v0
.end method

.method public filter_type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;
    .locals 0
    .parameter "filter_type"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;->filter_type:Ljava/lang/Integer;

    .line 117
    return-object p0
.end method

.method public order_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;
    .locals 0
    .parameter "order_id"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;->order_id:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public send_info(Lokio/ByteString;)Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;
    .locals 0
    .parameter "send_info"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;->send_info:Lokio/ByteString;

    .line 125
    return-object p0
.end method

.method public sub_order_id(Ljava/util/List;)Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, sub_order_id:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;->sub_order_id:Ljava/util/List;

    .line 135
    return-object p0
.end method
