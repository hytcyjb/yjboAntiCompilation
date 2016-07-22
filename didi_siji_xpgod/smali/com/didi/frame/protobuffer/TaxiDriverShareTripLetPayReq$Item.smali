.class public final Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;
.super Lcom/squareup/wire/Message;
.source "TaxiDriverShareTripLetPayReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ITEM_VALUE:Ljava/lang/Integer; = null

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""


# instance fields
.field public final item_value:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->DEFAULT_ITEM_VALUE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 237
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item$Builder;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item$Builder;->item_value:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item$Builder;Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;-><init>(Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .parameter "name"
    .parameter "item_value"

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->name:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->item_value:Ljava/lang/Integer;

    .line 234
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    if-ne p1, p0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 245
    check-cast v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;

    .line 246
    .local v0, o:Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->name:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->item_value:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->item_value:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 252
    iget v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->hashCode:I

    .line 253
    .local v0, result:I
    if-nez v0, :cond_1

    .line 254
    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 255
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->item_value:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->item_value:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 256
    iput v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->hashCode:I

    .line 258
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 254
    goto :goto_0
.end method
