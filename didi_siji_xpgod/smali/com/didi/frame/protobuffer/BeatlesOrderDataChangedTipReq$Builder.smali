.class public final Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BeatlesOrderDataChangedTipReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;",
        ">;"
    }
.end annotation


# instance fields
.field public change_text:Ljava/lang/String;

.field public list_text:Ljava/lang/String;

.field public order_id:Ljava/lang/String;

.field public order_list_type:Ljava/lang/Integer;

.field public show:Ljava/lang/Integer;

.field public status:Ljava/lang/Integer;

.field public sub_status:Ljava/lang/Integer;

.field public user_role:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 135
    if-nez p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->order_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->order_id:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->user_role:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->user_role:Ljava/lang/Integer;

    .line 138
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->order_list_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->order_list_type:Ljava/lang/Integer;

    .line 139
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->status:Ljava/lang/Integer;

    .line 140
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->sub_status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->sub_status:Ljava/lang/Integer;

    .line 141
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->change_text:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->change_text:Ljava/lang/String;

    .line 142
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->show:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->show:Ljava/lang/Integer;

    .line 143
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->list_text:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->list_text:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->checkRequiredFields()V

    .line 213
    new-instance v0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;-><init>(Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->build()Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;

    move-result-object v0

    return-object v0
.end method

.method public change_text(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;
    .locals 0
    .parameter "change_text"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->change_text:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public list_text(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;
    .locals 0
    .parameter "list_text"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->list_text:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public order_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;
    .locals 0
    .parameter "order_id"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->order_id:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public order_list_type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;
    .locals 0
    .parameter "order_list_type"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->order_list_type:Ljava/lang/Integer;

    .line 167
    return-object p0
.end method

.method public show(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;
    .locals 0
    .parameter "show"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->show:Ljava/lang/Integer;

    .line 199
    return-object p0
.end method

.method public status(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;
    .locals 0
    .parameter "status"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->status:Ljava/lang/Integer;

    .line 175
    return-object p0
.end method

.method public sub_status(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;
    .locals 0
    .parameter "sub_status"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->sub_status:Ljava/lang/Integer;

    .line 183
    return-object p0
.end method

.method public user_role(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;
    .locals 0
    .parameter "user_role"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq$Builder;->user_role:Ljava/lang/Integer;

    .line 159
    return-object p0
.end method
