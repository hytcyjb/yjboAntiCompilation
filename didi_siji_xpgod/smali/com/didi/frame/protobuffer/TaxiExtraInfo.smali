.class public final Lcom/didi/frame/protobuffer/TaxiExtraInfo;
.super Lcom/squareup/wire/Message;
.source "TaxiExtraInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/TaxiExtraInfo$1;,
        Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ADDEDINCOME:Ljava/lang/Integer; = null

.field public static final DEFAULT_BONUS:Ljava/lang/Integer; = null

.field public static final DEFAULT_DESCRIPTION:Ljava/lang/String; = ""

.field public static final DEFAULT_PRICE:Ljava/lang/Integer; = null

.field public static final DEFAULT_SCORE:Ljava/lang/Integer; = null

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""


# instance fields
.field public final addedIncome:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final bonus:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final price:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final score:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->DEFAULT_BONUS:Ljava/lang/Integer;

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->DEFAULT_SCORE:Ljava/lang/Integer;

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->DEFAULT_PRICE:Ljava/lang/Integer;

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->DEFAULT_ADDEDINCOME:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;)V
    .locals 7
    .parameter "builder"

    .prologue
    .line 82
    iget-object v1, p1, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->bonus:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->score:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->price:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->addedIncome:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->title:Ljava/lang/String;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->description:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/didi/frame/protobuffer/TaxiExtraInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;Lcom/didi/frame/protobuffer/TaxiExtraInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/TaxiExtraInfo;-><init>(Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "bonus"
    .parameter "score"
    .parameter "price"
    .parameter "addedIncome"
    .parameter "title"
    .parameter "description"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->bonus:Ljava/lang/Integer;

    .line 74
    iput-object p2, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->score:Ljava/lang/Integer;

    .line 75
    iput-object p3, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->price:Ljava/lang/Integer;

    .line 76
    iput-object p4, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->addedIncome:Ljava/lang/Integer;

    .line 77
    iput-object p5, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->title:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->description:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    if-ne p1, p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/TaxiExtraInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 90
    check-cast v0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;

    .line 91
    .local v0, o:Lcom/didi/frame/protobuffer/TaxiExtraInfo;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->bonus:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->bonus:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->score:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->score:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->price:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->price:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->addedIncome:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->addedIncome:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->description:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 101
    iget v0, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->hashCode:I

    .line 102
    .local v0, result:I
    if-nez v0, :cond_1

    .line 103
    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->bonus:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->bonus:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 104
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->score:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->score:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 105
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->price:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->price:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 106
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->addedIncome:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->addedIncome:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 107
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->title:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 108
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->description:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 109
    iput v0, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->hashCode:I

    .line 111
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 103
    goto :goto_0

    :cond_3
    move v2, v1

    .line 104
    goto :goto_1

    :cond_4
    move v2, v1

    .line 105
    goto :goto_2

    :cond_5
    move v2, v1

    .line 106
    goto :goto_3

    :cond_6
    move v2, v1

    .line 107
    goto :goto_4
.end method
