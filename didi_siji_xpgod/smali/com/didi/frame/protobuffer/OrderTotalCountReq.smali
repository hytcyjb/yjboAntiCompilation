.class public final Lcom/didi/frame/protobuffer/OrderTotalCountReq;
.super Lcom/squareup/wire/Message;
.source "OrderTotalCountReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/OrderTotalCountReq$1;,
        Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_BALANCE_PAY_TIP:Ljava/lang/String; = ""

.field public static final DEFAULT_BRIDGE_FEE:Ljava/lang/String; = ""

.field public static final DEFAULT_CANCLE_REPARATION_FEE:Ljava/lang/String; = ""

.field public static final DEFAULT_CARFEE_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_CARFEE_TOTAL:Ljava/lang/String; = ""

.field public static final DEFAULT_COUPON_FEE:Ljava/lang/String; = ""

.field public static final DEFAULT_COUPON_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_COUPON_MONEY:Ljava/lang/String; = ""

.field public static final DEFAULT_COUPON_TIP:Ljava/lang/String; = ""

.field public static final DEFAULT_DRIVER_LATE_TIME:Ljava/lang/String; = ""

.field public static final DEFAULT_DRIVING_DISTANCE:Ljava/lang/String; = ""

.field public static final DEFAULT_DRIVING_FEE:Ljava/lang/String; = ""

.field public static final DEFAULT_DYNAMIC_PRICE_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_DYNAMIC_PRICE_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_EMPTY_DISTANCE:Ljava/lang/String; = ""

.field public static final DEFAULT_EMPTY_FEE:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTRA_FEE:Ljava/lang/String; = ""

.field public static final DEFAULT_EXT_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_FAVOUR_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_FAVOUR_TOTAL:Ljava/lang/String; = ""

.field public static final DEFAULT_FIXED_PRICE_TIP:Ljava/lang/String; = ""

.field public static final DEFAULT_HIGHWAY_FEE:Ljava/lang/String; = ""

.field public static final DEFAULT_NIGHT_DISTANCE:Ljava/lang/String; = ""

.field public static final DEFAULT_NIGHT_FEE:Ljava/lang/String; = ""

.field public static final DEFAULT_OID:Ljava/lang/String; = ""

.field public static final DEFAULT_OPERA_ACT:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/OperationActivityReq;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ORDER_PAY_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_ORDER_PAY_STATUS:Ljava/lang/Integer; = null

.field public static final DEFAULT_ORDER_PAY_SUBJECT:Ljava/lang/String; = ""

.field public static final DEFAULT_ORDER_PAY_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_OTHER_FEE:Ljava/lang/String; = ""

.field public static final DEFAULT_PARK_FEE:Ljava/lang/String; = ""

.field public static final DEFAULT_PAYMENTS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Payments;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PAY_BUTTON_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_PAY_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_PAY_TYPE:Ljava/lang/Integer; = null

.field public static final DEFAULT_PENNY_FLAG:Ljava/lang/Integer; = null

.field public static final DEFAULT_REPARATION_FEE:Ljava/lang/String; = ""

.field public static final DEFAULT_SLOW_SPEED_FEE:Ljava/lang/String; = ""

.field public static final DEFAULT_SLOW_SPEED_TIME:Ljava/lang/String; = ""

.field public static final DEFAULT_SP_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_SP_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_START_FEE:Ljava/lang/String; = ""

.field public static final DEFAULT_VOUCHER_CNT:Ljava/lang/Integer; = null

.field public static final DEFAULT_VOUCHER_DESC:Ljava/lang/String; = ""

.field public static final DEFAULT_VOUCHER_PAY:Ljava/lang/String; = ""

.field public static final DEFAULT_VOUCHER_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_WX_PAY_TIP:Ljava/lang/String; = ""


# instance fields
.field public final balance_pay_tip:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final bridge_fee:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x18
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final cancle_reparation_fee:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final carfee_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2f
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final carfee_total:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x30
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final coupon_fee:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x19
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final coupon_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x21
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final coupon_money:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x22
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final coupon_tip:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final driver_late_time:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final driving_distance:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final driving_fee:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final dynamic_price_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2c
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final dynamic_price_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2b
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final empty_distance:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final empty_fee:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x15
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final ext_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x23
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final extra_fee:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final favour_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x31
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final favour_total:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2e
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final fixed_price_tip:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final highway_fee:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final night_distance:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x16
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final night_fee:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x17
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final oid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final opera_act:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/OperationActivityReq;
        tag = 0x1f
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/OperationActivityReq;",
            ">;"
        }
    .end annotation
.end field

