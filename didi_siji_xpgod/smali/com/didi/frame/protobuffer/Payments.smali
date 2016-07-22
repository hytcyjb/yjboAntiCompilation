.class public final Lcom/didi/frame/protobuffer/Payments;
.super Lcom/squareup/wire/Message;
.source "Payments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/Payments$1;,
        Lcom/didi/frame/protobuffer/Payments$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ACT_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTRA_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_ICON_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_PAYMENT_MODE:Ljava/lang/Integer; = null

.field public static final DEFAULT_PAYMENT_NAME:Ljava/lang/String; = ""


# instance fields
.field public final act_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final extra_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final icon_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final payment_mode:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final payment_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
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

    sput-object v0, Lcom/didi/frame/protobuffer/Payments;->DEFAULT_PAYMENT_MODE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/Payments$Builder;)V
    .locals 6
    .parameter "builder"

    .prologue
    .line 59
    iget-object v1, p1, Lcom/didi/frame/protobuffer/Payments$Builder;->payment_mode:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/Payments$Builder;->payment_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/Payments$Builder;->icon_url:Ljava/lang/String;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/Payments$Builder;->extra_msg:Ljava/lang/String;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/Payments$Builder;->act_url:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/protobuffer/Payments;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/Payments;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/Payments$Builder;Lcom/didi/frame/protobuffer/Payments$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/Payments;-><init>(Lcom/didi/frame/protobuffer/Payments$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "payment_mode"
    .parameter "payment_name"
    .parameter "icon_url"
    .parameter "extra_msg"
    .parameter "act_url"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Payments;->payment_mode:Ljava/lang/Integer;

    .line 52
    iput-object p2, p0, Lcom/didi/frame/protobuffer/Payments;->payment_name:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/didi/frame/protobuffer/Payments;->icon_url:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/didi/frame/protobuffer/Payments;->extra_msg:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/didi/frame/protobuffer/Payments;->act_url:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    if-ne p1, p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/Payments;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 67
    check-cast v0, Lcom/didi/frame/protobuffer/Payments;

    .line 68
    .local v0, o:Lcom/didi/frame/protobuffer/Payments;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/Payments;->payment_mode:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Payments;->payment_mode:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Payments;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Payments;->payment_name:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Payments;->payment_name:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Payments;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Payments;->icon_url:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Payments;->icon_url:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Payments;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Payments;->extra_msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Payments;->extra_msg:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Payments;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Payments;->act_url:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Payments;->act_url:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Payments;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 77
    iget v0, p0, Lcom/didi/frame/protobuffer/Payments;->hashCode:I

    .line 78
    .local v0, result:I
    if-nez v0, :cond_1

    .line 79
    iget-object v2, p0, Lcom/didi/frame/protobuffer/Payments;->payment_mode:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Payments;->payment_mode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 80
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Payments;->payment_name:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Payments;->payment_name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 81
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Payments;->icon_url:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Payments;->icon_url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 82
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Payments;->extra_msg:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Payments;->extra_msg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 83
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Payments;->act_url:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/Payments;->act_url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 84
    iput v0, p0, Lcom/didi/frame/protobuffer/Payments;->hashCode:I

    .line 86
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 79
    goto :goto_0

    :cond_3
    move v2, v1

    .line 80
    goto :goto_1

    :cond_4
    move v2, v1

    .line 81
    goto :goto_2

    :cond_5
    move v2, v1

    .line 82
    goto :goto_3
.end method
