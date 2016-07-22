.class public final Lcom/didi/frame/protobuffer/FeeInfoItem;
.super Lcom/squareup/wire/Message;
.source "FeeInfoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/FeeInfoItem$1;,
        Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_FEE_API:Ljava/lang/String; = ""

.field public static final DEFAULT_FEE_COLOR:Ljava/lang/String; = ""

.field public static final DEFAULT_FEE_CUST:Ljava/lang/Integer; = null

.field public static final DEFAULT_FEE_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_FEE_KEY:Ljava/lang/String; = ""

.field public static final DEFAULT_FEE_LABEL:Ljava/lang/String; = ""

.field public static final DEFAULT_FEE_TYPE:Ljava/lang/Integer; = null

.field public static final DEFAULT_FEE_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_FEE_VALUE:Ljava/lang/String; = ""

.field public static final DEFAULT_IS_BASE_FEE:Ljava/lang/Integer;

.field public static final DEFAULT_IS_EDIT:Ljava/lang/Integer;


# instance fields
.field public final fee_api:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final fee_color:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final fee_cust:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final fee_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final fee_key:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final fee_label:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final fee_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final fee_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final fee_value:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final is_base_fee:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final is_edit:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/FeeInfoItem;->DEFAULT_FEE_TYPE:Ljava/lang/Integer;

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/FeeInfoItem;->DEFAULT_FEE_CUST:Ljava/lang/Integer;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/FeeInfoItem;->DEFAULT_IS_EDIT:Ljava/lang/Integer;

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/FeeInfoItem;->DEFAULT_IS_BASE_FEE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;)V
    .locals 12
    .parameter "builder"

    .prologue
    .line 110
    iget-object v1, p1, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_label:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_value:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_type:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_url:Ljava/lang/String;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_cust:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_id:Ljava/lang/String;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_color:Ljava/lang/String;

    iget-object v8, p1, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_key:Ljava/lang/String;

    iget-object v9, p1, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->is_edit:Ljava/lang/Integer;

    iget-object v10, p1, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->is_base_fee:Ljava/lang/Integer;

    iget-object v11, p1, Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;->fee_api:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/didi/frame/protobuffer/FeeInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/FeeInfoItem;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;Lcom/didi/frame/protobuffer/FeeInfoItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/FeeInfoItem;-><init>(Lcom/didi/frame/protobuffer/FeeInfoItem$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .parameter "fee_label"
    .parameter "fee_value"
    .parameter "fee_type"
    .parameter "fee_url"
    .parameter "fee_cust"
    .parameter "fee_id"
    .parameter "fee_color"
    .parameter "fee_key"
    .parameter "is_edit"
    .parameter "is_base_fee"
    .parameter "fee_api"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_label:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_value:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_type:Ljava/lang/Integer;

    .line 99
    iput-object p4, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_url:Ljava/lang/String;

    .line 100
    iput-object p5, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_cust:Ljava/lang/Integer;

    .line 101
    iput-object p6, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_id:Ljava/lang/String;

    .line 102
    iput-object p7, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_color:Ljava/lang/String;

    .line 103
    iput-object p8, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_key:Ljava/lang/String;

    .line 104
    iput-object p9, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->is_edit:Ljava/lang/Integer;

    .line 105
    iput-object p10, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->is_base_fee:Ljava/lang/Integer;

    .line 106
    iput-object p11, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_api:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    if-ne p1, p0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 117
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/FeeInfoItem;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 118
    check-cast v0, Lcom/didi/frame/protobuffer/FeeInfoItem;

    .line 119
    .local v0, o:Lcom/didi/frame/protobuffer/FeeInfoItem;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_label:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_label:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FeeInfoItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_value:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_value:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FeeInfoItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FeeInfoItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_url:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_url:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FeeInfoItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_cust:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_cust:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FeeInfoItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_id:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FeeInfoItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_color:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_color:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FeeInfoItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_key:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_key:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FeeInfoItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->is_edit:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FeeInfoItem;->is_edit:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FeeInfoItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->is_base_fee:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FeeInfoItem;->is_base_fee:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FeeInfoItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_api:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_api:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FeeInfoItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 134
    iget v0, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->hashCode:I

    .line 135
    .local v0, result:I
    if-nez v0, :cond_1

    .line 136
    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_label:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 137
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_value:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 138
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_type:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 139
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_url:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 140
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_cust:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_cust:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 141
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_id:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 142
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_color:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_color:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 143
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_key:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 144
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->is_edit:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->is_edit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 145
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->is_base_fee:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->is_base_fee:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v3, v2

    .line 146
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_api:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_api:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 147
    iput v0, p0, Lcom/didi/frame/protobuffer/FeeInfoItem;->hashCode:I

    .line 149
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 136
    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 137
    goto/16 :goto_1

    :cond_4
    move v2, v1

    .line 138
    goto :goto_2

    :cond_5
    move v2, v1

    .line 139
    goto :goto_3

    :cond_6
    move v2, v1

    .line 140
    goto :goto_4

    :cond_7
    move v2, v1

    .line 141
    goto :goto_5

    :cond_8
    move v2, v1

    .line 142
    goto :goto_6

    :cond_9
    move v2, v1

    .line 143
    goto :goto_7

    :cond_a
    move v2, v1

    .line 144
    goto :goto_8

    :cond_b
    move v2, v1

    .line 145
    goto :goto_9
.end method
