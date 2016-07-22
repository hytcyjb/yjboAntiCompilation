.class public final Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PassengerOrderStatusReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;",
        ">;"
    }
.end annotation


# instance fields
.field public consult_info:Lcom/didi/frame/protobuffer/ConsultInfo;

.field public consult_status:Ljava/lang/Integer;

.field public count_down_time:Ljava/lang/Integer;

.field public driver_info:Lcom/didi/frame/protobuffer/DriverInfo;

.field public driver_num:Ljava/lang/Integer;

.field public driver_pos:Lcom/didi/frame/protobuffer/DriverPos;

.field public is_arrived:Ljava/lang/Integer;

.field public oid:Ljava/lang/String;

.field public push_passenger_msg:Ljava/lang/String;

.field public status:Ljava/lang/Integer;

.field public strive_order_driver_num:Ljava/lang/Integer;

.field public sub_status:Ljava/lang/Integer;

.field public time_out:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 166
    if-nez p1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->status:Ljava/lang/Integer;

    .line 168
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->oid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->oid:Ljava/lang/String;

    .line 169
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_num:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->driver_num:Ljava/lang/Integer;

    .line 170
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_info:Lcom/didi/frame/protobuffer/DriverInfo;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->driver_info:Lcom/didi/frame/protobuffer/DriverInfo;

    .line 171
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_pos:Lcom/didi/frame/protobuffer/DriverPos;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->driver_pos:Lcom/didi/frame/protobuffer/DriverPos;

    .line 172
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->time_out:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->time_out:Ljava/lang/Integer;

    .line 173
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->is_arrived:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->is_arrived:Ljava/lang/Integer;

    .line 174
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->consult_status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->consult_status:Ljava/lang/Integer;

    .line 175
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->consult_info:Lcom/didi/frame/protobuffer/ConsultInfo;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->consult_info:Lcom/didi/frame/protobuffer/ConsultInfo;

    .line 176
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->sub_status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->sub_status:Ljava/lang/Integer;

    .line 177
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->strive_order_driver_num:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->strive_order_driver_num:Ljava/lang/Integer;

    .line 178
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->count_down_time:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->count_down_time:Ljava/lang/Integer;

    .line 179
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->push_passenger_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->push_passenger_msg:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->checkRequiredFields()V

    .line 265
    new-instance v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;-><init>(Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->build()Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;

    move-result-object v0

    return-object v0
.end method

.method public consult_info(Lcom/didi/frame/protobuffer/ConsultInfo;)Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;
    .locals 0
    .parameter "consult_info"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->consult_info:Lcom/didi/frame/protobuffer/ConsultInfo;

    .line 227
    return-object p0
.end method

.method public consult_status(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;
    .locals 0
    .parameter "consult_status"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->consult_status:Ljava/lang/Integer;

    .line 222
    return-object p0
.end method

.method public count_down_time(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;
    .locals 0
    .parameter "count_down_time"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->count_down_time:Ljava/lang/Integer;

    .line 251
    return-object p0
.end method

.method public driver_info(Lcom/didi/frame/protobuffer/DriverInfo;)Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;
    .locals 0
    .parameter "driver_info"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->driver_info:Lcom/didi/frame/protobuffer/DriverInfo;

    .line 199
    return-object p0
.end method

.method public driver_num(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;
    .locals 0
    .parameter "driver_num"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->driver_num:Ljava/lang/Integer;

    .line 194
    return-object p0
.end method

.method public driver_pos(Lcom/didi/frame/protobuffer/DriverPos;)Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;
    .locals 0
    .parameter "driver_pos"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->driver_pos:Lcom/didi/frame/protobuffer/DriverPos;

    .line 204
    return-object p0
.end method

.method public is_arrived(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;
    .locals 0
    .parameter "is_arrived"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->is_arrived:Ljava/lang/Integer;

    .line 214
    return-object p0
.end method

.method public oid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;
    .locals 0
    .parameter "oid"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->oid:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public push_passenger_msg(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;
    .locals 0
    .parameter "push_passenger_msg"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->push_passenger_msg:Ljava/lang/String;

    .line 259
    return-object p0
.end method

.method public status(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;
    .locals 0
    .parameter "status"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->status:Ljava/lang/Integer;

    .line 184
    return-object p0
.end method

.method public strive_order_driver_num(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;
    .locals 0
    .parameter "strive_order_driver_num"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->strive_order_driver_num:Ljava/lang/Integer;

    .line 243
    return-object p0
.end method

.method public sub_status(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;
    .locals 0
    .parameter "sub_status"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->sub_status:Ljava/lang/Integer;

    .line 235
    return-object p0
.end method

.method public time_out(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;
    .locals 0
    .parameter "time_out"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->time_out:Ljava/lang/Integer;

    .line 209
    return-object p0
.end method