.field public final order_pay_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x27
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final order_pay_status:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x24
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final order_pay_subject:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x26
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final order_pay_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x25
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final other_fee:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final park_fee:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pay_button_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pay_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pay_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x20
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final payments:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/Payments;
        tag = 0x2d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Payments;",
            ">;"
        }
    .end annotation
.end field

.field public final penny_flag:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1d
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x28
    .end annotation
.end field

.field public final reparation_fee:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final slow_speed_fee:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final slow_speed_time:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sp_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2a
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sp_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x29
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final start_fee:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final voucher_cnt:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1a
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final voucher_desc:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1c
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final voucher_pay:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1e
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final voucher_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1b
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final wx_pay_tip:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->DEFAULT_VOUCHER_CNT:Ljava/lang/Integer;

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->DEFAULT_PENNY_FLAG:Ljava/lang/Integer;

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->DEFAULT_OPERA_ACT:Ljava/util/List;

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->DEFAULT_PAY_TYPE:Ljava/lang/Integer;

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->DEFAULT_ORDER_PAY_STATUS:Ljava/lang/Integer;

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->DEFAULT_PAYMENTS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;)V
    .locals 51
    .parameter "builder"

    .prologue
    .line 413
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->pay_title:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->start_fee:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->driving_fee:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->driving_distance:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->slow_speed_fee:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->slow_speed_time:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->highway_fee:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->park_fee:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->extra_fee:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->other_fee:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->reparation_fee:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->cancle_reparation_fee:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->wx_pay_tip:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->balance_pay_tip:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->fixed_price_tip:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->coupon_tip:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->pay_button_title:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->driver_late_time:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->oid:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->empty_distance:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->empty_fee:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->night_distance:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->night_fee:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->bridge_fee:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->coupon_fee:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->voucher_cnt:Ljava/lang/Integer;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->voucher_url:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->voucher_desc:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->penny_flag:Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->voucher_pay:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->opera_act:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->pay_type:Ljava/lang/Integer;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->coupon_id:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->coupon_money:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->ext_msg:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->order_pay_status:Ljava/lang/Integer;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->order_pay_title:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->order_pay_subject:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->order_pay_msg:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    move-object/from16 v41, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->sp_title:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->sp_msg:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->dynamic_price_title:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->dynamic_price_msg:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->payments:Ljava/util/List;

    move-object/from16 v46, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->favour_total:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->carfee_title:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->carfee_total:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;->favour_title:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v50}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/frame/protobuffer/RefundInfoReq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p0 .. p1}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 415
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;Lcom/didi/frame/protobuffer/OrderTotalCountReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;-><init>(Lcom/didi/frame/protobuffer/OrderTotalCountReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/frame/protobuffer/RefundInfoReq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pay_title"
    .parameter "start_fee"
    .parameter "driving_fee"
    .parameter "driving_distance"
    .parameter "slow_speed_fee"
    .parameter "slow_speed_time"
    .parameter "highway_fee"
    .parameter "park_fee"
    .parameter "extra_fee"
    .parameter "other_fee"
    .parameter "reparation_fee"
    .parameter "cancle_reparation_fee"
    .parameter "wx_pay_tip"
    .parameter "balance_pay_tip"
    .parameter "fixed_price_tip"
    .parameter "coupon_tip"
    .parameter "pay_button_title"
    .parameter "driver_late_time"
    .parameter "oid"
    .parameter "empty_distance"
    .parameter "empty_fee"
    .parameter "night_distance"
    .parameter "night_fee"
    .parameter "bridge_fee"
    .parameter "coupon_fee"
    .parameter "voucher_cnt"
    .parameter "voucher_url"
    .parameter "voucher_desc"
    .parameter "penny_flag"
    .parameter "voucher_pay"
    .parameter
    .parameter "pay_type"
    .parameter "coupon_id"
    .parameter "coupon_money"
    .parameter "ext_msg"
    .parameter "order_pay_status"
    .parameter "order_pay_title"
    .parameter "order_pay_subject"
    .parameter "order_pay_msg"
    .parameter "refund_info"
    .parameter "sp_title"
    .parameter "sp_msg"
    .parameter "dynamic_price_title"
    .parameter "dynamic_price_msg"
    .parameter
    .parameter "favour_total"
    .parameter "carfee_title"
    .parameter "carfee_total"
    .parameter "favour_title"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/OperationActivityReq;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/frame/protobuffer/RefundInfoReq;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Payments;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 360
    .local p31, opera_act:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/OperationActivityReq;>;"
    .local p45, payments:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Payments;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 361
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_title:Ljava/lang/String;

    .line 362
    iput-object p2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->start_fee:Ljava/lang/String;

    .line 363
    iput-object p3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driving_fee:Ljava/lang/String;

    .line 364
    iput-object p4, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driving_distance:Ljava/lang/String;

    .line 365
    iput-object p5, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->slow_speed_fee:Ljava/lang/String;

    .line 366
    iput-object p6, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->slow_speed_time:Ljava/lang/String;

    .line 367
    iput-object p7, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->highway_fee:Ljava/lang/String;

    .line 368
    iput-object p8, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->park_fee:Ljava/lang/String;

    .line 369
    iput-object p9, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->extra_fee:Ljava/lang/String;

    .line 370
    iput-object p10, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->other_fee:Ljava/lang/String;

    .line 371
    iput-object p11, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->reparation_fee:Ljava/lang/String;

    .line 372
    iput-object p12, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->cancle_reparation_fee:Ljava/lang/String;

    .line 373
    iput-object p13, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->wx_pay_tip:Ljava/lang/String;

    .line 374
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->balance_pay_tip:Ljava/lang/String;

    .line 375
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->fixed_price_tip:Ljava/lang/String;

    .line 376
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_tip:Ljava/lang/String;

    .line 377
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_button_title:Ljava/lang/String;

    .line 378
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driver_late_time:Ljava/lang/String;

    .line 379
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->oid:Ljava/lang/String;

    .line 380
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->empty_distance:Ljava/lang/String;

    .line 381
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->empty_fee:Ljava/lang/String;

    .line 382
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->night_distance:Ljava/lang/String;

    .line 383
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->night_fee:Ljava/lang/String;

    .line 384
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->bridge_fee:Ljava/lang/String;

    .line 385
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_fee:Ljava/lang/String;

    .line 386
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_cnt:Ljava/lang/Integer;

    .line 387
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_url:Ljava/lang/String;

    .line 388
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_desc:Ljava/lang/String;

    .line 389
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->penny_flag:Ljava/lang/Integer;

    .line 390
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_pay:Ljava/lang/String;

    .line 391
    invoke-static/range {p31 .. p31}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->opera_act:Ljava/util/List;

    .line 392
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_type:Ljava/lang/Integer;

    .line 393
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_id:Ljava/lang/String;

    .line 394
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_money:Ljava/lang/String;

    .line 395
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->ext_msg:Ljava/lang/String;

    .line 396
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_status:Ljava/lang/Integer;

    .line 397
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_title:Ljava/lang/String;

    .line 398
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_subject:Ljava/lang/String;

    .line 399
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_msg:Ljava/lang/String;

    .line 400
    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    .line 401
    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->sp_title:Ljava/lang/String;

    .line 402
    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->sp_msg:Ljava/lang/String;

    .line 403
    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->dynamic_price_title:Ljava/lang/String;

    .line 404
    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->dynamic_price_msg:Ljava/lang/String;

    .line 405
    invoke-static/range {p45 .. p45}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->payments:Ljava/util/List;

    .line 406
    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->favour_total:Ljava/lang/String;

    .line 407
    move-object/from16 v0, p47

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->carfee_title:Ljava/lang/String;

    .line 408
    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->carfee_total:Ljava/lang/String;

    .line 409
    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->favour_title:Ljava/lang/String;

    .line 410
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 419
    if-ne p1, p0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v1

    .line 420
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/OrderTotalCountReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 421
    check-cast v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;

    .line 422
    .local v0, o:Lcom/didi/frame/protobuffer/OrderTotalCountReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->start_fee:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->start_fee:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driving_fee:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driving_fee:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driving_distance:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driving_distance:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->slow_speed_fee:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->slow_speed_fee:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->slow_speed_time:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->slow_speed_time:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->highway_fee:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->highway_fee:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->park_fee:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->park_fee:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->extra_fee:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->extra_fee:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->other_fee:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->other_fee:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->reparation_fee:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->reparation_fee:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->cancle_reparation_fee:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->cancle_reparation_fee:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->wx_pay_tip:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->wx_pay_tip:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->balance_pay_tip:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->balance_pay_tip:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->fixed_price_tip:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->fixed_price_tip:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_tip:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_tip:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_button_title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_button_title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driver_late_time:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driver_late_time:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->oid:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->oid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->empty_distance:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->empty_distance:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->empty_fee:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->empty_fee:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->night_distance:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->night_distance:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->night_fee:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->night_fee:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->bridge_fee:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->bridge_fee:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_fee:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_fee:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_cnt:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_cnt:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_url:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_url:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_desc:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_desc:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->penny_flag:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->penny_flag:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_pay:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_pay:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->opera_act:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->opera_act:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_id:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_money:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_money:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->ext_msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->ext_msg:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_status:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_status:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_subject:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_subject:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_msg:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->sp_title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->sp_title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->sp_msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->sp_msg:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->dynamic_price_title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->dynamic_price_title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->dynamic_price_msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->dynamic_price_msg:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->payments:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->payments:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->favour_total:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->favour_total:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->carfee_title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->carfee_title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->carfee_total:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->carfee_total:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->favour_title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->favour_title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 475
    iget v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->hashCode:I

    .line 476
    .local v0, result:I
    if-nez v0, :cond_2

    .line 477
    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_title:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 478
    :goto_0
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->start_fee:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->start_fee:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v4, v2

    .line 479
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driving_fee:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driving_fee:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v4, v2

    .line 480
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driving_distance:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driving_distance:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v4, v2

    .line 481
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->slow_speed_fee:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->slow_speed_fee:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v4, v2

    .line 482
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->slow_speed_time:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->slow_speed_time:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v4, v2

    .line 483
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->highway_fee:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->highway_fee:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v4, v2

    .line 484
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->park_fee:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->park_fee:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v4, v2

    .line 485
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->extra_fee:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->extra_fee:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v4, v2

    .line 486
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->other_fee:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->other_fee:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v4, v2

    .line 487
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->reparation_fee:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->reparation_fee:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a
    add-int v0, v4, v2

    .line 488
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->cancle_reparation_fee:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->cancle_reparation_fee:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int v0, v4, v2

    .line 489
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->wx_pay_tip:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->wx_pay_tip:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int v0, v4, v2

    .line 490
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->balance_pay_tip:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->balance_pay_tip:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int v0, v4, v2

    .line 491
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->fixed_price_tip:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->fixed_price_tip:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_e
    add-int v0, v4, v2

    .line 492
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_tip:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_tip:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    add-int v0, v4, v2

    .line 493
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_button_title:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_button_title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_10
    add-int v0, v4, v2

    .line 494
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driver_late_time:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driver_late_time:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_11
    add-int v0, v4, v2

    .line 495
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->oid:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->oid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_12
    add-int v0, v4, v2

    .line 496
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->empty_distance:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->empty_distance:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_13
    add-int v0, v4, v2

    .line 497
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->empty_fee:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->empty_fee:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_14
    add-int v0, v4, v2

    .line 498
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->night_distance:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->night_distance:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_15
    add-int v0, v4, v2

    .line 499
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->night_fee:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->night_fee:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_16
    add-int v0, v4, v2

    .line 500
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->bridge_fee:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->bridge_fee:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v4, v2

    .line 501
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_fee:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_fee:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_18
    add-int v0, v4, v2

    .line 502
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_cnt:Ljava/lang/Integer;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_cnt:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_19
    add-int v0, v4, v2

    .line 503
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_url:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1a
    add-int v0, v4, v2

    .line 504
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_desc:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_desc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1b
    add-int v0, v4, v2

    .line 505
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->penny_flag:Ljava/lang/Integer;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->penny_flag:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1c
    add-int v0, v4, v2

    .line 506
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_pay:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_pay:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1d
    add-int v0, v4, v2

    .line 507
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->opera_act:Ljava/util/List;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->opera_act:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_1e
    add-int v0, v4, v2

    .line 508
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_type:Ljava/lang/Integer;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1f
    add-int v0, v4, v2

    .line 509
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_id:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_20
    add-int v0, v4, v2

    .line 510
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_money:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_money:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_21
    add-int v0, v4, v2

    .line 511
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->ext_msg:Ljava/lang/String;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->ext_msg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_22
    add-int v0, v4, v2

    .line 512
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_status:Ljava/lang/Integer;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_23
    add-int v0, v4, v2

    .line 513
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_title:Ljava/lang/String;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int v0, v4, v2

    .line 514
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_subject:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_subject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_25
    add-int v0, v4, v2

    .line 515
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_msg:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->order_pay_msg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_26
    add-int v0, v4, v2

    .line 516
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/RefundInfoReq;->hashCode()I

    move-result v2

    :goto_27
    add-int v0, v4, v2

    .line 517
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->sp_title:Ljava/lang/String;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->sp_title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_28
    add-int v0, v4, v2

    .line 518
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->sp_msg:Ljava/lang/String;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->sp_msg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_29
    add-int v0, v4, v2

    .line 519
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->dynamic_price_title:Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->dynamic_price_title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2a
    add-int v0, v4, v2

    .line 520
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->dynamic_price_msg:Ljava/lang/String;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->dynamic_price_msg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2b
    add-int v0, v4, v2

    .line 521
    mul-int/lit8 v2, v0, 0x25

    iget-object v4, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->payments:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->payments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_0
    add-int v0, v2, v3

    .line 522
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->favour_total:Ljava/lang/String;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->favour_total:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2c
    add-int v0, v3, v2

    .line 523
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->carfee_title:Ljava/lang/String;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->carfee_title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2d
    add-int v0, v3, v2

    .line 524
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->carfee_total:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->carfee_total:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2e
    add-int v0, v3, v2

    .line 525
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->favour_title:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->favour_title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int v0, v2, v1

    .line 526
    iput v0, p0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->hashCode:I

    .line 528
    :cond_2
    return v0

    :cond_3
    move v0, v1

    .line 477
    goto/16 :goto_0

    :cond_4
    move v2, v1

    .line 478
    goto/16 :goto_1

    :cond_5
    move v2, v1

    .line 479
    goto/16 :goto_2

    :cond_6
    move v2, v1

    .line 480
    goto/16 :goto_3

    :cond_7
    move v2, v1

    .line 481
    goto/16 :goto_4

    :cond_8
    move v2, v1

    .line 482
    goto/16 :goto_5

    :cond_9
    move v2, v1

    .line 483
    goto/16 :goto_6

    :cond_a
    move v2, v1

    .line 484
    goto/16 :goto_7

    :cond_b
    move v2, v1

    .line 485
    goto/16 :goto_8

    :cond_c
    move v2, v1

    .line 486
    goto/16 :goto_9

    :cond_d
    move v2, v1

    .line 487
    goto/16 :goto_a

    :cond_e
    move v2, v1

    .line 488
    goto/16 :goto_b

    :cond_f
    move v2, v1

    .line 489
    goto/16 :goto_c

    :cond_10
    move v2, v1

    .line 490
    goto/16 :goto_d

    :cond_11
    move v2, v1

    .line 491
    goto/16 :goto_e

    :cond_12
    move v2, v1

    .line 492
    goto/16 :goto_f

    :cond_13
    move v2, v1

    .line 493
    goto/16 :goto_10

    :cond_14
    move v2, v1

    .line 494
    goto/16 :goto_11

    :cond_15
    move v2, v1

    .line 495
    goto/16 :goto_12

    :cond_16
    move v2, v1

    .line 496
    goto/16 :goto_13

    :cond_17
    move v2, v1

    .line 497
    goto/16 :goto_14

    :cond_18
    move v2, v1

    .line 498
    goto/16 :goto_15

    :cond_19
    move v2, v1

    .line 499
    goto/16 :goto_16

    :cond_1a
    move v2, v1

    .line 500
    goto/16 :goto_17

    :cond_1b
    move v2, v1

    .line 501
    goto/16 :goto_18

    :cond_1c
    move v2, v1

    .line 502
    goto/16 :goto_19

    :cond_1d
    move v2, v1

    .line 503
    goto/16 :goto_1a

    :cond_1e
    move v2, v1

    .line 504
    goto/16 :goto_1b

    :cond_1f
    move v2, v1

    .line 505
    goto/16 :goto_1c

    :cond_20
    move v2, v1

    .line 506
    goto/16 :goto_1d

    :cond_21
    move v2, v3

    .line 507
    goto/16 :goto_1e

    :cond_22
    move v2, v1

    .line 508
    goto/16 :goto_1f

    :cond_23
    move v2, v1

    .line 509
    goto/16 :goto_20

    :cond_24
    move v2, v1

    .line 510
    goto/16 :goto_21

    :cond_25
    move v2, v1

    .line 511
    goto/16 :goto_22

    :cond_26
    move v2, v1

    .line 512
    goto/16 :goto_23

    :cond_27
    move v2, v1

    .line 513
    goto/16 :goto_24

    :cond_28
    move v2, v1

    .line 514
    goto/16 :goto_25

    :cond_29
    move v2, v1

    .line 515
    goto/16 :goto_26

    :cond_2a
    move v2, v1

    .line 516
    goto/16 :goto_27

    :cond_2b
    move v2, v1

    .line 517
    goto/16 :goto_28

    :cond_2c
    move v2, v1

    .line 518
    goto/16 :goto_29

    :cond_2d
    move v2, v1

    .line 519
    goto/16 :goto_2a

    :cond_2e
    move v2, v1

    .line 520
    goto/16 :goto_2b

    :cond_2f
    move v2, v1

    .line 522
    goto/16 :goto_2c

    :cond_30
    move v2, v1

    .line 523
    goto/16 :goto_2d

    :cond_31
    move v2, v1

    .line 524
    goto/16 :goto_2e
.end method
