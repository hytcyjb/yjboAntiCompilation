.class public final Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;
.super Lcom/squareup/wire/Message;
.source "TaxiDriverLetPayReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ITEM_VALUE:Ljava/lang/Float; = null

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""


# instance fields
.field public final item_value:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
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
    .line 164
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->DEFAULT_ITEM_VALUE:Ljava/lang/Float;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 178
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item$Builder;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item$Builder;->item_value:Ljava/lang/Float;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item$Builder;Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;-><init>(Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0
    .parameter "name"
    .parameter "item_value"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->name:Ljava/lang/String;

    .line 174
    iput-object p2, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->item_value:Ljava/lang/Float;

    .line 175
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    if-ne p1, p0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v1

    .line 185
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 186
    check-cast v0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;

    .line 187
    .local v0, o:Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->name:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->item_value:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->item_value:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 193
    iget v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->hashCode:I

    .line 194
    .local v0, result:I
    if-nez v0, :cond_1

    .line 195
    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 196
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->item_value:Ljava/lang/Float;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->item_value:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 197
    iput v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->hashCode:I

    .line 199
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 195
    goto :goto_0
.end method
