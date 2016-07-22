.class public final Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;
.super Lcom/squareup/wire/Message;
.source "TypeTaxiPassengerChargeReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$1;,
        Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_DESC:Ljava/lang/String; = ""

.field public static final DEFAULT_OID:Ljava/lang/String; = ""

.field public static final DEFAULT_PRICE:Ljava/lang/Float;


# instance fields
.field public final desc:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
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

.field public final price:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->DEFAULT_PRICE:Ljava/lang/Float;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 43
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;->oid:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;->price:Ljava/lang/Float;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;->desc:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;-><init>(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;-><init>(Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;)V
    .locals 0
    .parameter "oid"
    .parameter "price"
    .parameter "desc"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->oid:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->price:Ljava/lang/Float;

    .line 39
    iput-object p3, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->desc:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    if-ne p1, p0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 51
    check-cast v0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;

    .line 52
    .local v0, o:Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->oid:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->oid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->price:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->price:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->desc:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->desc:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 59
    iget v0, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->hashCode:I

    .line 60
    .local v0, result:I
    if-nez v0, :cond_1

    .line 61
    iget-object v2, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->oid:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->oid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 62
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->price:Ljava/lang/Float;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->price:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 63
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->desc:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->desc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 64
    iput v0, p0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->hashCode:I

    .line 66
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 61
    goto :goto_0

    :cond_3
    move v2, v1

    .line 62
    goto :goto_1
.end method
