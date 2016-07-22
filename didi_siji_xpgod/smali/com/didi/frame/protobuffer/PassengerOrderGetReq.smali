.class public final Lcom/didi/frame/protobuffer/PassengerOrderGetReq;
.super Lcom/squareup/wire/Message;
.source "PassengerOrderGetReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/PassengerOrderGetReq$1;,
        Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_OID:Ljava/lang/String; = ""

.field public static final DEFAULT_PHONE:Ljava/lang/String; = ""

.field public static final DEFAULT_STATUS:Ljava/lang/Integer; = null

.field public static final DEFAULT_TOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_WAIT:Ljava/lang/String; = ""


# instance fields
.field public final coordinate:Lcom/didi/frame/protobuffer/Coordinate;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x6
    .end annotation
.end field

.field public final oid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final phone:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final status:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final wait:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->DEFAULT_STATUS:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;)V
    .locals 7
    .parameter "builder"

    .prologue
    .line 51
    iget-object v1, p1, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->phone:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->oid:Ljava/lang/String;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->status:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->wait:Ljava/lang/String;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/didi/frame/protobuffer/Coordinate;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;Lcom/didi/frame/protobuffer/PassengerOrderGetReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;-><init>(Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/didi/frame/protobuffer/Coordinate;)V
    .locals 0
    .parameter "phone"
    .parameter "token"
    .parameter "oid"
    .parameter "status"
    .parameter "wait"
    .parameter "coordinate"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->phone:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->token:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->oid:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->status:Ljava/lang/Integer;

    .line 46
    iput-object p5, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->wait:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    if-ne p1, p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;

    .line 60
    .local v0, o:Lcom/didi/frame/protobuffer/PassengerOrderGetReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->phone:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->phone:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->token:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->token:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->oid:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->oid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->status:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->status:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->wait:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->wait:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 70
    iget v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->hashCode:I

    .line 71
    .local v0, result:I
    if-nez v0, :cond_1

    .line 72
    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->phone:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 73
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->token:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 74
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->oid:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->oid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 75
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->status:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 76
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->wait:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->wait:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 77
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/Coordinate;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 78
    iput v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->hashCode:I

    .line 80
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 72
    goto :goto_0

    :cond_3
    move v2, v1

    .line 73
    goto :goto_1

    :cond_4
    move v2, v1

    .line 74
    goto :goto_2

    :cond_5
    move v2, v1

    .line 75
    goto :goto_3

    :cond_6
    move v2, v1

    .line 76
    goto :goto_4
.end method
