.class public final Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OrderTotalFeeReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/OrderTotalFeeReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/OrderTotalFeeReq;",
        ">;"
    }
.end annotation


# instance fields
.field public basicFeeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public carfee_title:Ljava/lang/String;

.field public carfee_total:Ljava/lang/String;

.field public ext_msg:Ljava/lang/String;

.field public favourFeeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public favour_title:Ljava/lang/String;

.field public favour_total:Ljava/lang/String;

.field public oid:Ljava/lang/String;

.field public order_pay_msg:Ljava/lang/String;

.field public order_pay_status:Ljava/lang/Integer;

.field public order_pay_subject:Ljava/lang/String;

.field public order_pay_title:Ljava/lang/String;

.field public pay_button_title:Ljava/lang/String;

.field public pay_button_title_label:Ljava/lang/String;

.field public pay_title:Ljava/lang/String;

.field public pay_type:Ljava/lang/Integer;

.field public payments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Payments;",
            ">;"
        }
    .end annotation
.end field

.field public penny_flag:Ljava/lang/Integer;

.field public refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 257
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/OrderTotalFeeReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 261
    if-nez p1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->oid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->oid:Ljava/lang/String;

    .line 263
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->pay_title:Ljava/lang/String;

    .line 264
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_button_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->pay_button_title:Ljava/lang/String;

    .line 265
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->basicFeeInfoList:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->basicFeeInfoList:Ljava/util/List;

    .line 266
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favourFeeInfoList:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->favourFeeInfoList:Ljava/util/List;

    .line 267
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->pay_type:Ljava/lang/Integer;

    .line 268
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->penny_flag:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->penny_flag:Ljava/lang/Integer;

    .line 269
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->ext_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->ext_msg:Ljava/lang/String;

    .line 270
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->order_pay_status:Ljava/lang/Integer;

    .line 271
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->order_pay_title:Ljava/lang/String;

    .line 272
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_subject:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->order_pay_subject:Ljava/lang/String;

    .line 273
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->order_pay_msg:Ljava/lang/String;

    .line 274
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    .line 275
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_button_title_label:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->pay_button_title_label:Ljava/lang/String;

    .line 276
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->payments:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->access$200(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->payments:Ljava/util/List;

    .line 277
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favour_total:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->favour_total:Ljava/lang/String;

    .line 278
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->carfee_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->carfee_title:Ljava/lang/String;

    .line 279
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->carfee_total:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->carfee_total:Ljava/lang/String;

    .line 280
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favour_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->favour_title:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public basicFeeInfoList(Ljava/util/List;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeInfoItem;",
            ">;)",
            "Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, basicFeeInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/FeeInfoItem;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->basicFeeInfoList:Ljava/util/List;

    .line 312
    return-object p0
.end method

.method public build()Lcom/didi/frame/protobuffer/OrderTotalFeeReq;
    .locals 2

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->checkRequiredFields()V

    .line 438
    new-instance v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;-><init>(Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;Lcom/didi/frame/protobuffer/OrderTotalFeeReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->build()Lcom/didi/frame/protobuffer/OrderTotalFeeReq;

    move-result-object v0

    return-object v0
.end method

.method public carfee_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "carfee_title"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->carfee_title:Ljava/lang/String;

    .line 416
    return-object p0
.end method

.method public carfee_total(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "carfee_total"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->carfee_total:Ljava/lang/String;

    .line 424
    return-object p0
.end method

.method public ext_msg(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "ext_msg"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->ext_msg:Ljava/lang/String;

    .line 344
    return-object p0
.end method

.method public favourFeeInfoList(Ljava/util/List;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeInfoItem;",
            ">;)",
            "Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, favourFeeInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/FeeInfoItem;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->favourFeeInfoList:Ljava/util/List;

    .line 320
    return-object p0
.end method

.method public favour_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "favour_title"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->favour_title:Ljava/lang/String;

    .line 432
    return-object p0
.end method

.method public favour_total(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "favour_total"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->favour_total:Ljava/lang/String;

    .line 408
    return-object p0
.end method

.method public oid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "oid"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->oid:Ljava/lang/String;

    .line 288
    return-object p0
.end method

.method public order_pay_msg(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "order_pay_msg"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->order_pay_msg:Ljava/lang/String;

    .line 376
    return-object p0
.end method

.method public order_pay_status(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "order_pay_status"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->order_pay_status:Ljava/lang/Integer;

    .line 352
    return-object p0
.end method

.method public order_pay_subject(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "order_pay_subject"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->order_pay_subject:Ljava/lang/String;

    .line 368
    return-object p0
.end method

.method public order_pay_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "order_pay_title"

    .prologue
    .line 359
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->order_pay_title:Ljava/lang/String;

    .line 360
    return-object p0
.end method

.method public pay_button_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "pay_button_title"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->pay_button_title:Ljava/lang/String;

    .line 304
    return-object p0
.end method

.method public pay_button_title_label(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "pay_button_title_label"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->pay_button_title_label:Ljava/lang/String;

    .line 392
    return-object p0
.end method

.method public pay_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "pay_title"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->pay_title:Ljava/lang/String;

    .line 296
    return-object p0
.end method

.method public pay_type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "pay_type"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->pay_type:Ljava/lang/Integer;

    .line 328
    return-object p0
.end method

.method public payments(Ljava/util/List;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Payments;",
            ">;)",
            "Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, payments:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Payments;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->payments:Ljava/util/List;

    .line 400
    return-object p0
.end method

.method public penny_flag(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "penny_flag"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->penny_flag:Ljava/lang/Integer;

    .line 336
    return-object p0
.end method

.method public refund_info(Lcom/didi/frame/protobuffer/RefundInfoReq;)Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    .locals 0
    .parameter "refund_info"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    .line 384
    return-object p0
.end method
