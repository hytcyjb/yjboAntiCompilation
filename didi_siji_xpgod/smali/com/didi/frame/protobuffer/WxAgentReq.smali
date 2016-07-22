.class public final Lcom/didi/frame/protobuffer/WxAgentReq;
.super Lcom/squareup/wire/Message;
.source "WxAgentReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/WxAgentReq$1;,
        Lcom/didi/frame/protobuffer/WxAgentReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_BIND_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_BIND_SUBJECT:Ljava/lang/String; = ""

.field public static final DEFAULT_BIND_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_BUTTON_CANCEL:Ljava/lang/String; = ""

.field public static final DEFAULT_BUTTON_CONFIRM:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;


# instance fields
.field public final bind_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final bind_subject:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final bind_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final button_cancel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final button_confirm:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/WxAgentReq;->DEFAULT_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/WxAgentReq$Builder;)V
    .locals 7
    .parameter "builder"

    .prologue
    .line 67
    iget-object v1, p1, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->type:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->bind_title:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->bind_subject:Ljava/lang/String;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->bind_msg:Ljava/lang/String;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->button_confirm:Ljava/lang/String;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/WxAgentReq$Builder;->button_cancel:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/didi/frame/protobuffer/WxAgentReq;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/WxAgentReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/WxAgentReq$Builder;Lcom/didi/frame/protobuffer/WxAgentReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/WxAgentReq;-><init>(Lcom/didi/frame/protobuffer/WxAgentReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "bind_title"
    .parameter "bind_subject"
    .parameter "bind_msg"
    .parameter "button_confirm"
    .parameter "button_cancel"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->type:Ljava/lang/Integer;

    .line 59
    iput-object p2, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_title:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_subject:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_msg:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->button_confirm:Ljava/lang/String;

    .line 63
    iput-object p6, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->button_cancel:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    if-ne p1, p0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/WxAgentReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 75
    check-cast v0, Lcom/didi/frame/protobuffer/WxAgentReq;

    .line 76
    .local v0, o:Lcom/didi/frame/protobuffer/WxAgentReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/WxAgentReq;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/WxAgentReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/WxAgentReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_subject:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_subject:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/WxAgentReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_msg:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/WxAgentReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->button_confirm:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/WxAgentReq;->button_confirm:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/WxAgentReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->button_cancel:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/WxAgentReq;->button_cancel:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/WxAgentReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 86
    iget v0, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->hashCode:I

    .line 87
    .local v0, result:I
    if-nez v0, :cond_1

    .line 88
    iget-object v2, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 89
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_title:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 90
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_subject:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_subject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 91
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_msg:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_msg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 92
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->button_confirm:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->button_confirm:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 93
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->button_cancel:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->button_cancel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 94
    iput v0, p0, Lcom/didi/frame/protobuffer/WxAgentReq;->hashCode:I

    .line 96
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 88
    goto :goto_0

    :cond_3
    move v2, v1

    .line 89
    goto :goto_1

    :cond_4
    move v2, v1

    .line 90
    goto :goto_2

    :cond_5
    move v2, v1

    .line 91
    goto :goto_3

    :cond_6
    move v2, v1

    .line 92
    goto :goto_4
.end method
