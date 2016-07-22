.class public final Lcom/didi/frame/protobuffer/OrderTotalFeeReq;
.super Lcom/squareup/wire/Message;
.source "OrderTotalFeeReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/OrderTotalFeeReq$1;,
        Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_BASICFEEINFOLIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CARFEE_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_CARFEE_TOTAL:Ljava/lang/String; = ""

.field public static final DEFAULT_EXT_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_FAVOURFEEINFOLIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FAVOUR_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_FAVOUR_TOTAL:Ljava/lang/String; = ""

.field public static final DEFAULT_OID:Ljava/lang/String; = ""

.field public static final DEFAULT_ORDER_PAY_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_ORDER_PAY_STATUS:Ljava/lang/Integer; = null

.field public static final DEFAULT_ORDER_PAY_SUBJECT:Ljava/lang/String; = ""

.field public static final DEFAULT_ORDER_PAY_TITLE:Ljava/lang/String; = ""

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

.field public static final DEFAULT_PAY_BUTTON_TITLE_LABEL:Ljava/lang/String; = ""

.field public static final DEFAULT_PAY_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_PAY_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_PENNY_FLAG:Ljava/lang/Integer;


# instance fields
.field public final basicFeeInfoList:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/FeeInfoItem;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public final carfee_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final carfee_total:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final ext_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final favourFeeInfoList:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/FeeInfoItem;
        tag = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public final favour_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final favour_total:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final oid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final order_pay_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final order_pay_status:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final order_pay_subject:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final order_pay_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pay_button_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pay_button_title_label:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pay_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pay_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final payments:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/Payments;
        tag = 0xf
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
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->DEFAULT_BASICFEEINFOLIST:Ljava/util/List;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->DEFAULT_FAVOURFEEINFOLIST:Ljava/util/List;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->DEFAULT_PAY_TYPE:Ljava/lang/Integer;

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->DEFAULT_PENNY_FLAG:Ljava/lang/Integer;

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->DEFAULT_ORDER_PAY_STATUS:Ljava/lang/Integer;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->DEFAULT_PAYMENTS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;)V
    .locals 21
    .parameter "builder"

    .prologue
    .line 176
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->oid:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->pay_title:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->pay_button_title:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->basicFeeInfoList:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->favourFeeInfoList:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->pay_type:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->penny_flag:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->ext_msg:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->order_pay_status:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->order_pay_title:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->order_pay_subject:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->order_pay_msg:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->pay_button_title_label:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->payments:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->favour_total:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->carfee_title:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->carfee_total:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;->favour_title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v20}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/frame/protobuffer/RefundInfoReq;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p0 .. p1}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;Lcom/didi/frame/protobuffer/OrderTotalFeeReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;-><init>(Lcom/didi/frame/protobuffer/OrderTotalFeeReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/frame/protobuffer/RefundInfoReq;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "oid"
    .parameter "pay_title"
    .parameter "pay_button_title"
    .parameter
    .parameter
    .parameter "pay_type"
    .parameter "penny_flag"
    .parameter "ext_msg"
    .parameter "order_pay_status"
    .parameter "order_pay_title"
    .parameter "order_pay_subject"
    .parameter "order_pay_msg"
    .parameter "refund_info"
    .parameter "pay_button_title_label"
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
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeInfoItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeInfoItem;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/frame/protobuffer/RefundInfoReq;",
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
    .line 153
    .local p4, basicFeeInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/FeeInfoItem;>;"
    .local p5, favourFeeInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/FeeInfoItem;>;"
    .local p15, payments:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Payments;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->oid:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_title:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_button_title:Ljava/lang/String;

    .line 157
    invoke-static {p4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->basicFeeInfoList:Ljava/util/List;

    .line 158
    invoke-static {p5}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favourFeeInfoList:Ljava/util/List;

    .line 159
    iput-object p6, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_type:Ljava/lang/Integer;

    .line 160
    iput-object p7, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->penny_flag:Ljava/lang/Integer;

    .line 161
    iput-object p8, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->ext_msg:Ljava/lang/String;

    .line 162
    iput-object p9, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_status:Ljava/lang/Integer;

    .line 163
    iput-object p10, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_title:Ljava/lang/String;

    .line 164
    iput-object p11, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_subject:Ljava/lang/String;

    .line 165
    iput-object p12, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_msg:Ljava/lang/String;

    .line 166
    iput-object p13, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    .line 167
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_button_title_label:Ljava/lang/String;

    .line 168
    invoke-static/range {p15 .. p15}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->payments:Ljava/util/List;

    .line 169
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favour_total:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->carfee_title:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->carfee_total:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favour_title:Ljava/lang/String;

    .line 173
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 182
    if-ne p1, p0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 184
    check-cast v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;

    .line 185
    .local v0, o:Lcom/didi/frame/protobuffer/OrderTotalFeeReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->oid:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->oid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_button_title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_button_title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->basicFeeInfoList:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->basicFeeInfoList:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favourFeeInfoList:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favourFeeInfoList:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->penny_flag:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->penny_flag:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->ext_msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->ext_msg:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_status:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_status:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_subject:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_subject:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_msg:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_button_title_label:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_button_title_label:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->payments:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->payments:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favour_total:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favour_total:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->carfee_title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->carfee_title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->carfee_total:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->carfee_total:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favour_title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favour_title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 208
    iget v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->hashCode:I

    .line 209
    .local v0, result:I
    if-nez v0, :cond_2

    .line 210
    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->oid:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->oid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 211
    :goto_0
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_title:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v4, v2

    .line 212
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_button_title:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_button_title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v4, v2

    .line 213
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->basicFeeInfoList:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->basicFeeInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v4, v2

    .line 214
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favourFeeInfoList:Ljava/util/List;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favourFeeInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v4, v2

    .line 215
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_type:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v4, v2

    .line 216
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->penny_flag:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->penny_flag:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v4, v2

    .line 217
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->ext_msg:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->ext_msg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v4, v2

    .line 218
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_status:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v4, v2

    .line 219
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_title:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v4, v2

    .line 220
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_subject:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_subject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a
    add-int v0, v4, v2

    .line 221
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_msg:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->order_pay_msg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int v0, v4, v2

    .line 222
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/RefundInfoReq;->hashCode()I

    move-result v2

    :goto_c
    add-int v0, v4, v2

    .line 223
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_button_title_label:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_button_title_label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int v0, v4, v2

    .line 224
    mul-int/lit8 v2, v0, 0x25

    iget-object v4, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->payments:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->payments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_0
    add-int v0, v2, v3

    .line 225
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favour_total:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favour_total:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_e
    add-int v0, v3, v2

    .line 226
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->carfee_title:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->carfee_title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    add-int v0, v3, v2

    .line 227
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->carfee_total:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->carfee_total:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_10
    add-int v0, v3, v2

    .line 228
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favour_title:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favour_title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int v0, v2, v1

    .line 229
    iput v0, p0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->hashCode:I

    .line 231
    :cond_2
    return v0

    :cond_3
    move v0, v1

    .line 210
    goto/16 :goto_0

    :cond_4
    move v2, v1

    .line 211
    goto/16 :goto_1

    :cond_5
    move v2, v1

    .line 212
    goto/16 :goto_2

    :cond_6
    move v2, v3

    .line 213
    goto/16 :goto_3

    :cond_7
    move v2, v3

    .line 214
    goto/16 :goto_4

    :cond_8
    move v2, v1

    .line 215
    goto/16 :goto_5

    :cond_9
    move v2, v1

    .line 216
    goto/16 :goto_6

    :cond_a
    move v2, v1

    .line 217
    goto/16 :goto_7

    :cond_b
    move v2, v1

    .line 218
    goto/16 :goto_8

    :cond_c
    move v2, v1

    .line 219
    goto/16 :goto_9

    :cond_d
    move v2, v1

    .line 220
    goto/16 :goto_a

    :cond_e
    move v2, v1

    .line 221
    goto/16 :goto_b

    :cond_f
    move v2, v1

    .line 222
    goto :goto_c

    :cond_10
    move v2, v1

    .line 223
    goto :goto_d

    :cond_11
    move v2, v1

    .line 225
    goto :goto_e

    :cond_12
    move v2, v1

    .line 226
    goto :goto_f

    :cond_13
    move v2, v1

    .line 227
    goto :goto_10
.end method
