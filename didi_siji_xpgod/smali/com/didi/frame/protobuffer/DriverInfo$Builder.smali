.class public final Lcom/didi/frame/protobuffer/DriverInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DriverInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/DriverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/DriverInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public car_type:Ljava/lang/String;

.field public cnt_order:Ljava/lang/Integer;

.field public cnt_positive:Ljava/lang/Integer;

.field public driver_card:Ljava/lang/String;

.field public driver_company:Ljava/lang/String;

.field public driver_headPic:Ljava/lang/String;

.field public driver_id:Ljava/lang/Long;

.field public driver_name:Ljava/lang/String;

.field public driver_phone:Ljava/lang/String;

.field public is_protect:Ljava/lang/Integer;

.field public is_timeout:Ljava/lang/Integer;

.field public level:Ljava/lang/Integer;

.field public level_new:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 158
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/DriverInfo;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 162
    if-nez p1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverInfo;->driver_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_name:Ljava/lang/String;

    .line 164
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverInfo;->driver_card:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_card:Ljava/lang/String;

    .line 165
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverInfo;->driver_company:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_company:Ljava/lang/String;

    .line 166
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverInfo;->driver_headPic:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_headPic:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverInfo;->driver_phone:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_phone:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverInfo;->driver_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_id:Ljava/lang/Long;

    .line 169
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverInfo;->car_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->car_type:Ljava/lang/String;

    .line 170
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverInfo;->cnt_order:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->cnt_order:Ljava/lang/Integer;

    .line 171
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverInfo;->cnt_positive:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->cnt_positive:Ljava/lang/Integer;

    .line 172
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverInfo;->level:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->level:Ljava/lang/Integer;

    .line 173
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverInfo;->level_new:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->level_new:Ljava/lang/Float;

    .line 174
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverInfo;->is_protect:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->is_protect:Ljava/lang/Integer;

    .line 175
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverInfo;->is_timeout:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->is_timeout:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/DriverInfo;
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->checkRequiredFields()V

    .line 252
    new-instance v0, Lcom/didi/frame/protobuffer/DriverInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/DriverInfo;-><init>(Lcom/didi/frame/protobuffer/DriverInfo$Builder;Lcom/didi/frame/protobuffer/DriverInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->build()Lcom/didi/frame/protobuffer/DriverInfo;

    move-result-object v0

    return-object v0
.end method

.method public car_type(Ljava/lang/String;)Lcom/didi/frame/protobuffer/DriverInfo$Builder;
    .locals 0
    .parameter "car_type"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->car_type:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public cnt_order(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DriverInfo$Builder;
    .locals 0
    .parameter "cnt_order"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->cnt_order:Ljava/lang/Integer;

    .line 215
    return-object p0
.end method

.method public cnt_positive(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DriverInfo$Builder;
    .locals 0
    .parameter "cnt_positive"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->cnt_positive:Ljava/lang/Integer;

    .line 220
    return-object p0
.end method

.method public driver_card(Ljava/lang/String;)Lcom/didi/frame/protobuffer/DriverInfo$Builder;
    .locals 0
    .parameter "driver_card"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_card:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public driver_company(Ljava/lang/String;)Lcom/didi/frame/protobuffer/DriverInfo$Builder;
    .locals 0
    .parameter "driver_company"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_company:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public driver_headPic(Ljava/lang/String;)Lcom/didi/frame/protobuffer/DriverInfo$Builder;
    .locals 0
    .parameter "driver_headPic"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_headPic:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public driver_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/DriverInfo$Builder;
    .locals 0
    .parameter "driver_id"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_id:Ljava/lang/Long;

    .line 205
    return-object p0
.end method

.method public driver_name(Ljava/lang/String;)Lcom/didi/frame/protobuffer/DriverInfo$Builder;
    .locals 0
    .parameter "driver_name"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_name:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public driver_phone(Ljava/lang/String;)Lcom/didi/frame/protobuffer/DriverInfo$Builder;
    .locals 0
    .parameter "driver_phone"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_phone:Ljava/lang/String;

    .line 200
    return-object p0
.end method

.method public is_protect(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DriverInfo$Builder;
    .locals 0
    .parameter "is_protect"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->is_protect:Ljava/lang/Integer;

    .line 238
    return-object p0
.end method

.method public is_timeout(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DriverInfo$Builder;
    .locals 0
    .parameter "is_timeout"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->is_timeout:Ljava/lang/Integer;

    .line 246
    return-object p0
.end method

.method public level(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DriverInfo$Builder;
    .locals 0
    .parameter "level"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->level:Ljava/lang/Integer;

    .line 225
    return-object p0
.end method

.method public level_new(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DriverInfo$Builder;
    .locals 0
    .parameter "level_new"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->level_new:Ljava/lang/Float;

    .line 230
    return-object p0
.end method
