.class public final Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DispatchSvrReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/DispatchSvrReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/DispatchSvrReq;",
        ">;"
    }
.end annotation


# instance fields
.field public content_type:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public post_data:Lokio/ByteString;

.field public query_params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Param;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/DispatchSvrReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 83
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DispatchSvrReq;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;->path:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DispatchSvrReq;->query_params:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/DispatchSvrReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/DispatchSvrReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;->query_params:Ljava/util/List;

    .line 86
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DispatchSvrReq;->content_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;->content_type:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DispatchSvrReq;->post_data:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;->post_data:Lokio/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/DispatchSvrReq;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;->checkRequiredFields()V

    .line 113
    new-instance v0, Lcom/didi/frame/protobuffer/DispatchSvrReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/DispatchSvrReq;-><init>(Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;Lcom/didi/frame/protobuffer/DispatchSvrReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;->build()Lcom/didi/frame/protobuffer/DispatchSvrReq;

    move-result-object v0

    return-object v0
.end method

.method public content_type(Ljava/lang/String;)Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;
    .locals 0
    .parameter "content_type"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;->content_type:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public path(Ljava/lang/String;)Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;
    .locals 0
    .parameter "path"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;->path:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public post_data(Lokio/ByteString;)Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;
    .locals 0
    .parameter "post_data"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;->post_data:Lokio/ByteString;

    .line 107
    return-object p0
.end method

.method public query_params(Ljava/util/List;)Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Param;",
            ">;)",
            "Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, query_params:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Param;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;->query_params:Ljava/util/List;

    .line 97
    return-object p0
.end method
