.class public final Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OrderTotalCountReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/OrderTotalCountReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/OrderTotalCountReq;",
        ">;"
    }
.end annotation


# instance fields
.field public balance_pay_tip:Ljava/lang/String;

.field public bridge_fee:Ljava/lang/String;

.field public cancle_reparation_fee:Ljava/lang/String;

.field public carfee_title:Ljava/lang/String;

.field public carfee_total:Ljava/lang/String;

.field public coupon_fee:Ljava/lang/String;

.field public coupon_id:Ljava/lang/String;

.field public coupon_money:Ljava/lang/String;

.field public coupon_tip:Ljava/lang/String;

.field public driver_late_time:Ljava/lang/String;

.field public driving_distance:Ljava/lang/String;

.field public driving_fee:Ljava/lang/String;

.field public dynamic_price_msg:Ljava/lang/String;

.field public dynamic_price_title:Ljava/lang/String;

.field public empty_distance:Ljava/lang/String;

.field public empty_fee:Ljava/lang/String;

.field public ext_msg:Ljava/lang/String;

.field public extra_fee:Ljava/lang/String;

.field public favour_title:Ljava/lang/String;

.field public favour_total:Ljava/lang/String;

.field public fixed_price_tip:Ljava/lang/String;

.field public highway_fee:Ljava/lang/String;

.field public night_distance:Ljava/lang/String;

.field public night_fee:Ljava/lang/String;

.field public oid:Ljava/lang/String;

.field public opera_act:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/OperationActivityReq;",
            ">;"
        }
    .end annotation
.end field

.field public order_pay_msg:Ljava/lang/String;

.field public order_pay_status:Ljava/lang/Integer;

.field public order_pay_subject:Ljava/lang/String;

.field public order_pay_title:Ljava/lang/String;

.field public other_fee:Ljava/lang/String;

.field public park_fee:Ljava/lang/String;

.field public pay_button_title:Ljava/lang/String;

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

.field public reparation_fee:Ljava/lang/String;

.field public slow_speed_fee:Ljava/lang/String;

.field public slow_speed_time:Ljava/lang/String;

.field public sp_msg:Ljava/lang/String;

.field public sp_title:Ljava/lang/String;

.field public start_fee:Ljava/lang/String;

.field public voucher_cnt:Ljava/lang/Integer;

.field public voucher_desc:Ljava/lang/String;

.field public voucher_pay:Ljava/lang/String;

.field public voucher_url:Ljava/lang/String;

