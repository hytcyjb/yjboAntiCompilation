.class public final Lcom/didi/frame/protobuffer/TimelyRemindReq;
.super Lcom/squareup/wire/Message;
.source "TimelyRemindReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/TimelyRemindReq$1;,
        Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CANCEL_BTN_TEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_CONFIRM_BTN_TEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_CONTENT:Ljava/lang/String; = ""

.field public static final DEFAULT_MSG_ID:Ljava/lang/Integer; = null

.field public static final DEFAULT_MSG_TYPE:Ljava/lang/Integer; = null

.field public static final DEFAULT_MSG_VALUE:Ljava/lang/String; = ""

.field public static final DEFAULT_ORDER_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""


# instance fields
.field public final cancel_btn_text:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final confirm_btn_text:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final content:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final msg_id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final msg_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final msg_value:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final order_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->DEFAULT_MSG_ID:Ljava/lang/Integer;

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->DEFAULT_MSG_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;)V
    .locals 9
    .parameter "builder"

    .prologue
    .line 84
    iget-object v1, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->msg_id:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->msg_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->msg_value:Ljava/lang/String;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->order_id:Ljava/lang/String;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->title:Ljava/lang/String;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->content:Ljava/lang/String;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->cancel_btn_text:Ljava/lang/String;

    iget-object v8, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;->confirm_btn_text:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/didi/frame/protobuffer/TimelyRemindReq;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/TimelyRemindReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;Lcom/didi/frame/protobuffer/TimelyRemindReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/TimelyRemindReq;-><init>(Lcom/didi/frame/protobuffer/TimelyRemindReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "msg_id"
    .parameter "msg_type"
    .parameter "msg_value"
    .parameter "order_id"
    .parameter "title"
    .parameter "content"
    .parameter "cancel_btn_text"
    .parameter "confirm_btn_text"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_id:Ljava/lang/Integer;

    .line 74
    iput-object p2, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_type:Ljava/lang/Integer;

    .line 75
    iput-object p3, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_value:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->order_id:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->title:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->content:Ljava/lang/String;

    .line 79
    iput-object p7, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->cancel_btn_text:Ljava/lang/String;

    .line 80
    iput-object p8, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->confirm_btn_text:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-ne p1, p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/TimelyRemindReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 92
    check-cast v0, Lcom/didi/frame/protobuffer/TimelyRemindReq;

    .line 93
    .local v0, o:Lcom/didi/frame/protobuffer/TimelyRemindReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_id:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_id:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TimelyRemindReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TimelyRemindReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_value:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_value:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TimelyRemindReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->order_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->order_id:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TimelyRemindReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TimelyRemindReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->content:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->content:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TimelyRemindReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->cancel_btn_text:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->cancel_btn_text:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TimelyRemindReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->confirm_btn_text:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->confirm_btn_text:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TimelyRemindReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 105
    iget v0, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->hashCode:I

    .line 106
    .local v0, result:I
    if-nez v0, :cond_1

    .line 107
    iget-object v2, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_id:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 108
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_type:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 109
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_value:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 110
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->order_id:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->order_id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 111
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->title:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 112
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->content:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 113
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->cancel_btn_text:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->cancel_btn_text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 114
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->confirm_btn_text:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->confirm_btn_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 115
    iput v0, p0, Lcom/didi/frame/protobuffer/TimelyRemindReq;->hashCode:I

    .line 117
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 107
    goto :goto_0

    :cond_3
    move v2, v1

    .line 108
    goto :goto_1

    :cond_4
    move v2, v1

    .line 109
    goto :goto_2

    :cond_5
    move v2, v1

    .line 110
    goto :goto_3

    :cond_6
    move v2, v1

    .line 111
    goto :goto_4

    :cond_7
    move v2, v1

    .line 112
    goto :goto_5

    :cond_8
    move v2, v1

    .line 113
    goto :goto_6
.end method
