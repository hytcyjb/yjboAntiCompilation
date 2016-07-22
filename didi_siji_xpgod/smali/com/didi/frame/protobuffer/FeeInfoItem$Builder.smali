.class public final Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FeeInfoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/FeeInfoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/FeeInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field public fee_api:Ljava/lang/String;

.field public fee_color:Ljava/lang/String;

.field public fee_cust:Ljava/lang/Integer;

.field public fee_id:Ljava/lang/String;

.field public fee_key:Ljava/lang/String;

.field public fee_label:Ljava/lang/String;

.field public fee_type:Ljava/lang/Integer;

.field public fee_url:Ljava/lang/String;

.field public fee_value:Ljava/lang/String;

.field public is_base_fee:Ljava/lang/Integer;

.field public is_edit:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/FeeInfoItem;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 171
    if-nez p1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_label:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_label:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_value:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_value:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_type:Ljava/lang/Integer;

    .line 175
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_url:Ljava/lang/String;

    .line 176
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_cust:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_cust:Ljava/lang/Integer;

    .line 177
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_id:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_color:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_color:Ljava/lang/String;

    .line 179
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_key:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_key:Ljava/lang/String;

    .line 180
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FeeInfoItem;->is_edit:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->is_edit:Ljava/lang/Integer;

    .line 181
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FeeInfoItem;->is_base_fee:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->is_base_fee:Ljava/lang/Integer;

    .line 182
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_api:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_api:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/FeeInfoItem;
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->checkRequiredFields()V

    .line 276
    new-instance v0, Lcom/didi/frame/protobuffer/FeeInfoItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/FeeInfoItem;-><init>(Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;Lcom/didi/frame/protobuffer/FeeInfoItem$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->build()Lcom/didi/frame/protobuffer/FeeInfoItem;

    move-result-object v0

    return-object v0
.end method

.method public fee_api(Ljava/lang/String;)Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;
    .locals 0
    .parameter "fee_api"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_api:Ljava/lang/String;

    .line 270
    return-object p0
.end method

.method public fee_color(Ljava/lang/String;)Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;
    .locals 0
    .parameter "fee_color"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_color:Ljava/lang/String;

    .line 238
    return-object p0
.end method

.method public fee_cust(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;
    .locals 0
    .parameter "fee_cust"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_cust:Ljava/lang/Integer;

    .line 222
    return-object p0
.end method

.method public fee_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;
    .locals 0
    .parameter "fee_id"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_id:Ljava/lang/String;

    .line 230
    return-object p0
.end method

.method public fee_key(Ljava/lang/String;)Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;
    .locals 0
    .parameter "fee_key"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_key:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public fee_label(Ljava/lang/String;)Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;
    .locals 0
    .parameter "fee_label"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_label:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public fee_type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;
    .locals 0
    .parameter "fee_type"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_type:Ljava/lang/Integer;

    .line 206
    return-object p0
.end method

.method public fee_url(Ljava/lang/String;)Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;
    .locals 0
    .parameter "fee_url"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_url:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public fee_value(Ljava/lang/String;)Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;
    .locals 0
    .parameter "fee_value"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_value:Ljava/lang/String;

    .line 198
    return-object p0
.end method

.method public is_base_fee(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;
    .locals 0
    .parameter "is_base_fee"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->is_base_fee:Ljava/lang/Integer;

    .line 262
    return-object p0
.end method

.method public is_edit(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;
    .locals 0
    .parameter "is_edit"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->is_edit:Ljava/lang/Integer;

    .line 254
    return-object p0
.end method