.field public wx_pay_tip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 584
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/OrderTotalCountReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 588
    if-nez p1, :cond_0

    .line 638
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->pay_title:Ljava/lang/String;

    .line 590
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->start_fee:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->start_fee:Ljava/lang/String;

    .line 591
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driving_fee:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->driving_fee:Ljava/lang/String;

    .line 592
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driving_distance:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->driving_distance:Ljava/lang/String;

    .line 593
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->slow_speed_fee:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->slow_speed_fee:Ljava/lang/String;

    .line 594
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->slow_speed_time:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->slow_speed_time:Ljava/lang/String;

    .line 595
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->highway_fee:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->highway_fee:Ljava/lang/String;

    .line 596
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->park_fee:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->park_fee:Ljava/lang/String;

    .line 597
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->extra_fee:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->extra_fee:Ljava/lang/String;

    .line 598
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->other_fee:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->other_fee:Ljava/lang/String;

    .line 599
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->reparation_fee:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->reparation_fee:Ljava/lang/String;

    .line 600
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->cancle_reparation_fee:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->cancle_reparation_fee:Ljava/lang/String;

    .line 601
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->wx_pay_tip:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->wx_pay_tip:Ljava/lang/String;

    .line 602
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->balance_pay_tip:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->balance_pay_tip:Ljava/lang/String;

    .line 603
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->fixed_price_tip:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->fixed_price_tip:Ljava/lang/String;

    .line 604
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_tip:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->coupon_tip:Ljava/lang/String;

    .line 605
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_button_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->pay_button_title:Ljava/lang/String;

    .line 606
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driver_late_time:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->driver_late_time:Ljava/lang/String;

    .line 607
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->oid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->oid:Ljava/lang/String;

    .line 608
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->empty_distance:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->empty_distance:Ljava/lang/String;

    .line 609
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->empty_fee:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->empty_fee:Ljava/lang/String;

    .line 610
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->night_distance:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->night_distance:Ljava/lang/String;

    .line 611
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->night_fee:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->night_fee:Ljava/lang/String;

    .line 612
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->bridge_fee:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->bridge_fee:Ljava/lang/String;

    .line 613
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_fee:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->coupon_fee:Ljava/lang/String;

    .line 614
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_cnt:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->voucher_cnt:Ljava/lang/Integer;

    .line 615
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->voucher_url:Ljava/lang/String;

    .line 616
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->voucher_desc:Ljava/lang/String;

    .line 617
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->penny_flag:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->penny_flag:Ljava/lang/Integer;

    .line 618
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_pay:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->voucher_pay:Ljava/lang/String;

    .line 619
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->opera_act:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/OrderTotalCountReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->opera_act:Ljava/util/List;

    .line 620
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->pay_type:Ljava/lang/Integer;

    .line 621
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->coupon_id:Ljava/lang/String;

    .line 622
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_money:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->coupon_money:Ljava/lang/String;

    .line 623
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->ext_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->ext_msg:Ljava/lang/String;

    .line 624
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->order_pay_status:Ljava/lang/Integer;

    .line 625
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->order_pay_title:Ljava/lang/String;

    .line 626
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_subject:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->order_pay_subject:Ljava/lang/String;

    .line 627
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->order_pay_msg:Ljava/lang/String;

    .line 628
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    .line 629
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->sp_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->sp_title:Ljava/lang/String;

    .line 630
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->sp_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->sp_msg:Ljava/lang/String;

    .line 631
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->dynamic_price_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->dynamic_price_title:Ljava/lang/String;

    .line 632
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->dynamic_price_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->dynamic_price_msg:Ljava/lang/String;

    .line 633
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->payments:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/OrderTotalCountReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->payments:Ljava/util/List;

    .line 634
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->favour_total:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->favour_total:Ljava/lang/String;

    .line 635
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->carfee_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->carfee_title:Ljava/lang/String;

    .line 636
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->carfee_total:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->carfee_total:Ljava/lang/String;

    .line 637
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->favour_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->favour_title:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public balance_pay_tip(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "balance_pay_tip"

    .prologue
    .line 745
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->balance_pay_tip:Ljava/lang/String;

    .line 746
    return-object p0
.end method

.method public bridge_fee(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "bridge_fee"

    .prologue
    .line 825
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->bridge_fee:Ljava/lang/String;

    .line 826
    return-object p0
.end method

.method public build()Lcom/didi/frame/protobuffer/OrderTotalCountReq;
    .locals 2

    .prologue
    .line 1031
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->checkRequiredFields()V

    .line 1032
    new-instance v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;-><init>(Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;Lcom/didi/frame/protobuffer/OrderTotalCountReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->build()Lcom/didi/frame/protobuffer/OrderTotalCountReq;

    move-result-object v0

    return-object v0
.end method

.method public cancle_reparation_fee(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "cancle_reparation_fee"

    .prologue
    .line 729
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->cancle_reparation_fee:Ljava/lang/String;

    .line 730
    return-object p0
.end method

.method public carfee_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "carfee_title"

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->carfee_title:Ljava/lang/String;

    .line 1010
    return-object p0
.end method

.method public carfee_total(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "carfee_total"

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->carfee_total:Ljava/lang/String;

    .line 1018
    return-object p0
.end method

.method public coupon_fee(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "coupon_fee"

    .prologue
    .line 833
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->coupon_fee:Ljava/lang/String;

    .line 834
    return-object p0
.end method

.method public coupon_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "coupon_id"

    .prologue
    .line 897
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->coupon_id:Ljava/lang/String;

    .line 898
    return-object p0
.end method

.method public coupon_money(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "coupon_money"

    .prologue
    .line 905
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->coupon_money:Ljava/lang/String;

    .line 906
    return-object p0
.end method

.method public coupon_tip(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "coupon_tip"

    .prologue
    .line 761
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->coupon_tip:Ljava/lang/String;

    .line 762
    return-object p0
.end method

.method public driver_late_time(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "driver_late_time"

    .prologue
    .line 777
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->driver_late_time:Ljava/lang/String;

    .line 778
    return-object p0
.end method

.method public driving_distance(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "driving_distance"

    .prologue
    .line 665
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->driving_distance:Ljava/lang/String;

    .line 666
    return-object p0
.end method

.method public driving_fee(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "driving_fee"

    .prologue
    .line 657
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->driving_fee:Ljava/lang/String;

    .line 658
    return-object p0
.end method

.method public dynamic_price_msg(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "dynamic_price_msg"

    .prologue
    .line 985
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->dynamic_price_msg:Ljava/lang/String;

    .line 986
    return-object p0
.end method

.method public dynamic_price_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "dynamic_price_title"

    .prologue
    .line 977
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->dynamic_price_title:Ljava/lang/String;

    .line 978
    return-object p0
.end method

.method public empty_distance(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "empty_distance"

    .prologue
    .line 793
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->empty_distance:Ljava/lang/String;

    .line 794
    return-object p0
.end method

.method public empty_fee(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "empty_fee"

    .prologue
    .line 801
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->empty_fee:Ljava/lang/String;

    .line 802
    return-object p0
.end method

.method public ext_msg(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "ext_msg"

    .prologue
    .line 913
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->ext_msg:Ljava/lang/String;

    .line 914
    return-object p0
.end method

.method public extra_fee(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "extra_fee"

    .prologue
    .line 705
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->extra_fee:Ljava/lang/String;

    .line 706
    return-object p0
.end method

.method public favour_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "favour_title"

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->favour_title:Ljava/lang/String;

    .line 1026
    return-object p0
.end method

.method public favour_total(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "favour_total"

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->favour_total:Ljava/lang/String;

    .line 1002
    return-object p0
.end method

.method public fixed_price_tip(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "fixed_price_tip"

    .prologue
    .line 753
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->fixed_price_tip:Ljava/lang/String;

    .line 754
    return-object p0
.end method

.method public highway_fee(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "highway_fee"

    .prologue
    .line 689
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->highway_fee:Ljava/lang/String;

    .line 690
    return-object p0
.end method

.method public night_distance(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "night_distance"

    .prologue
    .line 809
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->night_distance:Ljava/lang/String;

    .line 810
    return-object p0
.end method

.method public night_fee(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "night_fee"

    .prologue
    .line 817
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->night_fee:Ljava/lang/String;

    .line 818
    return-object p0
.end method

.method public oid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "oid"

    .prologue
    .line 785
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->oid:Ljava/lang/String;

    .line 786
    return-object p0
.end method

.method public opera_act(Ljava/util/List;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/OperationActivityReq;",
            ">;)",
            "Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;"
        }
    .end annotation

    .prologue
    .line 881
    .local p1, opera_act:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/OperationActivityReq;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->opera_act:Ljava/util/List;

    .line 882
    return-object p0
.end method

.method public order_pay_msg(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "order_pay_msg"

    .prologue
    .line 945
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->order_pay_msg:Ljava/lang/String;

    .line 946
    return-object p0
.end method

.method public order_pay_status(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "order_pay_status"

    .prologue
    .line 921
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->order_pay_status:Ljava/lang/Integer;

    .line 922
    return-object p0
.end method

.method public order_pay_subject(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "order_pay_subject"

    .prologue
    .line 937
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->order_pay_subject:Ljava/lang/String;

    .line 938
    return-object p0
.end method

.method public order_pay_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "order_pay_title"

    .prologue
    .line 929
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->order_pay_title:Ljava/lang/String;

    .line 930
    return-object p0
.end method

.method public other_fee(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "other_fee"

    .prologue
    .line 713
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->other_fee:Ljava/lang/String;

    .line 714
    return-object p0
.end method

.method public park_fee(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "park_fee"

    .prologue
    .line 697
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->park_fee:Ljava/lang/String;

    .line 698
    return-object p0
.end method

.method public pay_button_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "pay_button_title"

    .prologue
    .line 769
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->pay_button_title:Ljava/lang/String;

    .line 770
    return-object p0
.end method

.method public pay_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "pay_title"

    .prologue
    .line 641
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->pay_title:Ljava/lang/String;

    .line 642
    return-object p0
.end method

.method public pay_type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "pay_type"

    .prologue
    .line 889
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->pay_type:Ljava/lang/Integer;

    .line 890
    return-object p0
.end method

.method public payments(Ljava/util/List;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Payments;",
            ">;)",
            "Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;"
        }
    .end annotation

    .prologue
    .line 993
    .local p1, payments:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Payments;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->payments:Ljava/util/List;

    .line 994
    return-object p0
.end method

.method public penny_flag(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "penny_flag"

    .prologue
    .line 865
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->penny_flag:Ljava/lang/Integer;

    .line 866
    return-object p0
.end method

.method public refund_info(Lcom/didi/frame/protobuffer/RefundInfoReq;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "refund_info"

    .prologue
    .line 953
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    .line 954
    return-object p0
.end method

.method public reparation_fee(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "reparation_fee"

    .prologue
    .line 721
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->reparation_fee:Ljava/lang/String;

    .line 722
    return-object p0
.end method

.method public slow_speed_fee(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "slow_speed_fee"

    .prologue
    .line 673
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->slow_speed_fee:Ljava/lang/String;

    .line 674
    return-object p0
.end method

.method public slow_speed_time(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "slow_speed_time"

    .prologue
    .line 681
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->slow_speed_time:Ljava/lang/String;

    .line 682
    return-object p0
.end method

.method public sp_msg(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "sp_msg"

    .prologue
    .line 969
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->sp_msg:Ljava/lang/String;

    .line 970
    return-object p0
.end method

.method public sp_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "sp_title"

    .prologue
    .line 961
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->sp_title:Ljava/lang/String;

    .line 962
    return-object p0
.end method

.method public start_fee(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "start_fee"

    .prologue
    .line 649
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->start_fee:Ljava/lang/String;

    .line 650
    return-object p0
.end method

.method public voucher_cnt(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "voucher_cnt"

    .prologue
    .line 841
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->voucher_cnt:Ljava/lang/Integer;

    .line 842
    return-object p0
.end method

.method public voucher_desc(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "voucher_desc"

    .prologue
    .line 857
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->voucher_desc:Ljava/lang/String;

    .line 858
    return-object p0
.end method

.method public voucher_pay(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "voucher_pay"

    .prologue
    .line 873
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->voucher_pay:Ljava/lang/String;

    .line 874
    return-object p0
.end method

.method public voucher_url(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "voucher_url"

    .prologue
    .line 849
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->voucher_url:Ljava/lang/String;

    .line 850
    return-object p0
.end method

.method public wx_pay_tip(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    .locals 0
    .parameter "wx_pay_tip"

    .prologue
    .line 737
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->wx_pay_tip:Ljava/lang/String;

    .line 738
    return-object p0
.end method
