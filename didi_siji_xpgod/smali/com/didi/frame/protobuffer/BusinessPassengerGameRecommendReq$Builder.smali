.class public final Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BusinessPassengerGameRecommendReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;",
        ">;"
    }
.end annotation


# instance fields
.field public describe:Ljava/lang/String;

.field public down_url_ad:Ljava/lang/String;

.field public down_url_ios:Ljava/lang/String;

.field public game_id:Ljava/lang/String;

.field public h5_url:Ljava/lang/String;

.field public icon_url:Ljava/lang/String;

.field public interface_name:Ljava/lang/String;

.field public package_name:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 153
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 157
    if-nez p1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->icon_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->icon_url:Ljava/lang/String;

    .line 159
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->title:Ljava/lang/String;

    .line 160
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->describe:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->describe:Ljava/lang/String;

    .line 161
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->type:Ljava/lang/Integer;

    .line 162
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->game_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->game_id:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->package_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->package_name:Ljava/lang/String;

    .line 164
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->interface_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->interface_name:Ljava/lang/String;

    .line 165
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->h5_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->h5_url:Ljava/lang/String;

    .line 166
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->down_url_ad:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->down_url_ad:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;->down_url_ios:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->down_url_ios:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->checkRequiredFields()V

    .line 253
    new-instance v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;-><init>(Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->build()Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq;

    move-result-object v0

    return-object v0
.end method

.method public describe(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;
    .locals 0
    .parameter "describe"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->describe:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public down_url_ad(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;
    .locals 0
    .parameter "down_url_ad"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->down_url_ad:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public down_url_ios(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;
    .locals 0
    .parameter "down_url_ios"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->down_url_ios:Ljava/lang/String;

    .line 247
    return-object p0
.end method

.method public game_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;
    .locals 0
    .parameter "game_id"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->game_id:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public h5_url(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;
    .locals 0
    .parameter "h5_url"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->h5_url:Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method public icon_url(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;
    .locals 0
    .parameter "icon_url"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->icon_url:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public interface_name(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;
    .locals 0
    .parameter "interface_name"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->interface_name:Ljava/lang/String;

    .line 223
    return-object p0
.end method

.method public package_name(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;
    .locals 0
    .parameter "package_name"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->package_name:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->title:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRecommendReq$Builder;->type:Ljava/lang/Integer;

    .line 199
    return-object p0
.end method
